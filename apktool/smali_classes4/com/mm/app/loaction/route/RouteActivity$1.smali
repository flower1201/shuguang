.class Lcom/mm/app/loaction/route/RouteActivity$1;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/RouteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$1;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 65
    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->status()Lcom/mm/app/loaction/route/RouteController$Status;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v2, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    if-eq v1, v2, :cond_20

    iget-object v1, v0, Lcom/mm/app/loaction/route/RouteController$Status;->state:Lcom/mm/app/loaction/route/RoutePlayback$State;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$1;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->renderedState:Lcom/mm/app/loaction/route/RoutePlayback$State;
    invoke-static {v2}, Lcom/mm/app/loaction/route/RouteActivity;->access$000(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/mm/app/loaction/route/RoutePlayback$State;

    move-result-object v2

    if-ne v1, v2, :cond_20

    :cond_16
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$1;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    .line 67
    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->renderedState:Lcom/mm/app/loaction/route/RoutePlayback$State;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$000(Lcom/mm/app/loaction/route/RouteActivity;)Lcom/mm/app/loaction/route/RoutePlayback$State;

    move-result-object v0

    if-eqz v0, :cond_25

    :cond_20
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$1;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    .line 68
    :cond_25
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$1;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$200(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method
