.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$showCoordinates$13"
    proto = "(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$9;->f$3:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$showCoordinates$13$com-mm-app-loaction-route-RouteActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
