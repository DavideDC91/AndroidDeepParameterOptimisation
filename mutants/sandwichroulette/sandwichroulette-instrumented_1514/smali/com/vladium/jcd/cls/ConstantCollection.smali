.class final Lcom/vladium/jcd/cls/ConstantCollection;
.super Ljava/lang/Object;
.source "ConstantCollection.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IConstantCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;
    }
.end annotation


# instance fields
.field private transient m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

.field private m_constants:Ljava/util/List;

.field private m_size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    if-gez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    .line 197
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private getCONSTANT_Utf8_index()Lcom/vladium/util/ObjectIntMap;
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    if-nez v0, :cond_2

    .line 278
    new-instance v2, Lcom/vladium/util/ObjectIntMap;

    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    invoke-direct {v2, v0}, Lcom/vladium/util/ObjectIntMap;-><init>(I)V

    .line 280
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 284
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->tag()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 287
    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 280
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_1
    iput-object v2, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/IClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IConstantCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    .line 174
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 176
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 178
    iget v2, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    .line 179
    iget-object v2, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    check-cast p1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v2, p1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 186
    :cond_1
    return v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 91
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/ConstantCollection;

    .line 94
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    .line 96
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 98
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 99
    iget-object v4, v0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    return-object v0
.end method

.method public find(ILcom/vladium/jcd/cls/IConstantCollection$IConstantComparator;)I
    .locals 3

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 55
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->tag()B

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-interface {p2, v0}, Lcom/vladium/jcd/cls/IConstantCollection$IConstantComparator;->equals(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    add-int/lit8 v0, v1, 0x1

    .line 59
    :goto_1
    return v0

    .line 51
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findCONSTANT_Utf8(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/vladium/jcd/cls/ConstantCollection;->getCONSTANT_Utf8_index()Lcom/vladium/util/ObjectIntMap;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failure: dereferencing an invalid constant pool slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    return-object v0
.end method

.method public iterator()Lcom/vladium/jcd/cls/IConstantCollection$IConstantIterator;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;

    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public set(ILcom/vladium/jcd/cls/constant/CONSTANT_info;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
    .locals 5

    .prologue
    .line 138
    add-int/lit8 v2, p1, -0x1

    .line 139
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failure: dereferencing an invalid constant pool slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failure: can\'t set entry of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to an entry of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] at pool slot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    if-eqz v1, :cond_3

    .line 153
    instance-of v1, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 155
    check-cast v1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v1, v1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    .line 156
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 158
    iget-object v4, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v4, v1, v3}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, v2, :cond_2

    .line 159
    iget-object v3, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v3, v1}, Lcom/vladium/util/ObjectIntMap;->remove(Ljava/lang/Object;)V

    .line 163
    :cond_2
    instance-of v1, p2, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_CONSTANT_Utf8_index:Lcom/vladium/util/ObjectIntMap;

    check-cast p2, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    iget-object v3, p2, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 167
    :cond_3
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_size:I

    return v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 119
    new-instance v0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;

    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection;->m_constants:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;-><init>(Ljava/util/List;)V

    .line 120
    :goto_0
    invoke-virtual {v0}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->nextConstant()Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method
