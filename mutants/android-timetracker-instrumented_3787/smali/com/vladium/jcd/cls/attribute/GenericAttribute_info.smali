.class public final Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "GenericAttribute_info.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field public m_info:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 94
    iget-wide v0, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_attribute_length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    .line 95
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    invoke-virtual {p4, v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readFully([B)V

    .line 96
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    .line 36
    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 38
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_1
    sget-object p2, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;

    .line 69
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    array-length v1, v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    .line 71
    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generic attribute_info: [attribute_name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attribute_length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_attribute_length:J

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 80
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;->m_info:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/vladium/jcd/lib/UDataOutputStream;->write([BII)V

    .line 81
    return-void
.end method
