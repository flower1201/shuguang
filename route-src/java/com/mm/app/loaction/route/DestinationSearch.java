package com.mm.app.loaction.route;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.poi.*;
import java.util.ArrayList;
import java.util.List;

/** One cancellable request; the activity owns its timeout and visible state. */
final class DestinationSearch implements OnGetPoiSearchResultListener {
    static final class Place {
        final String name, address;
        final LatLng point;
        Place(String name, String address, LatLng point) {
            this.name = name == null ? "未命名地点" : name;
            this.address = address == null ? "" : address;
            this.point = point;
        }
    }
    interface Result {
        void ready(List<Place> places, List<String> cities, boolean more);
        void failed(String reason);
    }
    private final PoiSearch search = PoiSearch.newInstance();
    private final Result result;
    private boolean cancelled;
    DestinationSearch(Result result) { this.result = result; search.setOnGetPoiSearchResultListener(this); }
    boolean request(String keyword, String city, int page) {
        return search.searchInCity(new PoiCitySearchOption().city(city).keyword(keyword)
                .cityLimit(false).pageNum(page).pageCapacity(20).isReturnAddr(true));
    }
    void cancel() { if (!cancelled) { cancelled = true; search.destroy(); } }
    @Override public void onGetPoiResult(PoiResult response) {
        if (cancelled) return;
        if (response == null) { result.failed("搜索没有返回结果，请重试。"); return; }
        List<Place> places = new ArrayList<>();
        List<String> cities = new ArrayList<>();
        if (response.getAllPoi() != null) for (PoiInfo p : response.getAllPoi()) {
            if (p != null && p.location != null) places.add(new Place(p.name, p.address, p.location));
        }
        if (places.isEmpty() && response.getAllAddr() != null) for (PoiAddrInfo p : response.getAllAddr()) {
            if (p != null && p.location != null) places.add(new Place(p.name, p.address, p.location));
        }
        if (response.getSuggestCityList() != null) for (CityInfo c : response.getSuggestCityList()) {
            if (c != null && c.city != null && !cities.contains(c.city)) cities.add(c.city);
        }
        if (!places.isEmpty() || !cities.isEmpty()) {
            result.ready(places, cities, response.getCurrentPageNum() + 1 < response.getTotalPageNum());
        } else if (response.error == com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND) {
            result.failed("未找到地点，请补充城市、街道或更具体的名称。");
        } else result.failed("地点搜索失败（" + response.error + "），请检查网络和百度 Key 的地点检索权限。");
    }
    @Override public void onGetPoiDetailResult(PoiDetailResult r) { }
    @Override public void onGetPoiDetailResult(PoiDetailSearchResult r) { }
    @Override public void onGetPoiIndoorResult(PoiIndoorResult r) { }
}
