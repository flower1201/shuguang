.class public final Lcom/mm/app/loaction/route/RoutePath$Point;
.super Ljava/lang/Object;
.source "RoutePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/RoutePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .registers 9

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p3, p4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2e

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2e

    .line 16
    iput-wide p1, p0, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    .line 17
    iput-wide p3, p0, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    .line 18
    return-void

    .line 14
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u7ecf\u7eac\u5ea6\u65e0\u6548"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
