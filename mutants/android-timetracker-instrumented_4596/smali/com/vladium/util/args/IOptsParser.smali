.class public interface abstract Lcom/vladium/util/args/IOptsParser;
.super Ljava/lang/Object;
.source "IOptsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/args/IOptsParser$Factory;,
        Lcom/vladium/util/args/IOptsParser$IOpts;,
        Lcom/vladium/util/args/IOptsParser$IOpt;
    }
.end annotation


# static fields
.field public static final DETAILED_USAGE:I = 0x2

.field public static final SHORT_USAGE:I = 0x1


# virtual methods
.method public abstract parse([Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser$IOpts;
.end method

.method public abstract usage(Ljava/io/PrintWriter;II)V
.end method
