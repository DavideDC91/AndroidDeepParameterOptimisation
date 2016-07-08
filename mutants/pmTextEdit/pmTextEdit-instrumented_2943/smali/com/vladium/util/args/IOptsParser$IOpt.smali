.class public interface abstract Lcom/vladium/util/args/IOptsParser$IOpt;
.super Ljava/lang/Object;
.source "IOptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/IOptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOpt"
.end annotation


# virtual methods
.method public abstract getCanonicalName()Ljava/lang/String;
.end method

.method public abstract getFirstValue()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPatternPrefix()Ljava/lang/String;
.end method

.method public abstract getValueCount()I
.end method

.method public abstract getValues()[Ljava/lang/String;
.end method
