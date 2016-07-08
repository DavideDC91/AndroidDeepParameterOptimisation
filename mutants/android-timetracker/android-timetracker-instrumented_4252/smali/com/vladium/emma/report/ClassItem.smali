.class public final Lcom/vladium/emma/report/ClassItem;
.super Lcom/vladium/emma/report/Item;
.source "ClassItem.java"


# static fields
.field private static final METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;


# instance fields
.field final m_cls:Lcom/vladium/emma/data/ClassDescriptor;

.field final m_coverage:[[Z

.field private m_firstLine:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 237
    new-instance v0, Lcom/vladium/emma/report/Item$ItemMetadata;

    const/4 v1, 0x3

    const-string v2, "class"

    const-wide/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/vladium/emma/report/Item$ItemMetadata;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/vladium/emma/report/ClassItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/data/ClassDescriptor;[[Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/Item;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 31
    iput-object p2, p0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    .line 32
    iput-object p3, p0, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    .line 33
    return-void
.end method

.method public static getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/vladium/emma/report/ClassItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    invoke-interface {p1, p0, p2}, Lcom/vladium/emma/report/IItemVisitor;->visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public getAggregate(I)I
    .locals 20

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vladium/emma/report/ClassItem;->m_aggregates:[I

    .line 88
    aget v1, v7, p1

    .line 90
    if-gez v1, :cond_0

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 198
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/vladium/emma/report/Item;->getAggregate(I)I

    move-result v1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 97
    :pswitch_1
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput v2, v7, v1

    .line 98
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    aput v1, v7, v2

    .line 100
    aget v1, v7, p1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 115
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    .line 117
    new-instance v9, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v9}, Lcom/vladium/util/IntObjectMap;-><init>()V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    invoke-virtual {v1}, Lcom/vladium/emma/data/ClassDescriptor;->getMethods()[Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v10

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/emma/report/ClassItem;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/MethodItem;

    .line 123
    invoke-virtual {v1}, Lcom/vladium/emma/report/MethodItem;->getID()I

    move-result v3

    .line 125
    if-nez v8, :cond_5

    const/4 v1, 0x0

    move-object v2, v1

    .line 127
    :goto_2
    aget-object v1, v10, v3

    .line 128
    invoke-virtual {v1}, Lcom/vladium/emma/data/MethodDescriptor;->getBlockSizes()[I

    move-result-object v12

    .line 129
    invoke-virtual {v1}, Lcom/vladium/emma/data/MethodDescriptor;->getLineMap()Lcom/vladium/util/IntObjectMap;

    move-result-object v13

    .line 133
    invoke-virtual {v13}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v14

    .line 134
    const/4 v1, 0x0

    array-length v15, v14

    move v6, v1

    :goto_3
    if-ge v6, v15, :cond_2

    .line 136
    aget v4, v14, v6

    .line 138
    invoke-virtual {v9, v4}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 139
    if-nez v1, :cond_3

    .line 141
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 142
    invoke-virtual {v9, v4, v1}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v3, v1

    .line 145
    invoke-virtual {v13, v4}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 147
    array-length v0, v1

    move/from16 v16, v0

    .line 148
    const/4 v4, 0x0

    aget v5, v3, v4

    add-int v5, v5, v16

    aput v5, v3, v4

    .line 150
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    move/from16 v0, v16

    if-ge v5, v0, :cond_7

    .line 152
    aget v17, v1, v5

    .line 154
    if-eqz v2, :cond_6

    aget-boolean v4, v2, v17

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    .line 155
    :goto_5
    aget v17, v12, v17

    .line 157
    const/16 v18, 0x1

    aget v19, v3, v18

    add-int v19, v19, v17

    aput v19, v3, v18

    .line 158
    if-eqz v4, :cond_4

    .line 160
    const/4 v4, 0x2

    aget v18, v3, v4

    add-int/lit8 v18, v18, 0x1

    aput v18, v3, v4

    .line 161
    const/4 v4, 0x3

    aget v18, v3, v4

    add-int v17, v17, v18

    aput v17, v3, v4

    .line 150
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 125
    :cond_5
    aget-object v1, v8, v3

    move-object v2, v1

    goto :goto_2

    .line 154
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 134
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    .line 167
    :cond_8
    const/4 v1, 0x7

    invoke-virtual {v9}, Lcom/vladium/util/IntObjectMap;->size()I

    move-result v2

    aput v2, v7, v1

    .line 169
    const/4 v3, 0x0

    .line 170
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v9}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v5

    .line 173
    const/4 v1, 0x0

    array-length v6, v5

    move v4, v1

    :goto_6
    if-ge v4, v6, :cond_9

    .line 175
    aget v1, v5, v4

    .line 176
    invoke-virtual {v9, v1}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 178
    const/4 v8, 0x0

    aget v8, v1, v8

    .line 179
    const/4 v10, 0x1

    aget v10, v1, v10

    .line 180
    const/4 v11, 0x2

    aget v11, v1, v11

    .line 181
    const/4 v12, 0x3

    aget v1, v1, v12

    .line 183
    if-lez v1, :cond_a

    .line 185
    mul-int/lit8 v11, v11, 0x64

    div-int v8, v11, v8

    add-int/2addr v3, v8

    .line 186
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v10

    add-int/2addr v1, v2

    move v2, v3

    .line 173
    :goto_7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_6

    .line 190
    :cond_9
    const/4 v1, 0x1

    aput v3, v7, v1

    .line 191
    const/4 v1, 0x3

    aput v2, v7, v1

    .line 193
    aget v1, v7, p1

    goto/16 :goto_0

    :cond_a
    move v1, v2

    move v2, v3

    goto :goto_7

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getClassDescriptor()Lcom/vladium/emma/data/ClassDescriptor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    return-object v0
.end method

.method public getCoverage()[[Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    return-object v0
.end method

.method public getFirstLine()I
    .locals 5

    .prologue
    .line 50
    iget v0, p0, Lcom/vladium/emma/report/ClassItem;->m_firstLine:I

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getMethods()[Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v3

    .line 54
    const v1, 0x7fffffff

    .line 55
    const/4 v0, 0x0

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 57
    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/vladium/emma/data/MethodDescriptor;->getFirstLine()I

    move-result v0

    .line 58
    if-lez v0, :cond_2

    if-ge v0, v1, :cond_2

    .line 55
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_0
    iput v1, p0, Lcom/vladium/emma/report/ClassItem;->m_firstLine:I

    .line 66
    :goto_2
    return v1

    :cond_1
    iget v1, p0, Lcom/vladium/emma/report/ClassItem;->m_firstLine:I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final getMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/vladium/emma/report/ClassItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrcFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getSrcFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loaded()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
