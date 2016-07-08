.class public interface abstract Lcom/androidplot/util/ZIndexable;
.super Ljava/lang/Object;
.source "ZIndexable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract elements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TElementType;>;"
        }
    .end annotation
.end method

.method public abstract moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation
.end method

.method public abstract moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation
.end method

.method public abstract moveDown(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation
.end method

.method public abstract moveToBottom(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation
.end method

.method public abstract moveToTop(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation
.end method

.method public abstract moveUp(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation
.end method
