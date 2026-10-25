.class final Lcom/mm/app/loaction/route/DestinationSearch;
.super Ljava/lang/Object;
.source "DestinationSearch.java"

# interfaces
.implements Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mm/app/loaction/route/DestinationSearch$Result;,
        Lcom/mm/app/loaction/route/DestinationSearch$Place;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final result:Lcom/mm/app/loaction/route/DestinationSearch$Result;

.field private final search:Lcom/baidu/mapapi/search/poi/PoiSearch;


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/DestinationSearch$Result;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiSearch;->newInstance()Lcom/baidu/mapapi/search/poi/PoiSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->search:Lcom/baidu/mapapi/search/poi/PoiSearch;

    .line 28
    iput-object p1, p0, Lcom/mm/app/loaction/route/DestinationSearch;->result:Lcom/mm/app/loaction/route/DestinationSearch$Result;

    iget-object p1, p0, Lcom/mm/app/loaction/route/DestinationSearch;->search:Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->setOnGetPoiSearchResultListener(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->cancelled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->cancelled:Z

    iget-object v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->search:Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->destroy()V

    :cond_c
    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailResult;)V
    .registers 2

    .line 54
    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;)V
    .registers 2

    .line 55
    return-void
.end method

.method public onGetPoiIndoorResult(Lcom/baidu/mapapi/search/poi/PoiIndoorResult;)V
    .registers 2

    .line 56
    return-void
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .registers 9

    .line 35
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    .line 36
    :cond_5
    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/mm/app/loaction/route/DestinationSearch;->result:Lcom/mm/app/loaction/route/DestinationSearch$Result;

    const-string v0, "\u641c\u7d22\u6ca1\u6709\u8fd4\u56de\u7ed3\u679c\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-interface {p1, v0}, Lcom/mm/app/loaction/route/DestinationSearch$Result;->failed(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/PoiInfo;

    .line 40
    if-eqz v3, :cond_47

    iget-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v4, :cond_47

    new-instance v4, Lcom/mm/app/loaction/route/DestinationSearch$Place;

    iget-object v5, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    iget-object v3, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v5, v6, v3}, Lcom/mm/app/loaction/route/DestinationSearch$Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_47
    goto :goto_27

    .line 42
    :cond_48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllAddr()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllAddr()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;

    .line 43
    if-eqz v3, :cond_7c

    iget-object v4, v3, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v4, :cond_7c

    new-instance v4, Lcom/mm/app/loaction/route/DestinationSearch$Place;

    iget-object v5, v3, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->address:Ljava/lang/String;

    iget-object v3, v3, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v5, v6, v3}, Lcom/mm/app/loaction/route/DestinationSearch$Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_7c
    goto :goto_5c

    .line 45
    :cond_7d
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getSuggestCityList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_ab

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getSuggestCityList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/CityInfo;

    .line 46
    if-eqz v3, :cond_aa

    iget-object v4, v3, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    if-eqz v4, :cond_aa

    iget-object v4, v3, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    iget-object v3, v3, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_aa
    goto :goto_8b

    .line 48
    :cond_ab
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    goto :goto_e5

    .line 50
    :cond_b8
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 52
    iget-object v2, p0, Lcom/mm/app/loaction/route/DestinationSearch;->result:Lcom/mm/app/loaction/route/DestinationSearch$Result;

    .line 50
    if-ne v0, v1, :cond_c6

    .line 51
    const-string p1, "\u672a\u627e\u5230\u5730\u70b9\uff0c\u8bf7\u8865\u5145\u57ce\u5e02\u3001\u8857\u9053\u6216\u66f4\u5177\u4f53\u7684\u540d\u79f0\u3002"

    invoke-interface {v2, p1}, Lcom/mm/app/loaction/route/DestinationSearch$Result;->failed(Ljava/lang/String;)V

    goto :goto_f8

    .line 52
    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5730\u70b9\u641c\u7d22\u5931\u8d25\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff09\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u548c\u767e\u5ea6 Key \u7684\u5730\u70b9\u68c0\u7d22\u6743\u9650\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/mm/app/loaction/route/DestinationSearch$Result;->failed(Ljava/lang/String;)V

    goto :goto_f8

    .line 49
    :cond_e5
    :goto_e5
    iget-object v2, p0, Lcom/mm/app/loaction/route/DestinationSearch;->result:Lcom/mm/app/loaction/route/DestinationSearch$Result;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getCurrentPageNum()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getTotalPageNum()I

    move-result p1

    if-ge v3, p1, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v4, 0x0

    :goto_f5
    invoke-interface {v2, v0, v1, v4}, Lcom/mm/app/loaction/route/DestinationSearch$Result;->ready(Ljava/util/List;Ljava/util/List;Z)V

    .line 53
    :goto_f8
    return-void
.end method

.method request(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/mm/app/loaction/route/DestinationSearch;->search:Lcom/baidu/mapapi/search/poi/PoiSearch;

    new-instance v1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    .line 31
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->cityLimit(Z)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->pageNum(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->isReturnAddr(Z)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/poi/PoiSearch;->searchInCity(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z

    move-result p1

    return p1
.end method
