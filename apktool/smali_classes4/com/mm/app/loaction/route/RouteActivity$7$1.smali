.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$7$1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity$7;"
    method = "lambda$ready$0"
    proto = "(ILjava/util/List;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity$7;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity$7;ILjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$0:Lcom/mm/app/loaction/route/RouteActivity$7;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$1:I

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$0:Lcom/mm/app/loaction/route/RouteActivity$7;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$1:I

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$7$1;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/mm/app/loaction/route/RouteActivity$7;->lambda$ready$0$com-mm-app-loaction-route-RouteActivity$7(ILjava/util/List;)V

    return-void
.end method
