.class public final Lcom/mm/app/loaction/route/RouteController;
.super Ljava/lang/Object;
.source "RouteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/RouteController$Status;
    }
.end annotation


# static fields
.field public static final SERVICE:Ljava/lang/String; = "com.mm.app.loaction.application.service.LocationService"

.field private static playback:Lcom/mm/app/loaction/route/RoutePlayback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cancel()V
    .registers 2

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 53
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    .line 53
    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized nextLocation()[D
    .registers 11

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3b

    if-nez v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_a
    :try_start_a
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePlayback;->tick(J)V

    .line 38
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-virtual {v1}, Lcom/mm/app/loaction/route/RoutePlayback;->position()Lcom/mm/app/loaction/route/RoutePath$Point;

    move-result-object v1

    .line 39
    iget-wide v2, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    iget-wide v4, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-virtual {v1}, Lcom/mm/app/loaction/route/RoutePlayback;->speed()D

    move-result-wide v6

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-virtual {v1}, Lcom/mm/app/loaction/route/RoutePlayback;->bearing()F

    move-result v1

    float-to-double v8, v1

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v10, 0x0

    aput-wide v2, v1, v10

    const/4 v2, 0x1

    aput-wide v4, v1, v2

    const/4 v2, 0x2

    aput-wide v6, v1, v2

    const/4 v2, 0x3

    aput-wide v8, v1, v2
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_3b

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static declared-synchronized pause()V
    .registers 4

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePlayback;->pause(J)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v0

    return-void

    .line 43
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized resume()V
    .registers 4

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePlayback;->resume(J)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v0

    return-void

    .line 44
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized serviceDestroyed()V
    .registers 4

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePlayback;->stop(J)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 51
    :cond_10
    monitor-exit v0

    return-void

    .line 49
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lcom/mm/app/loaction/route/RoutePath;D)V
    .registers 12

    const-class v1, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v1

    .line 24
    :try_start_3
    new-instance v2, Lcom/mm/app/loaction/route/RoutePlayback;

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    div-double v4, p2, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/mm/app/loaction/route/RoutePlayback;-><init>(Lcom/mm/app/loaction/route/RoutePath;DJ)V

    .line 25
    iget-object p1, v3, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mm/app/loaction/route/RoutePath$Point;

    .line 26
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.mm.app.loaction.application.service.LocationService"

    invoke-virtual {p3, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "LAT_VALUE"

    iget-wide v3, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    .line 27
    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "LNG_VALUE"

    iget-wide v3, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "ISSHOWFLOAT"

    .line 28
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ROUTE_PLAYBACK"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 29
    sget-object p2, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    .line 30
    sput-object v2, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_54

    .line 31
    :try_start_49
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4c} :catch_4f
    .catchall {:try_start_49 .. :try_end_4c} :catchall_54

    .line 32
    nop

    .line 33
    monitor-exit v1

    return-void

    .line 32
    :catch_4f
    move-exception v0

    move-object p0, v0

    :try_start_51
    sput-object p2, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    throw p0

    .line 23
    :catchall_54
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_54

    throw p0
.end method

.method public static declared-synchronized status()Lcom/mm/app/loaction/route/RouteController$Status;
    .registers 3

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_10

    :cond_9
    new-instance v1, Lcom/mm/app/loaction/route/RouteController$Status;

    sget-object v2, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-direct {v1, v2}, Lcom/mm/app/loaction/route/RouteController$Status;-><init>(Lcom/mm/app/loaction/route/RoutePlayback;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit v0

    return-object v1

    .line 42
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized stop(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/mm/app/loaction/route/RouteController;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/mm/app/loaction/route/RouteController;->playback:Lcom/mm/app/loaction/route/RoutePlayback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePlayback;->stop(J)V

    .line 47
    :cond_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mm.app.loaction.application.service.LocationService"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 48
    monitor-exit v0

    return-void

    .line 45
    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method
