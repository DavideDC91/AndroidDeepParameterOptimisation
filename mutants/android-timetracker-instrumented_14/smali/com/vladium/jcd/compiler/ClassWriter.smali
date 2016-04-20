.class public abstract Lcom/vladium/jcd/compiler/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeClassTable(Lcom/vladium/jcd/cls/ClassDef;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/vladium/jcd/lib/UDataOutputStream;

    invoke-direct {v0, p1}, Lcom/vladium/jcd/lib/UDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/ClassDef;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 31
    return-void
.end method
