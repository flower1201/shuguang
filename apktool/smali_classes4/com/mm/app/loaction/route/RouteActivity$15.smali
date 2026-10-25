.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$createViews$1"
    proto = "(Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$15;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$15;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-virtual {v0, p1}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$createViews$1$com-mm-app-loaction-route-RouteActivity(Landroid/view/View;)V

    return-void
.end method
