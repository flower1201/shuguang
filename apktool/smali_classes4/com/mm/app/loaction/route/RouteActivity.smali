.class public final Lcom/mm/app/loaction/route/RouteActivity;
.super Landroid/app/Activity;
.source "RouteActivity.java"


# static fields
.field private static final INK:I = -0xdfccd1

.field private static final TEAL:I = -0xdc8698


# instance fields
.field private clear:Landroid/widget/Button;

.field private coordinates:Landroid/widget/Button;

.field private currentPosition:Lcom/baidu/mapapi/model/LatLng;

.field private destinationInput:Landroid/widget/EditText;

.field private destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

.field private destroyed:Z

.field private generation:I

.field private final handler:Landroid/os/Handler;

.field private hint:Landroid/widget/TextView;

.field private final icons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private keyConfigured:Z

.field private lastTransport:I

.field private locateButton:Landroid/widget/Button;

.field private locationGeneration:I

.field private locator:Lcom/mm/app/loaction/route/DeviceLocator;

.field private manual:Landroid/widget/RadioButton;

.field private map:Lcom/baidu/mapapi/map/BaiduMap;

.field private mapView:Lcom/baidu/mapapi/map/MapView;

.field private movingMarker:Lcom/baidu/mapapi/map/Marker;

.field private navigation:Landroid/widget/RadioButton;

.field private pause:Landroid/widget/Button;

.field private pendingDestination:Lcom/baidu/mapapi/model/LatLng;

.field private pendingDestinationName:Ljava/lang/String;

.field private plan:Landroid/widget/Button;

.field private final planned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private planner:Lcom/mm/app/loaction/route/NavigationPlanner;

.field private preferences:Landroid/content/SharedPreferences;

.field private final refresh:Ljava/lang/Runnable;

.field private renderedState:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field private restoring:Z

.field private searchButton:Landroid/widget/Button;

.field private searchGeneration:I

.field private speed:Landroid/widget/EditText;

.field private start:Landroid/widget/Button;

.field private stats:Landroid/widget/TextView;

.field private stop:Landroid/widget/Button;

.field private transport:Landroid/widget/Spinner;

.field private undo:Landroid/widget/Button;

.field private final waypoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/mm/app/loaction/route/RouteActivity$1;

    invoke-direct {v0, p0}, Lcom/mm/app/loaction/route/RouteActivity$1;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/mm/app/loaction/route/RoutePlayback$State;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->renderedState:Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/mm/app/loaction/route/RouteActivity;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I

    return p0
.end method

.method static synthetic access$1500(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/TextView;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mm/app/loaction/route/RouteActivity;Lcom/mm/app/loaction/route/DestinationSearch$Place;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->selectDestination(Lcom/mm/app/loaction/route/DestinationSearch$Place;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mm/app/loaction/route/RouteActivity;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I

    return p0
.end method

.method static synthetic access$200(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/os/Handler;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/mm/app/loaction/route/RouteActivity;Lcom/mm/app/loaction/route/DeviceLocator;)Lcom/mm/app/loaction/route/DeviceLocator;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/Button;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/mm/app/loaction/route/RouteActivity;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->currentPosition:Lcom/baidu/mapapi/model/LatLng;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/map/BaiduMap;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mm/app/loaction/route/RouteActivity;)Z
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->active()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/baidu/mapapi/model/LatLng;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/mm/app/loaction/route/RouteActivity;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->generation:I

    return p0
.end method

.method static synthetic access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/mm/app/loaction/route/RouteActivity;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mm/app/loaction/route/RouteActivity;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I

    return p0
.end method

.method static synthetic access$502(Lcom/mm/app/loaction/route/RouteActivity;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I

    return p1
.end method

.method static synthetic access$600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    return-void
.end method

.method static synthetic access$800(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    return-void
.end method

.method private active()Z
    .registers 2

    .line 468
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->status()Lcom/mm/app/loaction/route/RouteController$Status;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/RouteController$Status;->active()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 9

    .line 221
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->active()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "\u8bf7\u5148\u505c\u6b62\u884c\u8fdb\u518d\u7f16\u8f91\u8def\u7ebf"

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 223
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    .line 224
    new-instance v1, Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    new-instance v2, Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/mm/app/loaction/route/RoutePath;->distance(Lcom/mm/app/loaction/route/RoutePath$Point;Lcom/mm/app/loaction/route/RoutePath$Point;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3c

    .line 225
    const-string p1, "\u8d77\u70b9\u4e0e\u7ec8\u70b9\u8fc7\u8fd1\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u8d77\u70b9"

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_3c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    return-void

    .line 230
    :cond_66
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a3

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_a3

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_a3

    const-string p1, "\u8bf7\u653e\u7f6e\u4e0d\u540c\u7684\u6807\u5b9a\u70b9"

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_a3
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c5

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    :cond_c5
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_ca
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 235
    return-void
.end method

.method private background(I)Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    .line 545
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .registers 3

    .line 546
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/mm/app/loaction/route/UiStyles;->button(Landroid/widget/Button;Z)V

    return-object v0
.end method

.method private cancelDestinationSearch()V
    .registers 2

    .line 249
    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I

    .line 250
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/DestinationSearch;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    .line 251
    :cond_12
    return-void
.end method

.method private cancelLocator()V
    .registers 4

    .line 347
    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/DeviceLocator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    .line 348
    :cond_12
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    const-string v2, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    :cond_22
    return-void
.end method

.method private coordinateInput(Ljava/lang/String;)Landroid/widget/EditText;
    .registers 5

    .line 376
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 377
    const/16 p1, 0x3002

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 378
    invoke-static {v0}, Lcom/mm/app/loaction/route/UiStyles;->input(Landroid/widget/EditText;)V

    const/high16 p1, 0x42400000    # 48.0f

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 379
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    return-object v0
.end method

.method private createViews()V
    .registers 19

    .line 94
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, -0xa090e

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-direct {v0}, Lcom/mm/app/loaction/route/RouteActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-direct {v0, v7}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    const-string v6, "\u8fd4\u56de"

    invoke-direct {v0, v6}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    const v8, -0xdc8698

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v8, Lcom/mm/app/loaction/route/RouteActivity$12;

    invoke-direct {v8, v0}, Lcom/mm/app/loaction/route/RouteActivity$12;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/16 v8, 0xc

    invoke-static {v6, v3, v8, v9}, Lcom/mm/app/loaction/route/UiStyles;->ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42800000    # 64.0f

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    const/high16 v12, 0x42200000    # 40.0f

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    invoke-direct {v3, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const-string v3, "\u81ea\u5b9a\u4e49\u8f68\u8ff9"

    const/16 v6, 0x15

    invoke-direct {v0, v3, v6}, Lcom/mm/app/loaction/route/RouteActivity;->label(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    const-string v6, "sans-serif-medium"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42500000    # 52.0f

    invoke-direct {v0, v13}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v11, v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-direct {v0}, Lcom/mm/app/loaction/route/RouteActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {v0, v4}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    const/high16 v13, 0x40800000    # 4.0f

    invoke-direct {v0, v13}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v15

    invoke-direct {v0, v4}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v0, v4}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v8

    invoke-virtual {v3, v11, v15, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 107
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    const-string v8, "\u641c\u7d22\u76ee\u7684\u5730\uff08\u5730\u70b9 / \u5730\u5740\uff09"

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    const-string v8, "\u641c\u7d22\u76ee\u7684\u5730"

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 109
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 110
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/mm/app/loaction/route/UiStyles;->input(Landroid/widget/EditText;)V

    .line 111
    invoke-virtual {v0}, Lcom/mm/app/loaction/route/RouteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v11, "drawable"

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/RouteActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v8

    const-string v8, "sg_ic_search"

    invoke-virtual {v5, v8, v11, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 112
    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v5, :cond_f5

    .line 113
    iget-object v11, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v11, v5, v9, v9, v9}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 114
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 116
    :cond_f5
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x42300000    # 44.0f

    invoke-direct {v0, v15}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v4

    invoke-direct {v11, v9, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-string v4, "\u641c\u7d22"

    invoke-direct {v0, v4}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$15;

    invoke-direct {v5, v0}, Lcom/mm/app/loaction/route/RouteActivity$15;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    invoke-static {v4, v2}, Lcom/mm/app/loaction/route/UiStyles;->button(Landroid/widget/Button;Z)V

    .line 119
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v15}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v4, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 120
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    new-instance v4, Lcom/mm/app/loaction/route/RouteActivity$16;

    invoke-direct {v4, v0}, Lcom/mm/app/loaction/route/RouteActivity$16;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 125
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    invoke-direct {v0, v7}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v4

    invoke-direct {v0, v13}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v7}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v13}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-virtual {v3, v4, v5, v10, v11}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 126
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    const-string v5, "\u5bfc\u822a\u63a8\u8350"

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    const-string v5, "\u624b\u52a8\u6807\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/mm/app/loaction/route/UiStyles;->segment(Landroid/widget/RadioButton;)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/mm/app/loaction/route/UiStyles;->segment(Landroid/widget/RadioButton;)V

    .line 129
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v5, v9, v10, v14}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v5, v9, v10, v14}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v4, Lcom/mm/app/loaction/route/RouteActivity$17;

    invoke-direct {v4, v0}, Lcom/mm/app/loaction/route/RouteActivity$17;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 137
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    .line 138
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$2;

    const-string v10, "\u9a7e\u8f66"

    const-string v11, "\u9a91\u884c"

    const-string v13, "\u6b65\u884c"

    filled-new-array {v13, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const v11, 0x1090009

    invoke-direct {v5, v0, v0, v11, v10}, Lcom/mm/app/loaction/route/RouteActivity$2;-><init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v10, 0x42b80000    # 92.0f

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-direct {v5, v10, v11}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v3, "\u89c4\u5212\u8def\u7ebf"

    invoke-direct {v0, v3}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    new-instance v4, Lcom/mm/app/loaction/route/RouteActivity$18;

    invoke-direct {v4, v0}, Lcom/mm/app/loaction/route/RouteActivity$18;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    new-instance v4, Lcom/mm/app/loaction/route/RouteActivity$3;

    invoke-direct {v4, v0}, Lcom/mm/app/loaction/route/RouteActivity$3;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    const-string v3, ""

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4}, Lcom/mm/app/loaction/route/RouteActivity;->label(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const v5, -0x9b8a92

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v11, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 161
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 162
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    move/from16 v17, v11

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-direct {v0, v7}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-virtual {v4, v13, v11, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v4, Lcom/baidu/mapapi/map/MapView;

    invoke-direct {v4, v0}, Lcom/baidu/mapapi/map/MapView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    iput-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4, v9}, Lcom/baidu/mapapi/map/MapView;->showZoomControls(Z)V

    .line 164
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 165
    const/16 v5, 0x14

    const/4 v7, -0x1

    invoke-static {v4, v7, v5, v9}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 167
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const-string v5, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    const-string v11, "\u5b9a\u4f4d\u5230\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    iget-object v11, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    const/16 v13, 0xc

    invoke-static {v11, v7, v13, v2}, Lcom/mm/app/loaction/route/UiStyles;->ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setElevation(F)V

    .line 170
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    new-instance v11, Lcom/mm/app/loaction/route/RouteActivity$19;

    invoke-direct {v11, v0}, Lcom/mm/app/loaction/route/RouteActivity$19;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v11, 0x42d00000    # 104.0f

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-direct {v0, v15}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    const/16 v15, 0x35

    invoke-direct {v5, v11, v13, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 172
    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v11, 0x41400000    # 12.0f

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 173
    iget-object v13, v0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    invoke-virtual {v4, v13, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 175
    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v10}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v15

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-virtual {v5, v13, v10, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$4;

    invoke-direct {v5, v0}, Lcom/mm/app/loaction/route/RouteActivity$4;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V

    .line 181
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    const/16 v5, 0x16

    invoke-static {v4, v7, v5, v9}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v11, 0x41400000    # 12.0f

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-virtual {v4, v5, v10, v11, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 183
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-direct {v0}, Lcom/mm/app/loaction/route/RouteActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 185
    const-string v5, "\u64a4\u9500\u70b9"

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->undo:Landroid/widget/Button;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->undo:Landroid/widget/Button;

    new-instance v7, Lcom/mm/app/loaction/route/RouteActivity$20;

    invoke-direct {v7, v0}, Lcom/mm/app/loaction/route/RouteActivity$20;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const-string v5, "\u6e05\u7a7a"

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->clear:Landroid/widget/Button;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->clear:Landroid/widget/Button;

    new-instance v7, Lcom/mm/app/loaction/route/RouteActivity$21;

    invoke-direct {v7, v0}, Lcom/mm/app/loaction/route/RouteActivity$21;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const-string v5, "\u5750\u6807\u6dfb\u52a0"

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->coordinates:Landroid/widget/Button;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->coordinates:Landroid/widget/Button;

    new-instance v7, Lcom/mm/app/loaction/route/RouteActivity$22;

    invoke-direct {v7, v0}, Lcom/mm/app/loaction/route/RouteActivity$22;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const/4 v5, 0x4

    new-array v7, v5, [Landroid/widget/Button;

    iget-object v10, v0, Lcom/mm/app/loaction/route/RouteActivity;->undo:Landroid/widget/Button;

    aput-object v10, v7, v9

    iget-object v10, v0, Lcom/mm/app/loaction/route/RouteActivity;->clear:Landroid/widget/Button;

    aput-object v10, v7, v2

    iget-object v10, v0, Lcom/mm/app/loaction/route/RouteActivity;->coordinates:Landroid/widget/Button;

    aput-object v10, v7, v17

    iget-object v10, v0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    aput-object v10, v7, v16

    move v10, v9

    :goto_377
    const/high16 v11, 0x40400000    # 3.0f

    if-ge v10, v5, :cond_398

    aget-object v13, v7, v10

    .line 192
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v15, v9, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v11

    invoke-virtual {v15, v5, v9, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x4

    goto :goto_377

    .line 194
    :cond_398
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-direct {v0}, Lcom/mm/app/loaction/route/RouteActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-virtual {v1, v5, v7, v10, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    const/16 v5, 0xd

    invoke-direct {v0, v3, v5}, Lcom/mm/app/loaction/route/RouteActivity;->label(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-virtual {v3, v9, v9, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    move/from16 v5, v17

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 198
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v9, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    const-string v5, "\u901f\u5ea6 \u00b7 km/h"

    const/16 v13, 0xc

    invoke-direct {v0, v5, v13}, Lcom/mm/app/loaction/route/RouteActivity;->label(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0x9b8a92

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const-string v6, "\u884c\u8fdb\u901f\u5ea6"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const/16 v6, 0x2002

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 203
    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/mm/app/loaction/route/UiStyles;->input(Landroid/widget/EditText;)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 204
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-direct {v0, v6}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v12}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {v0, v6}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 205
    iget-object v6, v0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-direct {v0}, Lcom/mm/app/loaction/route/RouteActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v0, v5}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v5

    invoke-virtual {v1, v9, v3, v9, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    const-string v3, "\u5f00\u59cb\u884c\u8fdb"

    invoke-direct {v0, v3}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    invoke-static {v3, v2}, Lcom/mm/app/loaction/route/UiStyles;->button(Landroid/widget/Button;Z)V

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$23;

    invoke-direct {v5, v0}, Lcom/mm/app/loaction/route/RouteActivity$23;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const-string v3, "\u6682\u505c"

    invoke-direct {v0, v3}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$13;

    invoke-direct {v5, v0}, Lcom/mm/app/loaction/route/RouteActivity$13;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const-string v3, "\u505c\u6b62"

    invoke-direct {v0, v3}, Lcom/mm/app/loaction/route/RouteActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stop:Landroid/widget/Button;

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteActivity;->stop:Landroid/widget/Button;

    new-instance v5, Lcom/mm/app/loaction/route/RouteActivity$14;

    invoke-direct {v5, v0}, Lcom/mm/app/loaction/route/RouteActivity$14;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move/from16 v3, v16

    new-array v5, v3, [Landroid/widget/Button;

    iget-object v6, v0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    aput-object v6, v5, v9

    iget-object v6, v0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    aput-object v6, v5, v2

    iget-object v2, v0, Lcom/mm/app/loaction/route/RouteActivity;->stop:Landroid/widget/Button;

    const/16 v17, 0x2

    aput-object v2, v5, v17

    move v2, v9

    :goto_4b2
    if-ge v2, v3, :cond_4d2

    aget-object v6, v5, v2

    .line 215
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42380000    # 46.0f

    invoke-direct {v0, v8}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v8

    invoke-direct {v7, v9, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v8

    invoke-direct {v0, v11}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b2

    .line 217
    :cond_4d2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 542
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private hasMapKey()Z
    .registers 5

    .line 508
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 509
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_15

    const/4 v1, 0x0

    goto :goto_1d

    :cond_15
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    :goto_1d
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "YOUR_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2f} :catch_33

    if-nez v1, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 511
    :catch_33
    move-exception v1

    return v0
.end method

.method private icon(Ljava/lang/String;I)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 9

    .line 458
    const/high16 v0, 0x42080000    # 34.0f

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 460
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 461
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 462
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v4}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, v3, p2

    invoke-virtual {v1, v3, v3, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 463
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-direct {p0, p2}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 464
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr p2, v5

    div-float/2addr p2, v4

    sub-float p2, v3, p2

    invoke-virtual {v1, p1, v3, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 465
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private invalidatePlan()V
    .registers 2

    .line 514
    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->generation:I

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/NavigationPlanner;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    :cond_12
    return-void
.end method

.method private label(Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .line 543
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0xdfccd1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method private locateCurrentPosition()V
    .registers 4

    .line 301
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 302
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 303
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 305
    :cond_1a
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelLocator()V

    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locationGeneration:I

    .line 306
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    const-string v2, "\u5b9a\u4f4d\u4e2d\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->locateButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    new-instance v1, Lcom/mm/app/loaction/route/DeviceLocator;

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/mm/app/loaction/route/RouteActivity$6;-><init>(Lcom/mm/app/loaction/route/RouteActivity;I)V

    invoke-direct {v1, p0, v2}, Lcom/mm/app/loaction/route/DeviceLocator;-><init>(Landroid/content/Context;Lcom/mm/app/loaction/route/DeviceLocator$Result;)V

    iput-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    .line 343
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->locator:Lcom/mm/app/loaction/route/DeviceLocator;

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/DeviceLocator;->start()V

    .line 344
    return-void
.end method

.method private message(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u77e5\u9053\u4e86"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private persist()V
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const-string v2, "navigation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v2, "transport"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    .line 527
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/mm/app/loaction/route/RouteActivity;->writePoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "waypoints"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    .line 528
    invoke-static {v1}, Lcom/mm/app/loaction/route/RouteActivity;->writePoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "planned"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 529
    return-void
.end method

.method private planNavigation()V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const-string v0, "\u8bf7\u5148\u9009\u62e9\u8d77\u70b9\u548c\u7ec8\u70b9"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_f
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->keyConfigured:Z

    if-nez v0, :cond_1b

    const-string v0, "\u9700\u8981\u914d\u7f6e\u5730\u56fe Key"

    const-string v1, "\u516c\u5f00\u6e90\u7801\u4f7f\u7528 YOUR_BAIDU_LBS_API_KEY \u5360\u4f4d\u7b26\u3002\u8bf7\u5728 AndroidManifest.xml \u4e2d\u914d\u7f6e\u4e0e\u4f60\u7684\u5305\u540d\u53ca\u7b7e\u540d\u5339\u914d\u7684\u767e\u5ea6\u5730\u56fe Android Key\uff0c\u518d\u6784\u5efa\u5b89\u88c5\u3002\u624b\u52a8\u6a21\u5f0f\u4ecd\u53ef\u901a\u8fc7\u5750\u6807\u6dfb\u52a0\u8f68\u8ff9\u3002"

    invoke-direct {p0, v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 386
    :cond_1b
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    .line 387
    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->generation:I

    .line 388
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u63a8\u8350\u8def\u7ebf\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :try_start_2f
    new-instance v1, Lcom/mm/app/loaction/route/NavigationPlanner;

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/mm/app/loaction/route/RouteActivity$7;-><init>(Lcom/mm/app/loaction/route/RouteActivity;I)V

    invoke-direct {v1, v2}, Lcom/mm/app/loaction/route/NavigationPlanner;-><init>(Lcom/mm/app/loaction/route/NavigationPlanner$Result;)V

    iput-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    .line 402
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mm/app/loaction/route/NavigationPlanner;->plan(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;I)Z

    move-result v1

    if-nez v1, :cond_66

    .line 403
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string v1, "\u8def\u7ebf\u8bf7\u6c42\u672a\u80fd\u53d1\u8d77\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3001\u8d77\u7ec8\u70b9\u53ca\u767e\u5ea6 Key \u7684\u5305\u540d\u548c\u7b7e\u540d\u6388\u6743\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 404
    :cond_66
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/mm/app/loaction/route/RouteActivity$11;-><init>(Lcom/mm/app/loaction/route/RouteActivity;I)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_72} :catch_73

    .line 409
    :goto_72
    goto :goto_93

    :catch_73
    move-exception v0

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bfc\u822a\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :goto_93
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 411
    return-void
.end method

.method private static readPoints(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 537
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 538
    const/4 p0, 0x0

    move v1, p0

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v3, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    iget-wide v6, v3, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 539
    :cond_2e
    goto :goto_33

    :catch_2f
    move-exception p0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 540
    :goto_33
    return-void
.end method

.method private redraw()V
    .registers 9

    .line 442
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->movingMarker:Lcom/baidu/mapapi/map/Marker;

    .line 443
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    goto :goto_30

    :cond_2e
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    .line 445
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const v2, -0xdc8698

    const/4 v3, 0x1

    if-le v1, v3, :cond_52

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v4, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 446
    :cond_52
    const/4 v0, 0x0

    :goto_53
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v4, -0x148fba

    const-string v5, "\u7ec8"

    const/high16 v6, 0x3f000000    # 0.5f

    if-ge v0, v1, :cond_a5

    .line 447
    if-nez v0, :cond_67

    const-string v5, "\u8d77"

    goto :goto_78

    :cond_67
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_72

    if-ne v0, v3, :cond_72

    goto :goto_78

    :cond_72
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 448
    :goto_78
    if-nez v0, :cond_7b

    move v4, v2

    :cond_7b
    invoke-direct {p0, v5, v4}, Lcom/mm/app/loaction/route/RouteActivity;->icon(Ljava/lang/String;I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v7, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 451
    :cond_a5
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_ca

    .line 452
    invoke-direct {p0, v5, v4}, Lcom/mm/app/loaction/route/RouteActivity;->icon(Ljava/lang/String;I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 455
    :cond_ca
    return-void
.end method

.method private requestDestination(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 254
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    iget v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I

    .line 255
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u641c\u7d22\u76ee\u7684\u5730\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :try_start_c
    new-instance v6, Lcom/mm/app/loaction/route/DestinationSearch;

    new-instance v0, Lcom/mm/app/loaction/route/RouteActivity$5;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mm/app/loaction/route/RouteActivity$5;-><init>(Lcom/mm/app/loaction/route/RouteActivity;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/mm/app/loaction/route/DestinationSearch;-><init>(Lcom/mm/app/loaction/route/DestinationSearch$Result;)V

    iput-object v6, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    .line 279
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    invoke-virtual {p1, v3, v5, v4}, Lcom/mm/app/loaction/route/DestinationSearch;->request(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 280
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string p2, "\u641c\u7d22\u8bf7\u6c42\u672a\u53d1\u8d77\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u53ca\u767e\u5ea6 Key \u7684\u5305\u540d\u3001\u7b7e\u540d\u548c\u68c0\u7d22\u6743\u9650\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 281
    :cond_2f
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/mm/app/loaction/route/RouteActivity$10;

    invoke-direct {p2, p0, v2}, Lcom/mm/app/loaction/route/RouteActivity$10;-><init>(Lcom/mm/app/loaction/route/RouteActivity;I)V

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_3b} :catch_3c

    .line 286
    :goto_3b
    goto :goto_47

    :catch_3c
    move-exception v0

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string p2, "\u641c\u7d22\u6682\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u548c\u5730\u56fe\u914d\u7f6e\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_47
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 288
    return-void
.end method

.method private restoreDraft()V
    .registers 7

    .line 516
    const-string v0, "[]"

    const-string v1, "5"

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z

    .line 518
    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "navigation"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    goto :goto_17

    :cond_15
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    :goto_17
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 519
    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "transport"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    iget v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "speed"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "waypoints"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lcom/mm/app/loaction/route/RouteActivity;->readPoints(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "planned"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/mm/app/loaction/route/RouteActivity;->readPoints(Ljava/lang/String;Ljava/util/List;)V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_52} :catch_55
    .catchall {:try_start_8 .. :try_end_52} :catchall_53

    goto :goto_65

    .line 522
    :catchall_53
    move-exception v0

    goto :goto_68

    .line 521
    :catch_55
    move-exception v0

    :try_start_56
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_53

    .line 522
    :goto_65
    iput-boolean v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z

    .line 523
    return-void

    .line 522
    :goto_68
    iput-boolean v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z

    throw v0
.end method

.method private row()Landroid/widget/LinearLayout;
    .registers 3

    .line 544
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method private searchDestination()V
    .registers 5

    .line 238
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->active()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u8bf7\u5148\u505c\u6b62\u884c\u8fdb\u518d\u641c\u7d22\u76ee\u7684\u5730"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u76ee\u7684\u5730\u540d\u79f0\u6216\u5730\u5740"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 241
    :cond_28
    iget-boolean v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->keyConfigured:Z

    if-nez v1, :cond_34

    const-string v0, "\u9700\u8981\u914d\u7f6e\u5730\u56fe Key"

    const-string v1, "\u5730\u70b9\u641c\u7d22\u9700\u8981\u6709\u6548\u7684\u767e\u5ea6 Android Key \u53ca\u5730\u70b9\u68c0\u7d22\u670d\u52a1\u6743\u9650\u3002"

    invoke-direct {p0, v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_34
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 243
    const/4 v2, 0x0

    if-eqz v1, :cond_48

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 244
    :cond_48
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 245
    const-string v1, "\u5168\u56fd"

    invoke-direct {p0, v0, v1, v2}, Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method private selectDestination(Lcom/mm/app/loaction/route/DestinationSearch$Place;)V
    .registers 5

    .line 291
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->active()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "\u8bf7\u5148\u505c\u6b62\u884c\u8fdb\u518d\u7f16\u8f91\u8def\u7ebf"

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_c
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v1, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->point:Lcom/baidu/mapapi/model/LatLng;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v1, v2}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 294
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->point:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u6dfb\u52a0\u6807\u5b9a\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_46
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 296
    iget-object v0, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->point:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    iget-object p1, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestinationName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    goto :goto_85

    .line 297
    :cond_60
    iget-object v0, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->point:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u7ec8\u70b9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff0c\u70b9\u51fb\u89c4\u5212\u63a8\u8350\u8def\u7ebf\u3002"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_85
    return-void
.end method

.method private showCoordinates()V
    .registers 6

    .line 361
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    const-string v1, "\u7eac\u5ea6\uff0c\u4f8b\u5982 36.670000"

    invoke-direct {p0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->coordinateInput(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "\u7ecf\u5ea6\uff0c\u4f8b\u5982 117.030000"

    invoke-direct {p0, v2}, Lcom/mm/app/loaction/route/RouteActivity;->coordinateInput(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6dfb\u52a0\u767e\u5ea6\u5750\u6807 BD-09"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 365
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u6dfb\u52a0\u6807\u5b9a\u70b9"

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 366
    new-instance v3, Lcom/mm/app/loaction/route/RouteActivity$0;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/mm/app/loaction/route/RouteActivity$0;-><init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 373
    return-void
.end method

.method private showInstructions()V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u70b9\u9009\u8d77\u70b9\u3001\u7ec8\u70b9\uff0c\u6216\u641c\u7d22\u76ee\u7684\u5730\u540e\u89c4\u5212\u8def\u7ebf\u3002"

    goto :goto_d

    :cond_b
    const-string v0, "\u6309\u987a\u5e8f\u653e\u7f6e\u6807\u5b9a\u70b9\uff0c\u76f8\u90bb\u70b9\u4e4b\u95f4\u6cbf\u76f4\u7ebf\u884c\u8fdb\u3002"

    .line 501
    :goto_d
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u9009\u7ec8\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestinationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3002\u8bf7\u70b9\u5730\u56fe\u9009\u8d77\u70b9\uff0c\u6216\u70b9\u51fb\u5f53\u524d\u4f4d\u7f6e\u8bbe\u4e3a\u8d77\u70b9\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_2c
    iget-boolean v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->keyConfigured:Z

    if-nez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5730\u56fe Key \u672a\u914d\u7f6e\uff0c\u53ef\u5148\u901a\u8fc7\u5750\u6807\u6dfb\u52a0\u624b\u52a8\u8f68\u8ff9\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_43
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method private startPlayback()V
    .registers 11

    .line 414
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 415
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 417
    :cond_12
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 418
    if-eqz v0, :cond_db

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:mock_location"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_db

    .line 427
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 428
    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_b5

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_b5

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_59

    goto :goto_b5

    .line 429
    :cond_59
    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    goto :goto_66

    :cond_64
    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    .line 430
    :goto_66
    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v0, "\u8bf7\u5148\u89c4\u5212\u5bfc\u822a\u63a8\u8350\u8def\u7ebf"

    invoke-direct {p0, v0}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 431
    :cond_7a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 433
    iget-wide v5, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v7, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8}, Lcom/mm/app/loaction/application/utils/LocationUtils;->bd2wgs(DD)[D

    move-result-object v4

    .line 434
    new-instance v5, Lcom/mm/app/loaction/route/RoutePath$Point;

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    goto :goto_83

    .line 436
    :cond_a6
    new-instance v2, Lcom/mm/app/loaction/route/RoutePath;

    invoke-direct {v2, v3}, Lcom/mm/app/loaction/route/RoutePath;-><init>(Ljava/util/List;)V

    invoke-static {p0, v2, v0, v1}, Lcom/mm/app/loaction/route/RouteController;->start(Landroid/content/Context;Lcom/mm/app/loaction/route/RoutePath;D)V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    goto :goto_d9

    .line 428
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165 0.1 \u81f3 300 km/h"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_bc} :catch_d1
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_bc} :catch_bd

    return-void

    .line 438
    :catch_bd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c7

    const-string v0, "\u8bf7\u68c0\u67e5\u5b9a\u4f4d\u6743\u9650\u548c\u8def\u7ebf"

    goto :goto_cb

    :cond_c7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_cb
    const-string v1, "\u65e0\u6cd5\u5f00\u59cb\u8f68\u8ff9"

    invoke-direct {p0, v1, v0}, Lcom/mm/app/loaction/route/RouteActivity;->message(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    .line 437
    :catch_d1
    move-exception v0

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u6709\u6548\u901f\u5ea6"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 438
    :goto_d9
    nop

    .line 439
    :goto_da
    return-void

    .line 419
    :cond_db
    :goto_db
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u6a21\u62df\u4f4d\u7f6e\u4fe1\u606f\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 420
    const-string v1, "\u8bf7\u5728\u7cfb\u7edf\u5f00\u53d1\u8005\u9009\u9879\u4e2d\uff0c\u5c06\u201c\u9009\u62e9\u6a21\u62df\u4f4d\u7f6e\u4fe1\u606f\u5e94\u7528\u201d\u8bbe\u4e3a\u201c\u66d9\u5149\u201d\uff0c\u7136\u540e\u8fd4\u56de\u70b9\u51fb\u5f00\u59cb\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mm/app/loaction/route/RouteActivity$8;

    invoke-direct {v1, p0}, Lcom/mm/app/loaction/route/RouteActivity$8;-><init>(Lcom/mm/app/loaction/route/RouteActivity;)V

    const-string v2, "\u6253\u5f00\u5f00\u53d1\u8005\u9009\u9879"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 3

    .line 547
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateStatus()V
    .registers 14

    .line 470
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->status()Lcom/mm/app/loaction/route/RouteController$Status;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/RouteController$Status;->active()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    .line 471
    :goto_11
    if-nez v0, :cond_15

    const/4 v4, 0x0

    goto :goto_17

    :cond_15
    iget-object v4, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    :goto_17
    iput-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->renderedState:Lcom/mm/app/loaction/route/RoutePlayback$State;

    .line 472
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->manual:Landroid/widget/RadioButton;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 473
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->undo:Landroid/widget/Button;

    if-nez v3, :cond_40

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v5, :cond_40

    :cond_3e
    move v5, v2

    goto :goto_41

    :cond_40
    move v5, v1

    :goto_41
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->clear:Landroid/widget/Button;

    if-nez v3, :cond_56

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v5, :cond_56

    :cond_54
    move v5, v2

    goto :goto_57

    :cond_56
    move v5, v1

    :goto_57
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->coordinates:Landroid/widget/Button;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    if-nez v5, :cond_6a

    const-string v5, "\u641c\u7d22"

    goto :goto_6c

    :cond_6a
    const-string v5, "\u641c\u7d22\u4e2d"

    :goto_6c
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    if-nez v3, :cond_79

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    if-nez v5, :cond_79

    move v5, v2

    goto :goto_7a

    :cond_79
    move v5, v1

    :goto_7a
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationInput:Landroid/widget/EditText;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 476
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    if-eqz v5, :cond_95

    move v5, v6

    goto :goto_96

    :cond_95
    move v5, v7

    :goto_96
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 477
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->transport:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    const/16 v8, 0x8

    if-eqz v5, :cond_a7

    move v5, v1

    goto :goto_a8

    :cond_a7
    move v5, v8

    :goto_a8
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 478
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b6

    move v8, v1

    :cond_b6
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    const/4 v5, 0x2

    if-nez v3, :cond_cc

    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_cc

    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    if-nez v8, :cond_cc

    move v8, v2

    goto :goto_cd

    :cond_cc
    move v8, v1

    :goto_cd
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    if-nez v3, :cond_f3

    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    if-nez v8, :cond_f3

    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e9

    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v5, :cond_f3

    goto :goto_f1

    :cond_e9
    iget-object v8, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v5, :cond_f3

    :goto_f1
    move v8, v2

    goto :goto_f4

    :cond_f3
    move v8, v1

    :goto_f4
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 481
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->stop:Landroid/widget/Button;

    if-nez v3, :cond_10b

    if-eqz v0, :cond_109

    iget-object v8, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v9, Lcom/mm/app/loaction/route/RoutePlayback$State;->COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v8, v9, :cond_109

    goto :goto_10b

    :cond_109
    move v8, v1

    goto :goto_10c

    :cond_10b
    :goto_10b
    move v8, v2

    :goto_10c
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    if-eqz v0, :cond_11c

    iget-object v8, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v9, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v8, v9, :cond_11c

    const-string v8, "\u7ee7\u7eed"

    goto :goto_11e

    :cond_11c
    const-string v8, "\u6682\u505c"

    :goto_11e
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->speed:Landroid/widget/EditText;

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 483
    const/4 v4, 0x7

    new-array v8, v4, [Landroid/widget/Button;

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->start:Landroid/widget/Button;

    aput-object v9, v8, v1

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->pause:Landroid/widget/Button;

    aput-object v9, v8, v2

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->stop:Landroid/widget/Button;

    aput-object v9, v8, v5

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->undo:Landroid/widget/Button;

    aput-object v9, v8, v5

    const/4 v5, 0x4

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->clear:Landroid/widget/Button;

    aput-object v9, v8, v5

    const/4 v5, 0x5

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->coordinates:Landroid/widget/Button;

    aput-object v9, v8, v5

    const/4 v5, 0x6

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity;->plan:Landroid/widget/Button;

    aput-object v9, v8, v5

    move v5, v1

    :goto_14c
    if-ge v5, v4, :cond_15f

    aget-object v9, v8, v5

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_158

    move v10, v6

    goto :goto_159

    :cond_158
    move v10, v7

    :goto_159
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setAlpha(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14c

    .line 484
    :cond_15f
    if-eqz v0, :cond_1fe

    if-nez v3, :cond_169

    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v4, Lcom/mm/app/loaction/route/RoutePlayback$State;->COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v3, v4, :cond_1fe

    .line 485
    :cond_169
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v4, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v3, v4, :cond_172

    const-string v3, "\u884c\u8fdb\u4e2d"

    goto :goto_17d

    :cond_172
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v4, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v3, v4, :cond_17b

    const-string v3, "\u5df2\u6682\u505c"

    goto :goto_17d

    :cond_17b
    const-string v3, "\u5df2\u5230\u8fbe\u7ec8\u70b9"

    .line 486
    :goto_17d
    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iget-wide v6, v0, Lcom/mm/app/loaction/route/RouteController$Status;->speedKmh:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/mm/app/loaction/route/RouteController$Status;->travelled:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lcom/mm/app/loaction/route/RouteController$Status;->total:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    iget-wide v11, v0, Lcom/mm/app/loaction/route/RouteController$Status;->travelled:D

    mul-double/2addr v11, v9

    iget-wide v9, v0, Lcom/mm/app/loaction/route/RouteController$Status;->total:D

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v3, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%s \u00b7 %.1f km/h\n\u5df2\u884c\u8fdb %.0f / %.0f \u7c73 \u00b7 %.0f%%"

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v3, v0, Lcom/mm/app/loaction/route/RouteController$Status;->position:Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-wide v3, v3, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    iget-object v0, v0, Lcom/mm/app/loaction/route/RouteController$Status;->position:Lcom/mm/app/loaction/route/RoutePath$Point;

    iget-wide v5, v0, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/mm/app/loaction/application/utils/LocationUtils;->wgs2bd09(DD)[D

    move-result-object v0

    .line 488
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    aget-wide v4, v0, v2

    aget-wide v1, v0, v1

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 489
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->movingMarker:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_1f7

    const-string v0, "\u25cf"

    const v1, -0xdf8e2c

    invoke-direct {p0, v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->icon(Ljava/lang/String;I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->movingMarker:Lcom/baidu/mapapi/map/Marker;

    goto :goto_1fc

    .line 490
    :cond_1f7
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->movingMarker:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    .line 491
    :goto_1fc
    goto/16 :goto_274

    .line 492
    :cond_1fe
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_209

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    goto :goto_20b

    :cond_209
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    .line 493
    :goto_20b
    nop

    .line 494
    const-wide/16 v3, 0x0

    :goto_20e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_248

    new-instance v5, Lcom/mm/app/loaction/route/RoutePath$Point;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v7, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    new-instance v6, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v7, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v9, v9, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    invoke-static {v5, v6}, Lcom/mm/app/loaction/route/RoutePath;->distance(Lcom/mm/app/loaction/route/RoutePath$Point;Lcom/mm/app/loaction/route/RoutePath$Point;)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_20e

    .line 495
    :cond_248
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->stats:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-eqz v0, :cond_257

    iget-object v0, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v5, Lcom/mm/app/loaction/route/RoutePlayback$State;->STOPPED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne v0, v5, :cond_257

    const-string v0, "\u5df2\u505c\u6b62"

    goto :goto_259

    :cond_257
    const-string v0, "\u5f85\u5f00\u59cb"

    :goto_259
    iget-object v5, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%s \u00b7 %d \u4e2a\u6807\u5b9a\u70b9\n\u8def\u7ebf\u957f\u5ea6 %.0f \u7c73"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :goto_274
    return-void
.end method

.method private static writePoints(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 531
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 532
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-wide v3, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 533
    :cond_30
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method synthetic lambda$createViews$0$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 98
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->finish()V

    return-void
.end method

.method synthetic lambda$createViews$1$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->searchDestination()V

    return-void
.end method

.method synthetic lambda$createViews$10$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 3

    .line 209
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->status()Lcom/mm/app/loaction/route/RouteController$Status;

    move-result-object p1

    .line 210
    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-ne p1, v0, :cond_10

    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->resume()V

    goto :goto_13

    :cond_10
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->pause()V

    .line 211
    :goto_13
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 212
    return-void
.end method

.method synthetic lambda$createViews$11$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 213
    invoke-static {p0}, Lcom/mm/app/loaction/route/RouteController;->stop(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    return-void
.end method

.method synthetic lambda$createViews$2$com-mm-app-loaction-route-RouteActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 122
    const/4 p1, 0x3

    if-ne p2, p1, :cond_8

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->searchDestination()V

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$createViews$3$com-mm-app-loaction-route-RouteActivity(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 132
    iget-boolean p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z

    if-eqz p1, :cond_5

    return-void

    .line 133
    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    .line 134
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 135
    return-void
.end method

.method synthetic lambda$createViews$4$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->planNavigation()V

    return-void
.end method

.method synthetic lambda$createViews$5$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 170
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->locateCurrentPosition()V

    return-void
.end method

.method synthetic lambda$createViews$6$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 3

    .line 186
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    return-void

    .line 187
    :cond_11
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 188
    :cond_3d
    return-void
.end method

.method synthetic lambda$createViews$7$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 189
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->pendingDestination:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    return-void
.end method

.method synthetic lambda$createViews$8$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 190
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showCoordinates()V

    return-void
.end method

.method synthetic lambda$createViews$9$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V
    .registers 2

    .line 207
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->startPlayback()V

    return-void
.end method

.method synthetic lambda$planNavigation$15$com-mm-app-loaction-route-RouteActivity(I)V
    .registers 3

    .line 405
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->generation:I

    if-ne v0, p1, :cond_19

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->planner:Lcom/mm/app/loaction/route/NavigationPlanner;

    if-eqz p1, :cond_19

    .line 406
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string v0, "\u8def\u7ebf\u89c4\u5212\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u53ca\u767e\u5ea6 Key \u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 408
    :cond_19
    return-void
.end method

.method synthetic lambda$requestDestination$12$com-mm-app-loaction-route-RouteActivity(I)V
    .registers 3

    .line 282
    iget-boolean v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->destinationSearch:Lcom/mm/app/loaction/route/DestinationSearch;

    if-eqz p1, :cond_19

    .line 283
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;

    const-string v0, "\u641c\u7d22\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_19
    return-void
.end method

.method synthetic lambda$showCoordinates$13$com-mm-app-loaction-route-RouteActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 9

    .line 368
    :try_start_0
    new-instance p4, Lcom/mm/app/loaction/route/RoutePath$Point;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/mm/app/loaction/route/RoutePath$Point;-><init>(DD)V

    .line 369
    new-instance p2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, p4, Lcom/mm/app/loaction/route/RoutePath$Point;->latitude:D

    iget-wide v2, p4, Lcom/mm/app/loaction/route/RoutePath$Point;->longitude:D

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-direct {p0, p2}, Lcom/mm/app/loaction/route/RouteActivity;->addWaypoint(Lcom/baidu/mapapi/model/LatLng;)V

    .line 370
    iget-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 371
    goto :goto_44

    :catch_3e
    move-exception p2

    const-string p2, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u7ecf\u7eac\u5ea6\uff1a\u7eac\u5ea6 \u00b190\uff0c\u7ecf\u5ea6 \u00b1180"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 372
    :goto_44
    return-void
.end method

.method synthetic lambda$showCoordinates$14$com-mm-app-loaction-route-RouteActivity(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 6

    .line 366
    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lcom/mm/app/loaction/route/RouteActivity$9;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/mm/app/loaction/route/RouteActivity$9;-><init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$startPlayback$16$com-mm-app-loaction-route-RouteActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 422
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 423
    goto :goto_11

    :catch_b
    move-exception p1

    const-string p1, "\u8bf7\u624b\u52a8\u6253\u5f00\u7cfb\u7edf\u5f00\u53d1\u8005\u9009\u9879"

    invoke-direct {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->toast(Ljava/lang/String;)V

    .line 424
    :goto_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, -0xa090e

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 76
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    const-string p1, "route_editor"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mm/app/loaction/route/RouteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->preferences:Landroid/content/SharedPreferences;

    .line 79
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->hasMapKey()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->keyConfigured:Z

    .line 80
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->createViews()V

    .line 81
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->restoreDraft()V

    .line 82
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "latitude"

    const-wide v2, 0x40425575f2cb6417L    # 36.667662

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 83
    invoke-virtual {p0}, Lcom/mm/app/loaction/route/RouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "longitude"

    const-wide v6, 0x405d41c5f394b7b3L    # 117.027707

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    .line 84
    invoke-static {v4, v5}, Ljava/lang/Double;->isFinite(D)Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-static {v8, v9}, Ljava/lang/Double;->isFinite(D)Z

    move-result p1

    if-eqz p1, :cond_7c

    const-wide/16 v10, 0x0

    cmpl-double p1, v4, v10

    if-nez p1, :cond_7a

    cmpl-double p1, v8, v10

    if-nez p1, :cond_7a

    goto :goto_7c

    .line 85
    :cond_7a
    move-wide v2, v4

    move-wide v6, v8

    :cond_7c
    :goto_7c
    invoke-static {v6, v7, v2, v3}, Lcom/mm/app/loaction/application/utils/LocationUtils;->wgs2bd09(DD)[D

    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    aget-wide v4, p1, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_9c

    :cond_93
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->waypoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 87
    :goto_9c
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity;->map:Lcom/baidu/mapapi/map/BaiduMap;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 88
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->redraw()V

    .line 89
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V

    .line 90
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelLocator()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    :cond_1b
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    goto :goto_21

    :cond_31
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->cancelLocator()V

    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->persist()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    :cond_16
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 352
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 353
    const/16 p2, 0x66

    if-ne p1, p2, :cond_23

    .line 354
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_20

    .line 355
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    goto :goto_20

    .line 356
    :cond_18
    const-string p1, "\u9700\u8981\u4f4d\u7f6e\u6743\u9650"

    const-string p2, "\u8bf7\u5728\u5e94\u7528\u6743\u9650\u8bbe\u7f6e\u4e2d\u5141\u8bb8\u4f4d\u7f6e\u6743\u9650\u540e\uff0c\u518d\u70b9\u51fb\u5f53\u524d\u4f4d\u7f6e\u3002"

    invoke-direct {p0, p1, p2}, Lcom/mm/app/loaction/route/RouteActivity;->message(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 355
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/mm/app/loaction/route/RouteActivity;->locateCurrentPosition()V

    .line 358
    :cond_23
    :goto_23
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    :cond_c
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
