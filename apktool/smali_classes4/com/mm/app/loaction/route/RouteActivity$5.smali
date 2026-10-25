.class Lcom/mm/app/loaction/route/RouteActivity$5;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Lcom/mm/app/loaction/route/DestinationSearch$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mm/app/loaction/route/RouteActivity;

.field final synthetic val$city:Ljava/lang/String;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$page:I

.field final synthetic val$request:I


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$request:I

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$keyword:Ljava/lang/String;

    iput p4, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$page:I

    iput-object p5, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$city:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/String;)V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$request:I

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$5$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/mm/app/loaction/route/RouteActivity$5$4;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mm/app/loaction/route/RouteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method synthetic lambda$failed$5$com-mm-app-loaction-route-RouteActivity$5(ILjava/lang/String;)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1400(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v0

    if-eq p1, v0, :cond_11

    goto :goto_25

    .line 276
    :cond_11
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1500(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->hint:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1600(Lcom/mm/app/loaction/route/RouteActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-void

    .line 275
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$ready$0$com-mm-app-loaction-route-RouteActivity$5(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 263
    iget-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p4, 0x0

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {p3, p1, p2, p4}, Lcom/mm/app/loaction/route/RouteActivity;->access$1700(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$ready$1$com-mm-app-loaction-route-RouteActivity$5(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 269
    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mm/app/loaction/route/DestinationSearch$Place;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->selectDestination(Lcom/mm/app/loaction/route/DestinationSearch$Place;)V
    invoke-static {p2, p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1800(Lcom/mm/app/loaction/route/RouteActivity;Lcom/mm/app/loaction/route/DestinationSearch$Place;)V

    return-void
.end method

.method synthetic lambda$ready$2$com-mm-app-loaction-route-RouteActivity$5(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 6

    .line 270
    iget-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    add-int/lit8 p3, p3, 0x1

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {p4, p1, p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$1700(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$ready$3$com-mm-app-loaction-route-RouteActivity$5(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 6

    .line 271
    iget-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    add-int/lit8 p3, p3, -0x1

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->requestDestination(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {p4, p1, p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$1700(Lcom/mm/app/loaction/route/RouteActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$ready$4$com-mm-app-loaction-route-RouteActivity$5(ILjava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 12

    .line 259
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->destroyed:Z
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1300(Lcom/mm/app/loaction/route/RouteActivity;)Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # getter for: Lcom/mm/app/loaction/route/RouteActivity;->searchGeneration:I
    invoke-static {v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$1400(Lcom/mm/app/loaction/route/RouteActivity;)I

    move-result v0

    if-eq p1, v0, :cond_12

    goto/16 :goto_d9

    .line 260
    :cond_12
    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->cancelDestinationSearch()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1500(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->updateStatus()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$100(Lcom/mm/app/loaction/route/RouteActivity;)V

    iget-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->showInstructions()V
    invoke-static {p1}, Lcom/mm/app/loaction/route/RouteActivity;->access$1100(Lcom/mm/app/loaction/route/RouteActivity;)V

    .line 261
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    if-eqz p1, :cond_51

    .line 262
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u8bf7\u9009\u62e9\u76ee\u7684\u5730\u6240\u5728\u57ce\u5e02"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/String;

    .line 263
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    new-instance p5, Lcom/mm/app/loaction/route/RouteActivity$5$0;

    invoke-direct {p5, p0, p4, p3}, Lcom/mm/app/loaction/route/RouteActivity$5$0;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 266
    :cond_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 267
    nop

    :goto_58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_8a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mm/app/loaction/route/DestinationSearch$Place;

    iget-object v3, v3, Lcom/mm/app/loaction/route/DestinationSearch$Place;->name:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "\n"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mm/app/loaction/route/DestinationSearch$Place;

    iget-object v3, v3, Lcom/mm/app/loaction/route/DestinationSearch$Place;->address:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 268
    :cond_8a
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9009\u62e9\u76ee\u7684\u5730 \u00b7 \u7b2c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p5, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u9875"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v2, Lcom/mm/app/loaction/route/RouteActivity$5$1;

    invoke-direct {v2, p0, p2}, Lcom/mm/app/loaction/route/RouteActivity$5$1;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/util/List;)V

    .line 269
    invoke-virtual {p3, p1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 270
    if-eqz p6, :cond_c9

    new-instance p2, Lcom/mm/app/loaction/route/RouteActivity$5$2;

    invoke-direct {p2, p0, p4, p7, p5}, Lcom/mm/app/loaction/route/RouteActivity$5$2;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p3, "\u4e0b\u4e00\u9875"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    :cond_c9
    if-lez p5, :cond_d5

    new-instance p2, Lcom/mm/app/loaction/route/RouteActivity$5$3;

    invoke-direct {p2, p0, p4, p7, p5}, Lcom/mm/app/loaction/route/RouteActivity$5$3;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p3, "\u4e0a\u4e00\u9875"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    :cond_d5
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    return-void

    .line 259
    :cond_d9
    :goto_d9
    return-void
.end method

.method public ready(Ljava/util/List;Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mm/app/loaction/route/DestinationSearch$Place;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget v3, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$request:I

    iget-object v6, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$keyword:Ljava/lang/String;

    iget v7, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$page:I

    iget-object v9, p0, Lcom/mm/app/loaction/route/RouteActivity$5;->val$city:Ljava/lang/String;

    new-instance v1, Lcom/mm/app/loaction/route/RouteActivity$5$5;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/mm/app/loaction/route/RouteActivity$5$5;-><init>(Lcom/mm/app/loaction/route/RouteActivity$5;ILjava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method
