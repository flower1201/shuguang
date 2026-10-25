.class public final enum Lcom/mm/app/loaction/route/RoutePlayback$State;
.super Ljava/lang/Enum;
.source "RoutePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/RoutePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mm/app/loaction/route/RoutePlayback$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mm/app/loaction/route/RoutePlayback$State;

.field public static final enum COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field public static final enum PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field public static final enum RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

.field public static final enum STOPPED:Lcom/mm/app/loaction/route/RoutePlayback$State;


# direct methods
.method private static synthetic $values()[Lcom/mm/app/loaction/route/RoutePlayback$State;
    .registers 4

    .line 5
    sget-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v1, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v2, Lcom/mm/app/loaction/route/RoutePlayback$State;->COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    sget-object v3, Lcom/mm/app/loaction/route/RoutePlayback$State;->STOPPED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mm/app/loaction/route/RoutePlayback$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->RUNNING:Lcom/mm/app/loaction/route/RoutePlayback$State;

    new-instance v0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->PAUSED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    new-instance v0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->COMPLETED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    new-instance v0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mm/app/loaction/route/RoutePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->STOPPED:Lcom/mm/app/loaction/route/RoutePlayback$State;

    invoke-static {}, Lcom/mm/app/loaction/route/RoutePlayback$State;->$values()[Lcom/mm/app/loaction/route/RoutePlayback$State;

    move-result-object v0

    sput-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->$VALUES:[Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mm/app/loaction/route/RoutePlayback$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-object p0
.end method

.method public static values()[Lcom/mm/app/loaction/route/RoutePlayback$State;
    .registers 1

    .line 5
    sget-object v0, Lcom/mm/app/loaction/route/RoutePlayback$State;->$VALUES:[Lcom/mm/app/loaction/route/RoutePlayback$State;

    invoke-virtual {v0}, [Lcom/mm/app/loaction/route/RoutePlayback$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mm/app/loaction/route/RoutePlayback$State;

    return-object v0
.end method
