package com.mm.app.loaction.route;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/** Uses system WGS84 locations, including the current mock location when enabled. */
final class DeviceLocator implements LocationListener {
    interface Result { void ready(Location location); void failed(String reason); }
    private final LocationManager manager;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Result result;
    private boolean finished;
    private final Runnable timeout = () -> fail("暂未获取到当前位置，请到开阔处重试，并确认系统定位已开启。");
    DeviceLocator(Context context, Result result) {
        manager = (LocationManager)context.getSystemService(Context.LOCATION_SERVICE); this.result = result;
    }
    void start() {
        if (manager == null) { fail("设备不支持定位服务。"); return; }
        String[] providers = {LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER};
        Location best = null;
        boolean requested = false;
        for (String provider : providers) {
            try {
                if (!manager.isProviderEnabled(provider)) continue;
                Location last = manager.getLastKnownLocation(provider);
                if (fresh(last) && (best == null || last.getElapsedRealtimeNanos() > best.getElapsedRealtimeNanos())) best = last;
                manager.requestLocationUpdates(provider, 1000, 0, this, Looper.getMainLooper()); requested = true;
            } catch (SecurityException | IllegalArgumentException ignored) { }
        }
        if (best != null) deliver(best);
        else if (requested) handler.postDelayed(timeout, 20000);
        else fail("无法获取定位，请允许位置权限并在系统设置中开启定位服务。");
    }
    private boolean fresh(Location location) {
        if (location == null || !Double.isFinite(location.getLatitude()) || !Double.isFinite(location.getLongitude())) return false;
        long age = SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos();
        return age >= 0 && age <= 120000000000L && Math.abs(location.getLatitude()) <= 90 && Math.abs(location.getLongitude()) <= 180;
    }
    private void deliver(Location location) { if (!finished) { cancel(); result.ready(new Location(location)); } }
    private void fail(String reason) { if (!finished) { cancel(); result.failed(reason); } }
    void cancel() {
        finished = true; handler.removeCallbacksAndMessages(null);
        if (manager != null) try { manager.removeUpdates(this); } catch (SecurityException ignored) { }
    }
    @Override public void onLocationChanged(Location location) { if (fresh(location)) deliver(location); }
    @Override public void onProviderEnabled(String provider) { }
    @Override public void onProviderDisabled(String provider) { }
    @Override public void onStatusChanged(String provider, int status, Bundle extras) { }
}
