.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$5$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity$5;"
    method = "lambda$ready$0"
    proto = "(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iput-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$0;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/mm/app/loaction/route/RouteActivity$5;->lambda$ready$0$com-mm-app-loaction-route-RouteActivity$5(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
