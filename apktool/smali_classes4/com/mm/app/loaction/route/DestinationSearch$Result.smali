.class interface abstract Lcom/mm/app/loaction/route/DestinationSearch$Result;
.super Ljava/lang/Object;
.source "DestinationSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mm/app/loaction/route/DestinationSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Result"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/String;)V
.end method

.method public abstract ready(Ljava/util/List;Ljava/util/List;Z)V
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
.end method
