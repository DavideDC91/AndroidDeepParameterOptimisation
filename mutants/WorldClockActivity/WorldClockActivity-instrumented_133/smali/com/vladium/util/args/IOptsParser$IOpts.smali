.class public interface abstract Lcom/vladium/util/args/IOptsParser$IOpts;
.super Ljava/lang/Object;
.source "IOptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/IOptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOpts"
.end annotation


# virtual methods
.method public abstract error(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getFreeArgs()[Ljava/lang/String;
.end method

.method public abstract getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;
.end method

.method public abstract getOpts(Ljava/lang/String;)[Lcom/vladium/util/args/IOptsParser$IOpt;
.end method

.method public abstract hasArg(Ljava/lang/String;)Z
.end method

.method public abstract usageRequestLevel()I
.end method
