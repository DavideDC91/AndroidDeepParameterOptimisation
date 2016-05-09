.class public final Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "ExceptionsAttribute_info.java"


# instance fields
.field private m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;


# direct methods
.method constructor <init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 118
    invoke-virtual {p4}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 119
    new-instance v0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;

    invoke-direct {v0, v1}, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    .line 121
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p4}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;->add(I)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;)V
    .locals 2

    .prologue
    .line 54
    invoke-interface {p2}, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;->length()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 56
    iput-object p2, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    .line 57
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;

    .line 92
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    .line 94
    return-object v0
.end method

.method public getDeclaredExceptions()Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    return-object v0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 66
    const-wide/16 v0, 0x6

    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    invoke-interface {v2}, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionsAttribute_info: [attribute_name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attribute_length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_attribute_length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 101
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 103
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;->m_exceptions:Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 104
    return-void
.end method
