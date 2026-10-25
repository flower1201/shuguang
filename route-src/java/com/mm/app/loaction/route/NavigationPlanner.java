package com.mm.app.loaction.route;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.RouteLine;
import com.baidu.mapapi.search.core.RouteStep;
import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.route.*;
import java.util.ArrayList;
import java.util.List;

/** The recommended first route's full geometry, never a straight-line fallback. */
final class NavigationPlanner implements OnGetRoutePlanResultListener {
    interface Result { void ready(List<LatLng> points); void failed(String reason); }
    private final RoutePlanSearch search;
    private final Result result;
    private boolean cancelled;

    NavigationPlanner(Result result) {
        this.result = result;
        search = RoutePlanSearch.newInstance();
        search.setOnGetRoutePlanResultListener(this);
    }

    boolean plan(LatLng from, LatLng to, int transport) {
        PlanNode start = PlanNode.withLocation(from), end = PlanNode.withLocation(to);
        if (transport == 1) return search.drivingSearch(new DrivingRoutePlanOption().from(start).to(end));
        if (transport == 2) return search.bikingSearch(new BikingRoutePlanOption().from(start).to(end));
        return search.walkingSearch(new WalkingRoutePlanOption().from(start).to(end));
    }

    void cancel() { cancelled = true; search.destroy(); }

    private void accept(SearchResult response, List<? extends RouteLine<?>> lines) {
        if (cancelled) return;
        if (response == null || response.error != SearchResult.ERRORNO.NO_ERROR || lines == null || lines.isEmpty()) {
            result.failed("未能获取导航路线：" + (response == null ? "无响应" : response.error)
                    + "。请检查网络、起终点及地图 Key 授权。");
            return;
        }
        List<LatLng> geometry = new ArrayList<>();
        List<? extends RouteStep> steps = lines.get(0).getAllStep();
        if (steps != null) for (RouteStep step : steps) {
            List<LatLng> points = step.getWayPoints();
            if (points != null) for (LatLng point : points) {
                if (point == null) continue;
                if (geometry.isEmpty() || geometry.get(geometry.size() - 1).latitude != point.latitude
                        || geometry.get(geometry.size() - 1).longitude != point.longitude) geometry.add(point);
            }
        }
        if (geometry.size() < 2) result.failed("导航服务未返回完整道路轨迹，请更换起终点后重试。");
        else result.ready(geometry);
    }

    public void onGetWalkingRouteResult(WalkingRouteResult r) { accept(r, r == null ? null : r.getRouteLines()); }
    public void onGetDrivingRouteResult(DrivingRouteResult r) { accept(r, r == null ? null : r.getRouteLines()); }
    public void onGetBikingRouteResult(BikingRouteResult r) { accept(r, r == null ? null : r.getRouteLines()); }
    public void onGetTransitRouteResult(TransitRouteResult r) { }
    public void onGetMassTransitRouteResult(MassTransitRouteResult r) { }
    public void onGetIndoorRouteResult(IndoorRouteResult r) { }
}
