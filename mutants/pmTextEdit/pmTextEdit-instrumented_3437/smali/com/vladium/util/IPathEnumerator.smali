.class public interface abstract Lcom/vladium/util/IPathEnumerator;
.super Ljava/lang/Object;
.source "IPathEnumerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IPathEnumerator$Factory;,
        Lcom/vladium/util/IPathEnumerator$IPathHandler;
    }
.end annotation


# virtual methods
.method public abstract enumerate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
