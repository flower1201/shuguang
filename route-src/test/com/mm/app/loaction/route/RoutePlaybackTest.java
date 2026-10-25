package com.mm.app.loaction.route;

import java.util.Arrays;

public final class RoutePlaybackTest {
    private static void check(boolean value, String message) { if (!value) throw new AssertionError(message); }
    private static void close(double expected, double actual, double tolerance, String message) {
        check(Math.abs(expected - actual) <= tolerance, message + ": expected " + expected + ", got " + actual);
    }
    public static void main(String[] args) {
        RoutePath.Point a = new RoutePath.Point(0, 0), b = new RoutePath.Point(0, 0.001), c = new RoutePath.Point(0.001, 0.001);
        RoutePath corner = new RoutePath(Arrays.asList(a, a, b, b, c));
        check(corner.points.size() == 3, "Consecutive duplicate points must be removed");
        close(222.39, corner.length, 0.1, "Known equatorial two-leg distance");
        RoutePath.Point afterCorner = corner.at(150);
        close(0.001, afterCorner.longitude, 0.0000001, "After turning, longitude must stay on the second leg");
        close(0.000349, afterCorner.latitude, 0.000002, "Unused distance must carry across the corner");
        close(90, corner.bearingAt(50), 0.01, "First leg east bearing");
        close(0, corner.bearingAt(150), 0.01, "Second leg north bearing");

        RoutePlayback playback = new RoutePlayback(corner, 10, 1000);
        playback.tick(6000); close(50, playback.travelled(), 0.001, "10 m/s for five seconds");
        playback.pause(8000); close(70, playback.travelled(), 0.001, "Pause includes time up to the pause instant");
        playback.tick(68000); close(70, playback.travelled(), 0.001, "Paused minute must add no distance");
        close(0, playback.speed(), 0, "Paused GPS speed must be zero");
        playback.resume(70000); playback.tick(78000);
        close(150, playback.travelled(), 0.001, "Resume must not include paused time");
        playback.tick(200000);
        check(playback.state() == RoutePlayback.State.COMPLETED, "Delayed tick must finish at the end");
        close(corner.length, playback.travelled(), 0, "No overshoot past the final point");
        close(c.latitude, playback.position().latitude, 0, "Exact final latitude");
        close(0, playback.speed(), 0, "Completed GPS speed must be zero");
        playback.tick(999999); close(corner.length, playback.travelled(), 0, "Completion is stable");

        RoutePlayback stopped = new RoutePlayback(corner, 5 / 3.6, 0);
        stopped.stop(3600); stopped.tick(100000); close(5, stopped.travelled(), 0.000001, "5 km/h unit conversion and stop");
        RoutePath dateline = new RoutePath(Arrays.asList(new RoutePath.Point(0, 179.999), new RoutePath.Point(0, -179.999)));
        check(Math.abs(dateline.at(dateline.length / 2).longitude) > 179.999, "Dateline interpolation must take the short segment");
        boolean rejected = false;
        try { new RoutePath(Arrays.asList(a, a)); } catch (IllegalArgumentException expected) { rejected = true; }
        check(rejected, "A zero-length route must be rejected");
        rejected = false;
        try { new RoutePath.Point(Double.NaN, 0); } catch (IllegalArgumentException expected) { rejected = true; }
        check(rejected, "Non-finite coordinates must be rejected");
        System.out.println("PASS: route geometry, corner carry, speed, pause/resume, completion, stop, duplicates, dateline, invalid points");
    }
}
