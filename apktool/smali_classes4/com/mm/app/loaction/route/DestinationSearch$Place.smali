.class final Lcom/mm/app/loaction/route/DestinationSearch$Place;
.super Ljava/lang/Object;
.source "DestinationSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/DestinationSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Place"
.end annotation


# instance fields
.field final address:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final point:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_7

    const-string p1, "\u672a\u547d\u540d\u5730\u70b9"

    :cond_7
    iput-object p1, p0, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    .line 17
    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    iput-object p2, p0, Lcom/mm/app/loaction/route/DestinationSearch$Place;->address:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/mm/app/loaction/route/DestinationSearch$Place;->point:Lcom/baidu/mapapi/model/LatLng;

    .line 19
    return-void
.end method
