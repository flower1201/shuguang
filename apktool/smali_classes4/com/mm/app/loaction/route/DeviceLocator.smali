.class final Lcom/mm/app/loaction/route/DeviceLocator;
.super Ljava/lang/Object;
.source "DeviceLocator.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/DeviceLocator$Result;
    }
.end annotation


# instance fields
.field private finished:Z

.field private final handler:Landroid/os/Handler;

.field private final manager:Landroid/location/LocationManager;

.field private final result:Lcom/mm/app/loaction/route/DeviceLocator$Result;

.field private final timeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mm/app/loaction/route/DeviceLocator$Result;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->handler:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/mm/app/loaction/route/DeviceLocator$0;

    invoke-direct {v0, p0}, Lcom/mm/app/loaction/route/DeviceLocator$0;-><init>(Lcom/mm/app/loaction/route/DeviceLocator;)V

    iput-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->timeout:Ljava/lang/Runnable;

    .line 21
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/mm/app/loaction/route/DeviceLocator;->result:Lcom/mm/app/loaction/route/DeviceLocator$Result;

    .line 22
    return-void
.end method

.method private deliver(Landroid/location/Location;)V
    .registers 4

    .line 45
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->finished:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/mm/app/loaction/route/DeviceLocator;->cancel()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->result:Lcom/mm/app/loaction/route/DeviceLocator$Result;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Lcom/mm/app/loaction/route/DeviceLocator$Result;->ready(Landroid/location/Location;)V

    :cond_11
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .registers 3

    .line 46
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->finished:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/mm/app/loaction/route/DeviceLocator;->cancel()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->result:Lcom/mm/app/loaction/route/DeviceLocator$Result;

    invoke-interface {v0, p1}, Lcom/mm/app/loaction/route/DeviceLocator$Result;->failed(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private fresh(Landroid/location/Location;)Z
    .registers 7

    .line 41
    const/4 v0, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_54

    .line 42
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 43
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_53

    const-wide v3, 0x1bf08eb000L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_53

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_53

    const/4 v0, 0x1

    :cond_53
    return v0

    .line 41
    :cond_54
    :goto_54
    return v0
.end method


# virtual methods
.method cancel()V
    .registers 3

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->finished:Z

    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    if-eqz v0, :cond_14

    :try_start_d
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    .line 50
    :cond_14
    :goto_14
    return-void
.end method

.method synthetic lambda$new$0$com-mm-app-loaction-route-DeviceLocator()V
    .registers 2

    .line 19
    const-string v0, "\u6682\u672a\u83b7\u53d6\u5230\u5f53\u524d\u4f4d\u7f6e\uff0c\u8bf7\u5230\u5f00\u9614\u5904\u91cd\u8bd5\uff0c\u5e76\u786e\u8ba4\u7cfb\u7edf\u5b9a\u4f4d\u5df2\u5f00\u542f\u3002"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/DeviceLocator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/DeviceLocator;->fresh(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/DeviceLocator;->deliver(Landroid/location/Location;)V

    :cond_9
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 53
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 52
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 54
    return-void
.end method

.method start()V
    .registers 13

    .line 24
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301\u5b9a\u4f4d\u670d\u52a1\u3002"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/DeviceLocator;->fail(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_a
    const-string v0, "gps"

    const-string v1, "network"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 26
    nop

    .line 27
    nop

    .line 28
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    move v2, v3

    :goto_19
    const/4 v0, 0x2

    if-ge v2, v0, :cond_58

    aget-object v6, v1, v2

    .line 30
    :try_start_1e
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_55

    .line 31
    :cond_27
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/DeviceLocator;->fresh(Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_42

    if-eqz v4, :cond_41

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-lez v5, :cond_42

    :cond_41
    move-object v4, v0

    .line 33
    :cond_42
    iget-object v5, p0, Lcom/mm/app/loaction/route/DeviceLocator;->manager:Landroid/location/LocationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_4f} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_4f} :catch_52

    .line 34
    const/4 v0, 0x1

    move v3, v0

    goto :goto_55

    :catch_52
    move-exception v0

    goto :goto_55

    :catch_54
    move-exception v0

    .line 28
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 36
    :cond_58
    if-eqz v4, :cond_5e

    invoke-direct {p0, v4}, Lcom/mm/app/loaction/route/DeviceLocator;->deliver(Landroid/location/Location;)V

    goto :goto_6f

    .line 37
    :cond_5e
    if-eqz v3, :cond_6a

    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mm/app/loaction/route/DeviceLocator;->timeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6f

    .line 38
    :cond_6a
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u5b9a\u4f4d\uff0c\u8bf7\u5141\u8bb8\u4f4d\u7f6e\u6743\u9650\u5e76\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5f00\u542f\u5b9a\u4f4d\u670d\u52a1\u3002"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/DeviceLocator;->fail(Ljava/lang/String;)V

    .line 39
    :goto_6f
    return-void
.end method
