.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.source "CONSTANT_NameAndType_info.java"


# static fields
.field public static final TAG:B = 0xct


# instance fields
.field public m_descriptor_index:I

.field public m_name_index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 47
    iput p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_name_index:I

    .line 48
    iput p2, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_descriptor_index:I

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 95
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_name_index:I

    .line 96
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_descriptor_index:I

    .line 97
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_descriptor_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_name_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xc

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONSTANT_NameAndType: [name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptor_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_descriptor_index:I

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
    .line 84
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 86
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_name_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 87
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;->m_descriptor_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 88
    return-void
.end method
