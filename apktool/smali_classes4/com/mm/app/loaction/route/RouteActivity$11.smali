.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity;"
    method = "lambda$planNavigation$15"
    proto = "(I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$11;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$11;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$11;->f$0:Lcom/mm/app/loaction/route/RouteActivity;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$11;->f$1:I

    invoke-virtual {v0, v1}, Lcom/mm/app/loaction/route/RouteActivity;->lambda$planNavigation$15$com-mm-app-loaction-route-RouteActivity(I)V

    return-void
.end method
