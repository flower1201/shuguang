package com.mm.app.loaction.route;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

/** Called by the existing LocationService's 100 ms GPS/network update loop. */
public final class RouteController {
    private static RoutePlayback playback;
    public static final String SERVICE = "com.mm.app.loaction.application.service.LocationService";

    public static final class Status {
        public final RoutePlayback.State state;
        public final double travelled, total, speedKmh;
        public final RoutePath.Point position;
        Status(RoutePlayback value) {
            state = value.state(); travelled = value.travelled(); total = value.path.length;
            speedKmh = value.configuredSpeed() * 3.6; position = value.position();
        }
        public boolean active() { return state == RoutePlayback.State.RUNNING || state == RoutePlayback.State.PAUSED; }
    }

    public static synchronized void start(Context context, RoutePath path, double speedKmh) {
        RoutePlayback next = new RoutePlayback(path, speedKmh / 3.6, SystemClock.elapsedRealtime());
        RoutePath.Point first = path.points.get(0);
        Intent intent = new Intent().setClassName(context, SERVICE)
                .putExtra("LAT_VALUE", first.latitude).putExtra("LNG_VALUE", first.longitude)
                .putExtra("ISSHOWFLOAT", false).putExtra("ROUTE_PLAYBACK", true);
        RoutePlayback previous = playback;
        playback = next;
        try { context.startForegroundService(intent); }
        catch (RuntimeException error) { playback = previous; throw error; }
    }

    public static synchronized double[] nextLocation() {
        if (playback == null) return null;
        playback.tick(SystemClock.elapsedRealtime());
        RoutePath.Point point = playback.position();
        return new double[] { point.longitude, point.latitude, playback.speed(), playback.bearing() };
    }

    public static synchronized Status status() { return playback == null ? null : new Status(playback); }
    public static synchronized void pause() { if (playback != null) playback.pause(SystemClock.elapsedRealtime()); }
    public static synchronized void resume() { if (playback != null) playback.resume(SystemClock.elapsedRealtime()); }
    public static synchronized void stop(Context context) {
        if (playback != null) playback.stop(SystemClock.elapsedRealtime());
        context.stopService(new Intent().setClassName(context, SERVICE));
    }
    public static synchronized void serviceDestroyed() {
        if (playback != null) playback.stop(SystemClock.elapsedRealtime());
    }
    /** Existing single-position or joystick actions take ownership back. */
    public static synchronized void cancel() { playback = null; }
}
