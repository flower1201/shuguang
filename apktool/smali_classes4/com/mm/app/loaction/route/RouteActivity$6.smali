.class Lcom/mm/app/loaction/route/RouteActivity$6;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Lcom/mm/app/loaction/route/DeviceLocator$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->locateCurrentPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mm/app/loaction/route/RouteActivity;

.field final synthetic val$request:I


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->val$request:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/String;)V
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_54

    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->val$request:I

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I
    invoke-static {v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1900(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_54

    .line 335
    :cond_13
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/4 v1, 0x0

    # setter for: Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;
    invoke-static {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2002(Lcom/mm/app/loaction/route/RouteActivity;Lcom/mm/app/loaction/route/DeviceLocator;)Lcom/mm/app/loaction/route/DeviceLocator;

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2100(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2100(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u672a\u83b7\u53d6\u5230\u4f4d\u7f6e"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 337
    const-string v0, "\u5173\u95ed"

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mm/app/loaction/route/RouteActivity$6$1;

    invoke-direct {v0, p0}, Lcom/mm/app/loaction/route/RouteActivity$6$1;-><init>(Lcom/mm/app/loaction/route/RouteActivity$6;)V

    const-string v1, "\u5b9a\u4f4d\u8bbe\u7f6e"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 341
    return-void

    .line 334
    :cond_54
    :goto_54
    return-void
.end method

.method synthetic lambda$failed$1$com-mm-app-loaction-route-RouteActivity$6(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 338
    :try_start_0
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mm/app/loaction/route/RouteActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 339
    goto :goto_15

    :catch_d
    move-exception p1

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const-string p2, "\u8bf7\u624b\u52a8\u6253\u5f00\u7cfb\u7edf\u5b9a\u4f4d\u8bbe\u7f6e"

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2600(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;)V

    .line 340
    :goto_15
    return-void
.end method

.method synthetic lambda$ready$0$com-mm-app-loaction-route-RouteActivity$6(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 324
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->active()Z
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2400(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 325
    :cond_9
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 326
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$700(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$800(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2700(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    if-eqz p1, :cond_42

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2700(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_42
    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2700(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_50
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->redraw()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$900(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->persist()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1000(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1100(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    goto :goto_70

    .line 329
    :cond_65
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V
    invoke-static {p1, p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$1200(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)V

    .line 330
    :goto_70
    return-void
.end method

.method public ready(Landroid/location/Location;)V
    .registers 12

    .line 309
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_12a

    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->val$request:I

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I
    invoke-static {v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1900(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_14

    goto/16 :goto_12a

    .line 310
    :cond_14
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/4 v1, 0x0

    # setter for: Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;
    invoke-static {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2002(Lcom/mm/app/loaction/route/RouteActivity;Lcom/mm/app/loaction/route/DeviceLocator;)Lcom/mm/app/loaction/route/DeviceLocator;

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2100(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2100(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/mm/app/loaction/application/utils/LocationUtils;->wgs2bd09(DD)[D

    move-result-object v0

    .line 312
    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    aget-wide v5, v0, v2

    const/4 v7, 0x0

    aget-wide v8, v0, v7

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    # setter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v3, v4}, Lcom/mm/app/loaction/route/RouteActivity;->access$2202(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    .line 313
    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v3}, Lcom/mm/app/loaction/route/RouteActivity;->access$2300(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 314
    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v3}, Lcom/mm/app/loaction/route/RouteActivity;->access$2300(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v3

    new-instance v4, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    aget-wide v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v2

    aget-wide v4, v0, v7

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v0

    .line 314
    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 316
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2300(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v2, v3}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 317
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-eqz p1, :cond_9f

    const-string p1, "\u5df2\u5b9a\u4f4d\u5230\u8bbe\u5907\u5f53\u524d\u6a21\u62df\u4f4d\u7f6e"

    goto :goto_a1

    :cond_9f
    const-string p1, "\u5df2\u5b9a\u4f4d\u5230\u5f53\u524d\u4f4d\u7f6e"

    .line 318
    :goto_a1
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->active()Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2400(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2500(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V
    invoke-static {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1200(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff0c\u5df2\u8bbe\u4e3a\u8d77\u70b9\uff0c\u53ef\u89c4\u5212\u63a8\u8350\u8def\u7ebf\u3002"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_129

    .line 320
    :cond_d9
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$2600(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->active()Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2400(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_129

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "\u662f\u5426\u5c06\u6b64\u4f4d\u7f6e\u8bbe\u4e3a\u8def\u7ebf\u8d77\u70b9\uff1f"

    goto :goto_102

    :cond_100
    const-string v0, "\u662f\u5426\u5c06\u6b64\u4f4d\u7f6e\u6dfb\u52a0\u4e3a\u6807\u5b9a\u70b9\uff1f"

    :goto_102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 323
    const-string v0, "\u4ec5\u67e5\u770b\u4f4d\u7f6e"

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$6;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11b

    const-string v0, "\u8bbe\u4e3a\u8d77\u70b9"

    goto :goto_11d

    :cond_11b
    const-string v0, "\u6dfb\u52a0\u6807\u5b9a\u70b9"

    :goto_11d
    new-instance v1, Lcom/mm/app/loaction/route/RouteActivity$6$0;

    invoke-direct {v1, p0}, Lcom/mm/app/loaction/route/RouteActivity$6$0;-><init>(Lcom/mm/app/loaction/route/RouteActivity$6;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 332
    :cond_129
    :goto_129
    return-void

    .line 309
    :cond_12a
    :goto_12a
    return-void
.end method
