.class public final Lcom/vladium/jcd/cls/Method_info;
.super Ljava/lang/Object;
.source "Method_info.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/cls/IAccessFlags;


# instance fields
.field private m_access_flags:I

.field private m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

.field public m_descriptor_index:I

.field public m_name_index:I


# direct methods
.method public constructor <init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    .line 68
    iput p2, p0, Lcom/vladium/jcd/cls/Method_info;->m_name_index:I

    .line 69
    iput p3, p0, Lcom/vladium/jcd/cls/Method_info;->m_descriptor_index:I

    .line 71
    iput-object p4, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    .line 81
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_name_index:I

    .line 82
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_descriptor_index:I

    .line 86
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 87
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 89
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    invoke-static {p1, p2}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->new_Attribute_info(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 184
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Method_info;

    .line 187
    iget-object v1, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IAttributeCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAccessFlags()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    return v0
.end method

.method public getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    return-object v0
.end method

.method public getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Method_info;->m_descriptor_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Method_info;->m_name_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBridge()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->hasBridge()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNative()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->hasSynthetic()Z

    move-result v0

    return v0
.end method

.method public final setAccessFlags(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method_info: [modifiers: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name_index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/Method_info;->m_name_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", descriptor_index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/Method_info;->m_descriptor_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v2, v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    .line 201
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_access_flags:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 203
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_name_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 204
    iget v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_descriptor_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 206
    iget-object v0, p0, Lcom/vladium/jcd/cls/Method_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IAttributeCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 207
    return-void
.end method
