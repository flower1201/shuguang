package com.mm.app.loaction.route;

/** Clock supplied by the caller so pausing and delayed ticks have exact semantics. */
public final class RoutePlayback {
    public enum State { RUNNING, PAUSED, COMPLETED, STOPPED }
    public final RoutePath path;
    private State state = State.RUNNING;
    private double travelled;
    private double speed;
    private long previous;

    public RoutePlayback(RoutePath path, double metresPerSecond, long nowMillis) {
        if (!Double.isFinite(metresPerSecond) || metresPerSecond <= 0) throw new IllegalArgumentException("速度必须大于 0");
        this.path = path;
        speed = metresPerSecond;
        previous = nowMillis;
    }

    public void tick(long nowMillis) {
        if (state == State.RUNNING) {
            travelled = Math.min(path.length, travelled + Math.max(0, nowMillis - previous) / 1000.0 * speed);
            if (travelled >= path.length) state = State.COMPLETED;
        }
        previous = nowMillis;
    }

    public void pause(long nowMillis) { tick(nowMillis); if (state == State.RUNNING) state = State.PAUSED; }
    public void resume(long nowMillis) { previous = nowMillis; if (state == State.PAUSED) state = State.RUNNING; }
    public void stop(long nowMillis) { tick(nowMillis); state = State.STOPPED; }
    public State state() { return state; }
    public double travelled() { return travelled; }
    public double speed() { return state == State.RUNNING ? speed : 0; }
    public double configuredSpeed() { return speed; }
    public RoutePath.Point position() { return path.at(travelled); }
    public float bearing() { return path.bearingAt(travelled); }
}
