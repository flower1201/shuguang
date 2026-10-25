.class public final Lcom/mm/app/loaction/route/RoutePlayback;
.super Ljava/lang/Object;
.source "RoutePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/RoutePlayback$State;
    }
.end annotation


# instance fields
.field public final path:Lcom/mm/app/loaction/route/RoutePath;

.field private previous:J

.field private speed:D

.field private state:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field private travelled:D


# direct methods
.method public constructor <init>(Lcom/mm/app/loaction/route/RoutePath;DJ)V
    .registers 8

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iput-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_1a

    .line 14
    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    .line 15
    iput-wide p2, p0, Lcom/mm/app/loaction/route/RoutePlayback;->speed:D

    .line 16
    iput-wide p4, p0, Lcom/mm/app/loaction/route/RoutePlayback;->previous:J

    .line 17
    return-void

    .line 13
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u901f\u5ea6\u5fc5\u987b\u5927\u4e8e 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bearing()F
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    iget-wide v1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    invoke-virtual {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePath;->bearingAt(D)F

    move-result v0

    return v0
.end method

.method public configuredSpeed()D
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->speed:D

    return-wide v0
.end method

.method public pause(J)V
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/mm/app/loaction/route/RoutePlayback;->tick(J)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object p2, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne p1, p2, :cond_d

    sget-object p1, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    :cond_d
    return-void
.end method

.method public position()Lcom/mm/app/loaction/route/RoutePath$Point;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    iget-wide v1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    invoke-virtual {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePath;->at(D)Lcom/mm/app/loaction/route/RoutePath$Point;

    move-result-object v0

    return-object v0
.end method

.method public resume(J)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->previous:J

    iget-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object p2, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne p1, p2, :cond_c

    sget-object p1, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    :cond_c
    return-void
.end method

.method public speed()D
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v1, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v0, v1, :cond_9

    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->speed:D

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public state()Lcom/mm/app/loaction/route/RoutePlayback$State;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-object v0
.end method

.method public stop(J)V
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/mm/app/loaction/route/RoutePlayback;->tick(J)V

    sget-object p1, Lcom/mm/app/loaction/route/RoutePlayback$State;->STOPPED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-void
.end method

.method public tick(J)V
    .registers 11

    .line 20
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v1, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v0, v1, :cond_35

    .line 21
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    iget-wide v0, v0, Lcom/mm/app/loaction/route/RoutePath;->length:D

    iget-wide v2, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    iget-wide v4, p0, Lcom/mm/app/loaction/route/RoutePlayback;->previous:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lcom/mm/app/loaction/route/RoutePlayback;->speed:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    .line 22
    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    iget-object v2, p0, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    iget-wide v2, v2, Lcom/mm/app/loaction/route/RoutePath;->length:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_35

    sget-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iput-object v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    .line 24
    :cond_35
    iput-wide p1, p0, Lcom/mm/app/loaction/route/RoutePlayback;->previous:J

    .line 25
    return-void
.end method

.method public travelled()D
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePlayback;->travelled:D

    return-wide v0
.end method
