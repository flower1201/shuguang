.class Lcom/mm/app/loaction/route/RouteActivity$3;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->createViews()V
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

    .line 151
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->restoring:Z
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$400(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$500(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result p1

    if-ne p3, p1, :cond_11

    goto :goto_48

    .line 154
    :cond_11
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # setter for: Lcom/mm/app/loaction/route/RouteActivity;->lastTransport:I
    invoke-static {p1, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$502(Lcom/mm/app/loaction/route/RouteActivity;I)I

    .line 155
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->navigation:Landroid/widget/RadioButton;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-static {}, Lcom/mm/app/loaction/route/RouteController;->cancel()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->invalidatePlan()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$700(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->planned:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$800(Lcom/mm/app/loaction/route/RouteActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->redraw()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$900(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->persist()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1000(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1100(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$3;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    .line 156
    :cond_47
    return-void

    .line 153
    :cond_48
    :goto_48
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 157
    return-void
.end method
