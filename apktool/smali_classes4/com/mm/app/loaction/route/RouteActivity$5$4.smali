.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$5$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity$5;"
    method = "lambda$failed$5"
    proto = "(ILjava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity$5;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$1:I

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$1:I

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mm/app/loaction/route/RouteActivity$5;->lambda$failed$5$com-mm-app-loaction-route-RouteActivity$5(ILjava/lang/String;)V

    return-void
.end method
