.class public final synthetic Lcom/mm/app/loaction/route/DeviceLocator$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/mm/app/loaction/route/DeviceLocator;"
    method = "lambda$new$0"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/mm/app/loaction/route/DeviceLocator;


# direct methods
.method public synthetic constructor <init>(Lcom/mm/app/loaction/route/DeviceLocator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/app/loaction/route/DeviceLocator$0;->f$0:Lcom/mm/app/loaction/route/DeviceLocator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/mm/app/loaction/route/DeviceLocator$0;->f$0:Lcom/mm/app/loaction/route/DeviceLocator;

    invoke-virtual {v0}, Lcom/mm/app/loaction/route/DeviceLocator;->lambda$new$0$com-mm-app-loaction-route-DeviceLocator()V

    return-void
.end method
