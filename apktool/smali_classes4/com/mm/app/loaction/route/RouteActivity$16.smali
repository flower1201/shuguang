.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$createViews$2"
    proto = "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$16;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$16;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$createViews$2$com-mm-app-loaction-route-RouteActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
