.class public abstract Lcom/vladium/jcd/cls/attribute/Attribute_info;
.super Ljava/lang/Object;
.source "Attribute_info.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# static fields
.field public static final ATTRIBUTE_BRIDGE:Ljava/lang/String; = "Bridge"

.field public static final ATTRIBUTE_CODE:Ljava/lang/String; = "Code"

.field public static final ATTRIBUTE_CONSTANT_VALUE:Ljava/lang/String; = "ConstantValue"

.field public static final ATTRIBUTE_EXCEPTIONS:Ljava/lang/String; = "Exceptions"

.field public static final ATTRIBUTE_INNERCLASSES:Ljava/lang/String; = "InnerClasses"

.field public static final ATTRIBUTE_LINE_NUMBER_TABLE:Ljava/lang/String; = "LineNumberTable"

.field public static final ATTRIBUTE_SOURCEFILE:Ljava/lang/String; = "SourceFile"

.field public static final ATTRIBUTE_SYNTHETIC:Ljava/lang/String; = "Synthetic"


# instance fields
.field protected m_attribute_length:J

.field public m_name_index:I


# direct methods
.method protected constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lcom/vladium/jcd/cls/attribute/Attribute_info;->m_name_index:I

    .line 193
    iput-wide p2, p0, Lcom/vladium/jcd/cls/attribute/Attribute_info;->m_attribute_length:J

    .line 194
    return-void
.end method

.method public static new_Attribute_info(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/attribute/Attribute_info;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v3

    .line 110
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU4()J

    move-result-wide v4

    .line 112
    invoke-interface {p0, v3}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    .line 113
    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    .line 115
    const-string v1, "Code"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;-><init>(Lcom/vladium/jcd/cls/IConstantCollection;IJLcom/vladium/jcd/lib/UDataInputStream;)V

    .line 150
    :goto_0
    return-object v1

    .line 119
    :cond_0
    const-string v1, "ConstantValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v1, "Exceptions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    new-instance v1, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v1, "InnerClasses"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    new-instance v1, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 131
    :cond_3
    const-string v1, "Synthetic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    new-instance v1, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    invoke-direct {v1, v3, v4, v5}, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;-><init>(IJ)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v1, "Bridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    new-instance v1, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;

    invoke-direct {v1, v3, v4, v5}, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;-><init>(IJ)V

    goto :goto_0

    .line 139
    :cond_5
    const-string v1, "LineNumberTable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    new-instance v1, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 143
    :cond_6
    const-string v1, "SourceFile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    new-instance v1, Lcom/vladium/jcd/cls/attribute/SourceFileAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/SourceFileAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 150
    :cond_7
    new-instance v1, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;-><init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/attribute/Attribute_info;->m_name_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public abstract length()J
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lcom/vladium/jcd/cls/attribute/Attribute_info;->m_name_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 177
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU4(J)V

    .line 178
    return-void
.end method
