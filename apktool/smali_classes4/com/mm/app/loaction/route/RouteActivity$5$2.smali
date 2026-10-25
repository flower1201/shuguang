.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$5$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity$5;"
    method = "lambda$ready$2"
    proto = "(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iput-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iget-object v1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$2;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mm/app/loaction/route/RouteActivity$5;->lambda$ready$2$com-mm-app-loaction-route-RouteActivity$5(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method
