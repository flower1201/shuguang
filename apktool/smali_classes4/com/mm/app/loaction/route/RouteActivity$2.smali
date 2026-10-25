.class Lcom/mm/app/loaction/route/RouteActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "RouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mm/app/loaction/route/RouteActivity;->createViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 146
    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, -0xdfccd1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/high16 p3, 0x41800000    # 16.0f

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result p2

    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/high16 v1, 0x41400000    # 12.0f

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v0

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result p3

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {v2, v1}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result v1

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 141
    const/high16 p2, 0x41500000    # 13.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, -0xdfccd1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 142
    iget-object p2, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/high16 p3, 0x41000000    # 8.0f

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {p2, p3}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result p2

    iget-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$2;->this$0:Lcom/mm/app/loaction/route/RouteActivity;

    const/high16 v0, 0x40800000    # 4.0f

    # invokes: Lcom/mm/app/loaction/route/RouteActivity;->dp(F)I
    invoke-static {p3, v0}, Lcom/mm/app/loaction/route/RouteActivity;->access$300(Lcom/mm/app/loaction/route/RouteActivity;F)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p1
.end method
