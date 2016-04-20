.class public final Lcom/vladium/jcd/cls/attribute/LineNumber_info;
.super Ljava/lang/Object;
.source "LineNumber_info.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# instance fields
.field public m_line_number:I

.field public m_start_pc:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    .line 49
    iput p2, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    .line 90
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line_number_info: [start_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line_number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 79
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 80
    return-void
.end method
