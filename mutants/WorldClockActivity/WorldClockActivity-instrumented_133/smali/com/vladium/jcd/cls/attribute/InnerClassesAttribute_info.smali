.class public final Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;
.super Lcom/vladium/jcd/cls/attribute/Attribute_info;
.source "InnerClassesAttribute_info.java"


# instance fields
.field private m_classes:Ljava/util/List;


# direct methods
.method constructor <init>(IJLcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;-><init>(IJ)V

    .line 147
    invoke-virtual {p4}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 152
    new-instance v3, Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    invoke-direct {v3, p4}, Lcom/vladium/jcd/cls/attribute/InnerClass_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iput-object v2, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    .line 156
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;->visit(Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 104
    invoke-super {p0}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    .line 106
    iget-object v3, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    .line 111
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 113
    iget-object v5, v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/attribute/InnerClass_info;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public final get(I)Lcom/vladium/jcd/cls/attribute/InnerClass_info;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    return-object v0
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public makesClassNested(I[I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    if-lez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->get(I)Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    move-result-object v3

    .line 39
    iget v4, v3, Lcom/vladium/jcd/cls/attribute/InnerClass_info;->m_inner_class_index:I

    if-ne v4, p1, :cond_1

    .line 41
    iget v1, v3, Lcom/vladium/jcd/cls/attribute/InnerClass_info;->m_inner_access_flags:I

    aput v1, p2, v0

    .line 42
    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerClassesAttribute_info: [attribute_name_index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_name_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", attribute_length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->get(I)Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 125
    iget-object v2, p0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->m_classes:Ljava/util/List;

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 128
    invoke-virtual {p1, v3}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/InnerClass_info;

    invoke-virtual {v0, p1}, Lcom/vladium/jcd/cls/attribute/InnerClass_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
