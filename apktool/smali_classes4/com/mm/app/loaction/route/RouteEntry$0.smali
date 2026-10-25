.class public final synthetic Lcom/mm/app/loaction/route/RouteEntry$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteEntry;"
    method = "lambda$install$0"
    proto = "(Landroid/app/Activity;DDLandroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;DD)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$0:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$1:D

    iput-wide p4, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$2:D

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$0:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$1:D

    iget-wide v3, p0, Lcom/mm/app/loaction/route/RouteEntry$0;->f$2:D

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/mm/app/loaction/route/RouteEntry;->lambda$install$0(Landroid/app/Activity;DDLandroid/view/View;)V

    return-void
.end method
