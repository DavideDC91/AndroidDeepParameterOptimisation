.class public final Lcom/vladium/jcd/cls/Field_info;
.super Ljava/lang/Object;
.source "Field_info.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/cls/IAccessFlags;


# static fields
.field private static final DEBUG:Z


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
    iput p1, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    .line 68
    iput p2, p0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    .line 69
    iput p3, p0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    .line 71
    iput-object p4, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    .line 80
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    .line 81
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    .line 84
    invoke-virtual {p2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 85
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 87
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    invoke-static {p1, p2}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->new_Attribute_info(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Field_info;

    .line 160
    iget-object v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IAttributeCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAccessFlags()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    return v0
.end method

.method public getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    return-object v0
.end method

.method public getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->hasSynthetic()Z

    move-result v0

    return v0
.end method

.method public final setAccessFlags(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field_info: [modifiers: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptor_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 175
    iget v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_access_flags:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 177
    iget v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 178
    iget v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 180
    iget-object v0, p0, Lcom/vladium/jcd/cls/Field_info;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IAttributeCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 181
    return-void
.end method
