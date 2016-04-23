.class public final Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "LineNumberTableAttribute_info.java"


# instance fields
.field private m_lines:Ljava/util/List;


# direct methods
.method constructor <init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 170
    invoke-virtual {p4}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    .line 173
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    new-instance v3, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    invoke-direct {v3, p4}, Lcom/vladium/jcd/cls/attribute/LineNumber_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 131
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;

    .line 134
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    .line 136
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 138
    iget-object v4, v0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method

.method public get(I)Lcom/vladium/jcd/cls/attribute/LineNumber_info;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LineNumberTableAttribute_info: [attribute_name_index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_name_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", attribute_length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->get(I)Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    .line 148
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 150
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 151
    invoke-virtual {p1, v2}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->m_lines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    invoke-virtual {v0, p1}, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
