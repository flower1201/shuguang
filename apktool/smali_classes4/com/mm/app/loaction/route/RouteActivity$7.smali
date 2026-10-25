.class Lcom/mm/app/loaction/route/RouteActivity$7;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Lcom/mm/app/loaction/route/NavigationPlanner$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->planNavigation()V
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

    .line 390
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->val$request:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/String;)V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->val$request:I

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$7$0;

    invoke-direct {v2, p0, v1, p1}, Lcom/mm/app/loaction/route/RouteActivity$7$0;-><init>(Lcom/mm/app/loaction/route/RouteActivity$7;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mm/app/loaction/route/RouteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method synthetic lambda$failed$1$com-mm-app-loaction-route-RouteActivity$7(ILjava/lang/String;)V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->generation:I
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2800(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v0

    if-eq p1, v0, :cond_11

    goto :goto_25

    .line 399
    :cond_11
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$700(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    .line 400
    return-void

    .line 398
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$ready$0$com-mm-app-loaction-route-RouteActivity$7(ILjava/util/List;)V
    .registers 8

    .line 392
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->generation:I
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$2800(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v0

    if-eq p1, v0, :cond_11

    goto :goto_84

    .line 393
    :cond_11
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$800(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$700(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->redraw()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$900(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->persist()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1000(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u5df2\u91c7\u7528\u5bfc\u822a\u63a8\u8350\u8def\u7ebf\uff0c\u53ef\u6309\u8bbe\u5b9a\u901f\u5ea6\u5f00\u59cb\u884c\u8fdb"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    new-instance p1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$800(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_43

    .line 395
    :cond_53
    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {p2}, Lcom/mm/app/loaction/route/RouteActivity;->access$2300(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/high16 v1, 0x42100000    # 36.0f

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v0

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v2, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v2

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v3, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v3

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v4, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v1

    invoke-static {p1, v0, v2, v3, v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIII)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    .line 396
    return-void

    .line 392
    :cond_84
    :goto_84
    return-void
.end method

.method public ready(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$7;->val$request:I

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$7$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/mm/app/loaction/route/RouteActivity$7$1;-><init>(Lcom/mm/app/loaction/route/RouteActivity$7;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/mm/app/loaction/route/RouteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method
