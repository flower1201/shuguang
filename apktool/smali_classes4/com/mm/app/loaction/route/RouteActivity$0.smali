.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$showCoordinates$14"
    proto = "(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$0;->f$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$showCoordinates$14$com-mm-app-loaction-route-RouteActivity(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
