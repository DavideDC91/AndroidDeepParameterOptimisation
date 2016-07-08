.class public abstract Lcom/vladium/util/IPathEnumerator$Factory;
.super Ljava/lang/Object;
.source "IPathEnumerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IPathEnumerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static create([Ljava/io/File;ZLcom/vladium/util/IPathEnumerator$IPathHandler;)Lcom/vladium/util/IPathEnumerator;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;-><init>([Ljava/io/File;ZLcom/vladium/util/IPathEnumerator$IPathHandler;)V

    return-object v0
.end method
