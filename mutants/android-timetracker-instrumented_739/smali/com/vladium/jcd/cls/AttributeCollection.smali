.class final Lcom/vladium/jcd/cls/AttributeCollection;
.super Ljava/lang/Object;
.source "AttributeCollection.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IAttributeCollection;


# static fields
.field private static final DISALLOW_MULTIPLE_SYNTHETIC_ATTRIBUTES:Z


# instance fields
.field private m_attributes:Ljava/util/List;

.field private transient m_bridgeRefCount:I

.field private transient m_innerClassesAttributeOffset:I

.field private transient m_syntheticRefCount:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-gez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    .line 202
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/IClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IAttributeCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    instance-of v0, p1, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    if-eqz v0, :cond_1

    .line 132
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    instance-of v0, p1, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    if-eqz v0, :cond_3

    .line 135
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    if-ltz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this attribute collection already has an InnerClasses attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    goto :goto_0

    .line 140
    :cond_3
    instance-of v0, p1, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/AttributeCollection;

    .line 86
    iget-object v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    .line 88
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 90
    iget-object v4, v0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    iget-object v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/Attribute_info;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    return-object v0
.end method

.method public final get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/Attribute_info;

    return-object v0
.end method

.method public final getInnerClassesAttribute()Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    .line 50
    if-gez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/AttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    goto :goto_0
.end method

.method public final hasBridge()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSynthetic()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()J
    .locals 6

    .prologue
    .line 65
    const-wide/16 v2, 0x2

    .line 67
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 68
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/AttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-wide v2
.end method

.method public remove(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/Attribute_info;

    .line 179
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    if-eqz v1, :cond_2

    .line 182
    const/4 v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    goto :goto_0

    .line 183
    :cond_2
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;

    if-eqz v1, :cond_0

    .line 184
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    goto :goto_0
.end method

.method public set(ILcom/vladium/jcd/cls/attribute/Attribute_info;)Lcom/vladium/jcd/cls/attribute/Attribute_info;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/Attribute_info;

    .line 154
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    if-eqz v1, :cond_2

    .line 155
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    .line 161
    :cond_0
    :goto_0
    instance-of v1, p2, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    if-eqz v1, :cond_4

    .line 162
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_syntheticRefCount:I

    .line 172
    :cond_1
    :goto_1
    return-object v0

    .line 156
    :cond_2
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    if-eqz v1, :cond_3

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    goto :goto_0

    .line 158
    :cond_3
    instance-of v1, v0, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;

    if-eqz v1, :cond_0

    .line 159
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    goto :goto_0

    .line 163
    :cond_4
    instance-of v1, p2, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    if-eqz v1, :cond_5

    .line 164
    iput p1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_innerClassesAttributeOffset:I

    goto :goto_1

    .line 165
    :cond_5
    instance-of v1, p2, Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;

    if-eqz v1, :cond_1

    .line 166
    iget v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_bridgeRefCount:I

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vladium/jcd/cls/AttributeCollection;->m_attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/AttributeCollection;->size()I

    move-result v1

    .line 106
    invoke-virtual {p1, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 108
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/AttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
