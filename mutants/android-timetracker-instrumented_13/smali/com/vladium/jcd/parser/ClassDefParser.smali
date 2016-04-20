.class public abstract Lcom/vladium/jcd/parser/ClassDefParser;
.super Ljava/lang/Object;
.source "ClassDefParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/parser/ClassDefParser$classParser;
    }
.end annotation


# static fields
.field static final PARSE_SERIAL_VERSION_UID:Z = true

.field static final SERIAL_VERSION_UID_FIELD_MASK:I = 0x18

.field static final SERIAL_VERSION_UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static parseClass(Ljava/io/InputStream;)Lcom/vladium/jcd/cls/ClassDef;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;

    new-instance v1, Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-direct {v1, p0}, Lcom/vladium/jcd/lib/UDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 70
    invoke-virtual {v0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->class_table()Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public static parseClass([B)Lcom/vladium/jcd/cls/ClassDef;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;

    new-instance v1, Lcom/vladium/jcd/lib/UDataInputStream;

    new-instance v2, Lcom/vladium/util/ByteArrayIStream;

    invoke-direct {v2, p0}, Lcom/vladium/util/ByteArrayIStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/vladium/jcd/lib/UDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 43
    invoke-virtual {v0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->class_table()Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public static parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-instance v0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;

    new-instance v1, Lcom/vladium/jcd/lib/UDataInputStream;

    new-instance v2, Lcom/vladium/util/ByteArrayIStream;

    invoke-direct {v2, p0, p1}, Lcom/vladium/util/ByteArrayIStream;-><init>([BI)V

    invoke-direct {v1, v2}, Lcom/vladium/jcd/lib/UDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 56
    invoke-virtual {v0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->class_table()Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v0

    return-object v0
.end method
