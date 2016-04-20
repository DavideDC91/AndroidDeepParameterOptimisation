.class public final Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "ConstantValueAttribute_info.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field public m_value_index:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 69
    iput p2, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_value_index:I

    .line 70
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
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 126
    invoke-virtual {p4}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_value_index:I

    .line 128
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/vladium/jcd/cls/ClassDef;)Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_value_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantValueAttribute_info: [attribute_name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attribute_length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_attribute_length:J

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
    .line 110
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 112
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->m_value_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 113
    return-void
.end method
