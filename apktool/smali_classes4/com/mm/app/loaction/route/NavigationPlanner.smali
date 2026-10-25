.class final Lcom/mm/app/loaction/route/NavigationPlanner;
.super Ljava/lang/Object;
.source "NavigationPlanner.java"

# interfaces
.implements Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/NavigationPlanner$Result;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final result:Lcom/mm/app/loaction/route/NavigationPlanner$Result;

.field private final search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/NavigationPlanner$Result;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->result:Lcom/mm/app/loaction/route/NavigationPlanner$Result;

    .line 20
    invoke-static {}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    move-result-object p1

    iput-object p1, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 21
    iget-object p1, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V

    .line 22
    return-void
.end method

.method private accept(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/search/core/SearchResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/mapapi/search/core/RouteLine<",
            "*>;>;)V"
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    .line 35
    :cond_5
    if-eqz p1, :cond_98

    iget-object v0, p1, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_98

    if-eqz p2, :cond_98

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_98

    .line 40
    :cond_17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/search/core/RouteLine;

    invoke-virtual {p2}, Lcom/baidu/mapapi/search/core/RouteLine;->getAllStep()Ljava/util/List;

    move-result-object p2

    .line 42
    if-eqz p2, :cond_85

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteStep;

    .line 43
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 45
    if-nez v1, :cond_52

    goto :goto_43

    .line 46
    :cond_52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_80

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_83

    :cond_80
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_83
    goto :goto_43

    .line 49
    :cond_84
    goto :goto_2d

    .line 50
    :cond_85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 51
    iget-object v0, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->result:Lcom/mm/app/loaction/route/NavigationPlanner$Result;

    .line 50
    const/4 v1, 0x2

    if-ge p2, v1, :cond_94

    const-string p1, "\u5bfc\u822a\u670d\u52a1\u672a\u8fd4\u56de\u5b8c\u6574\u9053\u8def\u8f68\u8ff9\uff0c\u8bf7\u66f4\u6362\u8d77\u7ec8\u70b9\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, p1}, Lcom/mm/app/loaction/route/NavigationPlanner$Result;->failed(Ljava/lang/String;)V

    goto :goto_97

    .line 51
    :cond_94
    invoke-interface {v0, p1}, Lcom/mm/app/loaction/route/NavigationPlanner$Result;->ready(Ljava/util/List;)V

    .line 52
    :goto_97
    return-void

    .line 36
    :cond_98
    :goto_98
    iget-object p2, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->result:Lcom/mm/app/loaction/route/NavigationPlanner$Result;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u80fd\u83b7\u53d6\u5bfc\u822a\u8def\u7ebf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_aa

    const-string p1, "\u65e0\u54cd\u5e94"

    goto :goto_ac

    :cond_aa
    iget-object p1, p1, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_ac
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u3002\u8bf7\u68c0\u67e5\u7f51\u7edc\u3001\u8d77\u7ec8\u70b9\u53ca\u5730\u56fe Key \u6388\u6743\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mm/app/loaction/route/NavigationPlanner$Result;->failed(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->cancelled:Z

    iget-object v0, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->destroy()V

    return-void
.end method

.method public onGetBikingRouteResult(Lcom/baidu/mapapi/search/route/BikingRouteResult;)V
    .registers 3

    .line 56
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0}, Lcom/mm/app/loaction/route/NavigationPlanner;->accept(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/util/List;)V

    return-void
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .registers 3

    .line 55
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0}, Lcom/mm/app/loaction/route/NavigationPlanner;->accept(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/util/List;)V

    return-void
.end method

.method public onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V
    .registers 2

    .line 59
    return-void
.end method

.method public onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V
    .registers 2

    .line 58
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .registers 2

    .line 57
    return-void
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V
    .registers 3

    .line 54
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0}, Lcom/mm/app/loaction/route/NavigationPlanner;->accept(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/util/List;)V

    return-void
.end method

.method plan(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;I)Z
    .registers 6

    .line 25
    invoke-static {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    invoke-static {p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    .line 26
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1f

    iget-object p3, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z

    move-result p1

    return p1

    .line 27
    :cond_1f
    nop

    .line 28
    iget-object v0, p0, Lcom/mm/app/loaction/route/NavigationPlanner;->search:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 27
    const/4 v1, 0x2

    if-ne p3, v1, :cond_37

    new-instance p3, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;

    invoke-direct {p3}, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;-><init>()V

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->bikingSearch(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)Z

    move-result p1

    return p1

    .line 28
    :cond_37
    new-instance p3, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    invoke-direct {p3}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;-><init>()V

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z

    move-result p1

    return p1
.end method
