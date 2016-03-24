.class public final Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "CodeAttribute_info.java"


# static fields
.field private static final DEBUG:Z

.field public static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

.field private m_code:[B

.field private m_codeSize:I

.field private m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

.field public m_max_locals:I

.field public m_max_stack:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(III[BLcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;Lcom/vladium/jcd/cls/IAttributeCollection;)V
    .locals 4

    .prologue
    .line 92
    if-eqz p4, :cond_0

    array-length v0, p4

    :goto_0
    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-interface {p5}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p6}, Lcom/vladium/jcd/cls/IAttributeCollection;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 94
    iput p2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    .line 95
    iput p3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    .line 97
    if-eqz p4, :cond_1

    :goto_1
    iput-object p4, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    .line 98
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    array-length v0, v0

    iput v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    .line 100
    iput-object p5, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    .line 101
    iput-object p6, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 102
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    sget-object p4, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1
.end method

.method constructor <init>(Lcom/vladium/jcd/cls/IConstantCollection;IJLcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p2, p3, p4}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 214
    invoke-virtual {p5}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    iput v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    .line 215
    invoke-virtual {p5}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    iput v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    .line 217
    invoke-virtual {p5}, Lcom/vladium/jcd/lib/UDataInputStream;->readU4()J

    move-result-wide v2

    .line 219
    long-to-int v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    .line 220
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    invoke-virtual {p5, v1}, Lcom/vladium/jcd/lib/UDataInputStream;->readFully([B)V

    .line 221
    long-to-int v1, v2

    iput v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    .line 224
    invoke-virtual {p5}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v2

    .line 225
    invoke-static {v2}, Lcom/vladium/jcd/cls/attribute/AttributeElementFactory;->newExceptionHandlerTable(I)Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v1

    iput-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move v1, v0

    .line 227
    :goto_0
    if-ge v1, v2, :cond_0

    .line 229
    new-instance v3, Lcom/vladium/jcd/cls/attribute/Exception_info;

    invoke-direct {v3, p5}, Lcom/vladium/jcd/cls/attribute/Exception_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 232
    iget-object v4, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    invoke-interface {v4, v3}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->add(Lcom/vladium/jcd/cls/attribute/Exception_info;)I

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p5}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 238
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 240
    :goto_1
    if-ge v0, v1, :cond_1

    .line 242
    invoke-static {p1, p5}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->new_Attribute_info(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;

    .line 171
    iget v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    .line 172
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    .line 173
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IAttributeCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 175
    return-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    goto :goto_0
.end method

.method public getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    return-object v0
.end method

.method public final getCode()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    return-object v0
.end method

.method public final getCodeSize()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    return v0
.end method

.method public getExceptionTable()Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    return-object v0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 130
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    add-int/lit8 v0, v0, 0xe

    int-to-long v0, v0

    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    invoke-interface {v2}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setCode([BI)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    .line 199
    iput p2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CodeAttribute_info: [attribute_name_index = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_name_index:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", attribute_length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attribute_length:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    max_stack/max_locals = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    code [length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v3}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v4, v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    .line 183
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 185
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 186
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 188
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU4(J)V

    .line 189
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_code:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_codeSize:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/vladium/jcd/lib/UDataOutputStream;->write([BII)V

    .line 191
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_exceptionHandlerTable:Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 192
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IAttributeCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 193
    return-void
.end method
