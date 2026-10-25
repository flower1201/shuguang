.class public final Lcom/mm/app/loaction/route/RoutePath;
.super Ljava/lang/Object;
.source "RoutePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/RoutePath$Point;
    }
.end annotation


# instance fields
.field private final cumulative:[D

.field public final length:D

.field public final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mm/app/loaction/route/RoutePath$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mm/app/loaction/route/RoutePath$Point;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mm/app/loaction/route/RoutePath$Point;

    .line 28
    if-eqz v1, :cond_3d

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-static {v2, v1}, Lcom/mm/app/loaction/route/RoutePath;->distance(Lcom/mm/app/loaction/route/RoutePath$Point;Lcom/mm/app/loaction/route/RoutePath$Point;)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3c

    :cond_39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_3c
    goto :goto_c

    .line 28
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u6807\u5b9a\u70b9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_88

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    .line 34
    move p1, v2

    :goto_5b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 35
    iget-object v3, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    .line 34
    if-ge p1, v1, :cond_7f

    iget-object v1, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    add-int/lit8 v4, p1, -0x1

    aget-wide v5, v1, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-static {v1, v4}, Lcom/mm/app/loaction/route/RoutePath;->distance(Lcom/mm/app/loaction/route/RoutePath$Point;Lcom/mm/app/loaction/route/RoutePath$Point;)D

    move-result-wide v7

    add-double/2addr v5, v7

    aput-wide v5, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5b

    .line 35
    :cond_7f
    iget-object p1, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    array-length p1, p1

    sub-int/2addr p1, v2

    aget-wide v0, v3, p1

    iput-wide v0, p0, Lcom/mm/app/loaction/route/RoutePath;->length:D

    .line 36
    return-void

    .line 31
    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e24\u4e2a\u4e0d\u540c\u7684\u6807\u5b9a\u70b9"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static distance(Lcom/mm/app/loaction/route/RoutePath$Point;Lcom/mm/app/loaction/route/RoutePath$Point;)D
    .registers 10

    .line 71
    iget-wide v0, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    iget-wide v2, p0, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    iget-wide v4, p0, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 72
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide p0, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    div-double/2addr v2, v4

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    add-double/2addr v6, v0

    .line 75
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr p0, v6

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x41684db033333333L    # 1.27420176E7

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static normalizeLongitude(D)D
    .registers 4

    .line 68
    const-wide v0, 0x4080e00000000000L    # 540.0

    add-double/2addr p0, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private segment(D)I
    .registers 10

    .line 39
    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    .line 40
    :goto_6
    if-ge v2, v0, :cond_18

    .line 41
    add-int v3, v2, v0

    ushr-int/2addr v3, v1

    .line 42
    iget-object v4, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    aget-wide v5, v4, v3

    cmpg-double v4, v5, p1

    if-gez v4, :cond_16

    add-int/lit8 v2, v3, 0x1

    goto :goto_17

    :cond_16
    move v0, v3

    .line 43
    :goto_17
    goto :goto_6

    .line 44
    :cond_18
    return v2
.end method


# virtual methods
.method public at(D)Lcom/mm/app/loaction/route/RoutePath$Point;
    .registers 13

    .line 48
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_10

    iget-object p1, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mm/app/loaction/route/RoutePath$Point;

    return-object p1

    .line 49
    :cond_10
    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePath;->length:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_27

    iget-object p1, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    iget-object p2, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mm/app/loaction/route/RoutePath$Point;

    return-object p1

    .line 50
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/mm/app/loaction/route/RoutePath;->segment(D)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-object v3, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mm/app/loaction/route/RoutePath$Point;

    .line 52
    iget-object v4, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    aget-wide v5, v4, v2

    sub-double/2addr p1, v5

    iget-object v4, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    aget-wide v5, v4, v0

    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePath;->cumulative:[D

    aget-wide v7, v0, v2

    sub-double/2addr v5, v7

    div-double/2addr p1, v5

    .line 53
    iget-wide v4, v3, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    iget-wide v6, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/mm/app/loaction/route/RoutePath;->normalizeLongitude(D)D

    move-result-wide v4

    .line 54
    new-instance v0, Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-wide v6, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    iget-wide v2, v3, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    iget-wide v8, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    sub-double/2addr v2, v8

    mul-double/2addr v2, p1

    add-double/2addr v6, v2

    iget-wide v1, v1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    mul-double/2addr v4, p1

    add-double/2addr v1, v4

    .line 55
    invoke-static {v1, v2}, Lcom/mm/app/loaction/route/RoutePath;->normalizeLongitude(D)D

    move-result-wide p1

    invoke-direct {v0, v6, v7, p1, p2}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    .line 54
    return-object v0
.end method

.method public bearingAt(D)F
    .registers 13

    .line 59
    iget-wide v0, p0, Lcom/mm/app/loaction/route/RoutePath;->length:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/mm/app/loaction/route/RoutePath;->segment(D)I

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-object v0, p0, Lcom/mm/app/loaction/route/RoutePath;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mm/app/loaction/route/RoutePath$Point;

    .line 61
    iget-wide v0, p2, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 62
    iget-wide v4, p1, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    iget-wide p1, p2, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    sub-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    sub-double/2addr v6, v0

    .line 63
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    .line 65
    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    rem-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method
