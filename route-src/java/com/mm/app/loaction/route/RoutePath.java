package com.mm.app.loaction.route;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** WGS84 polyline. Distances are metres; points are latitude, longitude. */
public final class RoutePath {
    public static final class Point {
        public final double latitude, longitude;
        public Point(double latitude, double longitude) {
            if (!Double.isFinite(latitude) || !Double.isFinite(longitude)
                    || Math.abs(latitude) > 90 || Math.abs(longitude) > 180) {
                throw new IllegalArgumentException("经纬度无效");
            }
            this.latitude = latitude;
            this.longitude = longitude;
        }
    }

    public final List<Point> points;
    private final double[] cumulative;
    public final double length;

    public RoutePath(List<Point> input) {
        ArrayList<Point> clean = new ArrayList<>();
        for (Point point : input) {
            if (point == null) throw new IllegalArgumentException("标定点不能为空");
            if (clean.isEmpty() || distance(clean.get(clean.size() - 1), point) > 0.01) clean.add(point);
        }
        if (clean.size() < 2) throw new IllegalArgumentException("请添加至少两个不同的标定点");
        points = Collections.unmodifiableList(clean);
        cumulative = new double[clean.size()];
        for (int i = 1; i < clean.size(); i++) cumulative[i] = cumulative[i - 1] + distance(clean.get(i - 1), clean.get(i));
        length = cumulative[cumulative.length - 1];
    }

    private int segment(double distance) {
        int low = 1, high = cumulative.length - 1;
        while (low < high) {
            int mid = (low + high) >>> 1;
            if (cumulative[mid] < distance) low = mid + 1; else high = mid;
        }
        return low;
    }

    public Point at(double distance) {
        if (distance <= 0) return points.get(0);
        if (distance >= length) return points.get(points.size() - 1);
        int end = segment(distance);
        Point a = points.get(end - 1), b = points.get(end);
        double fraction = (distance - cumulative[end - 1]) / (cumulative[end] - cumulative[end - 1]);
        double longitudeDelta = normalizeLongitude(b.longitude - a.longitude);
        return new Point(a.latitude + (b.latitude - a.latitude) * fraction,
                normalizeLongitude(a.longitude + longitudeDelta * fraction));
    }

    public float bearingAt(double distance) {
        int end = segment(Math.max(0, Math.min(length, distance)));
        Point a = points.get(end - 1), b = points.get(end);
        double lat1 = Math.toRadians(a.latitude), lat2 = Math.toRadians(b.latitude);
        double dl = Math.toRadians(b.longitude - a.longitude);
        double angle = Math.toDegrees(Math.atan2(Math.sin(dl) * Math.cos(lat2),
                Math.cos(lat1) * Math.sin(lat2) - Math.sin(lat1) * Math.cos(lat2) * Math.cos(dl)));
        return (float) ((angle + 360) % 360);
    }

    private static double normalizeLongitude(double value) { return ((value + 540) % 360) - 180; }

    public static double distance(Point a, Point b) {
        double dlat = Math.toRadians(b.latitude - a.latitude), dlng = Math.toRadians(b.longitude - a.longitude);
        double h = Math.sin(dlat / 2) * Math.sin(dlat / 2)
                + Math.cos(Math.toRadians(a.latitude)) * Math.cos(Math.toRadians(b.latitude))
                * Math.sin(dlng / 2) * Math.sin(dlng / 2);
        return 6371008.8 * 2 * Math.atan2(Math.sqrt(Math.max(0, Math.min(1, h))), Math.sqrt(Math.max(0, 1 - h)));
    }
}
