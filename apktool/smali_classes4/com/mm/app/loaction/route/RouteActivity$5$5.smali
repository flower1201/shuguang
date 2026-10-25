.class public final synthetic Lcom/mm/app/loaction/route/RouteActivity$5$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/RouteActivity$5;"
    method = "lambda$ready$4"
    proto = "(ILjava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/RouteActivity$5;ILjava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iput p2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$1:I

    iput-object p3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$5:I

    iput-boolean p7, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$6:Z

    iput-object p8, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$0:Lcom/mm/app/loaction/route/RouteActivity$5;

    iget v1, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$1:I

    iget-object v2, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$5:I

    iget-boolean v6, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$6:Z

    iget-object v7, p0, Lcom/mm/app/loaction/route/RouteActivity$5$5;->f$7:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/mm/app/loaction/route/RouteActivity$5;->lambda$ready$4$com-mm-app-loaction-route-RouteActivity$5(ILjava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method
