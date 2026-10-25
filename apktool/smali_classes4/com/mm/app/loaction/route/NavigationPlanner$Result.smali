.class interface abstract Lcom/mm/app/loaction/route/NavigationPlanner$Result;
.super Ljava/lang/Object;
.source "NavigationPlanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/NavigationPlanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Result"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/String;)V
.end method

.method public abstract ready(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation
.end method
