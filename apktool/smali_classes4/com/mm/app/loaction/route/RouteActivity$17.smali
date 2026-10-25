.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$createViews$3"
    proto = "(Landroid/widget/RadioGroup;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$17;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$17;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$createViews$3$com-mm-app-loaction-route-RouteActivity(Landroid/widget/RadioGroup;I)V

    return-void
.end method
