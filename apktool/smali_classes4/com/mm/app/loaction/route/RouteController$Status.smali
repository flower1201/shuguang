.class public final Lcom/mm/app/loaction/route/RouteController$Status;
.super Ljava/lang/Object;
.source "RouteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/RouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# instance fields
.field public final position:Lcom/mm/app/loaction/route/RoutePath$Point;

.field public final speedKmh:D

.field public final state:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field public final total:D

.field public final travelled:D


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RoutePlayback;)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/mm/app/loaction/route/RoutePlayback;->state()Lcom/mm/app/loaction/route/RoutePlayback$State;

    move-result-object v0

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    invoke-virtual {p1}, Lcom/mm/app/loaction/route/RoutePlayback;->travelled()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->travelled:D

    iget-object v0, p1, Lcom/mm/app/loaction/route/RoutePlayback;->path:Lcom/mm/app/loaction/route/RoutePath;

    iget-wide v0, v0, Lcom/mm/app/loaction/route/RoutePath;->length:D

    iput-wide v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->total:D

    .line 18
    invoke-virtual {p1}, Lcom/mm/app/loaction/route/RoutePlayback;->configuredSpeed()D

    move-result-wide v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->speedKmh:D

    invoke-virtual {p1}, Lcom/mm/app/loaction/route/RoutePlayback;->position()Lcom/mm/app/loaction/route/RoutePath$Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteController$Status;->position:Lcom/mm/app/loaction/route/RoutePath$Point;

    .line 19
    return-void
.end method


# virtual methods
.method public active()Z
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v1, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v1, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
