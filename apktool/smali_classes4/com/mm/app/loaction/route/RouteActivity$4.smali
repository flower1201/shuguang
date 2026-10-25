.class Lcom/mm/app/loaction/route/RouteActivity$4;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->createViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$4;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$4;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V
    invoke-static {v0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1200(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)V

    return-void
.end method

.method public onMapPoiClick(Lcom/baidu/mapapi/map/MapPoi;)V
    .registers 3

    .line 178
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$4;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapPoi;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V
    invoke-static {v0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1200(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)V

    :cond_b
    return-void
.end method
