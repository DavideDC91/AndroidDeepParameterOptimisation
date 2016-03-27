.class public abstract Lcom/vladium/util/args/IOptsParser$Factory;
.super Ljava/lang/Object;
.source "IOptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/IOptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/vladium/util/args/OptsParser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vladium/util/args/OptsParser;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
