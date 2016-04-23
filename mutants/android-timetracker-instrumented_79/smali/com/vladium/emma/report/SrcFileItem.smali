.class public final Lcom/vladium/emma/report/SrcFileItem;
.super Lcom/vladium/emma/report/Item;
.source "SrcFileItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;
    }
.end annotation


# static fields
.field private static final METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;


# instance fields
.field private m_firstLine:I

.field private final m_fullVMName:Ljava/lang/String;

.field private m_lineCoverage:Lcom/vladium/util/IntObjectMap;

.field private final m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 294
    new-instance v0, Lcom/vladium/emma/report/Item$ItemMetadata;

    const/4 v1, 0x2

    const-string v2, "srcfile"

    const-wide/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/vladium/emma/report/Item$ItemMetadata;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/vladium/emma/report/SrcFileItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    .line 300
    return-void
.end method

.method public constructor <init>(Lcom/vladium/emma/report/IItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/Item;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 50
    iput-object p2, p0, Lcom/vladium/emma/report/SrcFileItem;->m_name:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/vladium/emma/report/SrcFileItem;->m_fullVMName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/vladium/emma/report/SrcFileItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 266
    invoke-interface {p1, p0, p2}, Lcom/vladium/emma/report/IItemVisitor;->visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public getAggregate(I)I
    .locals 21

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vladium/emma/report/SrcFileItem;->m_aggregates:[I

    .line 94
    aget v1, v8, p1

    .line 96
    if-gez v1, :cond_0

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 256
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/vladium/emma/report/Item;->getAggregate(I)I

    move-result v1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 103
    :pswitch_1
    const/16 v1, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/vladium/emma/report/SrcFileItem;->getChildCount()I

    move-result v2

    aput v2, v8, v1

    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/emma/report/SrcFileItem;->getChildren()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/IItem;

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v1, 0x5

    aput v2, v8, v1

    .line 116
    aget v1, v8, p1

    goto :goto_0

    .line 123
    :pswitch_2
    const/16 v2, 0xc

    const/4 v1, 0x1

    aput v1, v8, v2

    goto :goto_0

    .line 138
    :pswitch_3
    new-instance v9, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v9}, Lcom/vladium/util/IntObjectMap;-><init>()V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/emma/report/SrcFileItem;->getChildren()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 142
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/ClassItem;

    .line 144
    invoke-virtual {v1}, Lcom/vladium/emma/report/ClassItem;->getCoverage()[[Z

    move-result-object v10

    .line 145
    invoke-virtual {v1}, Lcom/vladium/emma/report/ClassItem;->getClassDescriptor()Lcom/vladium/emma/data/ClassDescriptor;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->getMethods()[Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v11

    .line 148
    invoke-virtual {v1}, Lcom/vladium/emma/report/ClassItem;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/MethodItem;

    .line 151
    invoke-virtual {v1}, Lcom/vladium/emma/report/MethodItem;->getID()I

    move-result v3

    .line 153
    if-nez v10, :cond_6

    const/4 v1, 0x0

    move-object v2, v1

    .line 155
    :goto_2
    aget-object v1, v11, v3

    .line 156
    invoke-virtual {v1}, Lcom/vladium/emma/data/MethodDescriptor;->getBlockSizes()[I

    move-result-object v13

    .line 157
    invoke-virtual {v1}, Lcom/vladium/emma/data/MethodDescriptor;->getLineMap()Lcom/vladium/util/IntObjectMap;

    move-result-object v14

    .line 160
    invoke-virtual {v14}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v15

    .line 161
    const/4 v1, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v6, v1

    :goto_3
    move/from16 v0, v16

    if-ge v6, v0, :cond_3

    .line 163
    aget v4, v15, v6

    .line 165
    invoke-virtual {v9, v4}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 166
    if-nez v1, :cond_4

    .line 168
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 169
    invoke-virtual {v9, v4, v1}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v3, v1

    .line 172
    invoke-virtual {v14, v4}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 174
    array-length v0, v1

    move/from16 v17, v0

    .line 175
    const/4 v4, 0x0

    aget v5, v3, v4

    add-int v5, v5, v17

    aput v5, v3, v4

    .line 177
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_8

    .line 179
    aget v18, v1, v5

    .line 181
    if-eqz v2, :cond_7

    aget-boolean v4, v2, v18

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 182
    :goto_5
    aget v18, v13, v18

    .line 184
    const/16 v19, 0x1

    aget v20, v3, v19

    add-int v20, v20, v18

    aput v20, v3, v19

    .line 185
    if-eqz v4, :cond_5

    .line 187
    const/4 v4, 0x2

    aget v19, v3, v4

    add-int/lit8 v19, v19, 0x1

    aput v19, v3, v4

    .line 188
    const/4 v4, 0x3

    aget v19, v3, v4

    add-int v18, v18, v19

    aput v18, v3, v4

    .line 177
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 153
    :cond_6
    aget-object v1, v10, v3

    move-object v2, v1

    goto :goto_2

    .line 181
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 161
    :cond_8
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    .line 195
    :cond_9
    invoke-virtual {v9}, Lcom/vladium/util/IntObjectMap;->size()I

    move-result v10

    .line 197
    const/4 v1, 0x7

    aput v10, v8, v1

    .line 199
    const/4 v3, 0x0

    .line 200
    const/4 v2, 0x0

    .line 202
    new-instance v11, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v11, v10}, Lcom/vladium/util/IntObjectMap;-><init>(I)V

    .line 203
    const v6, 0x7fffffff

    .line 205
    invoke-virtual {v9}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v12

    .line 207
    const/4 v1, 0x0

    move v7, v1

    :goto_6
    if-ge v7, v10, :cond_d

    .line 209
    aget v5, v12, v7

    .line 210
    invoke-virtual {v9, v5}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 212
    const/4 v4, 0x0

    aget v13, v1, v4

    .line 213
    const/4 v4, 0x1

    aget v14, v1, v4

    .line 214
    const/4 v4, 0x2

    aget v15, v1, v4

    .line 215
    const/4 v4, 0x3

    aget v16, v1, v4

    .line 217
    if-lez v16, :cond_a

    .line 219
    mul-int/lit8 v1, v15, 0x64

    div-int/2addr v1, v13

    add-int/2addr v3, v1

    .line 220
    mul-int/lit8 v1, v16, 0x64

    div-int/2addr v1, v14

    add-int/2addr v1, v2

    move v2, v1

    .line 226
    :cond_a
    const/4 v1, 0x0

    check-cast v1, [[I

    .line 228
    if-nez v16, :cond_b

    .line 229
    const/4 v4, 0x0

    .line 238
    :goto_7
    new-instance v13, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v1}, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;-><init>(Lcom/vladium/emma/report/SrcFileItem;I[[I)V

    invoke-virtual {v11, v5, v13}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    if-ge v5, v6, :cond_e

    move v1, v5

    .line 207
    :goto_8
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v1

    goto :goto_6

    .line 230
    :cond_b
    move/from16 v0, v16

    if-ne v0, v14, :cond_c

    .line 231
    const/4 v4, 0x2

    goto :goto_7

    .line 234
    :cond_c
    const/4 v4, 0x1

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [[I

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v13, v18, v19

    const/4 v13, 0x1

    aput v15, v18, v13

    aput-object v18, v1, v17

    const/4 v13, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v17, 0x0

    aput v14, v15, v17

    const/4 v14, 0x1

    aput v16, v15, v14

    aput-object v15, v1, v13

    goto :goto_7

    .line 245
    :cond_d
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vladium/emma/report/SrcFileItem;->m_lineCoverage:Lcom/vladium/util/IntObjectMap;

    .line 246
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vladium/emma/report/SrcFileItem;->m_firstLine:I

    .line 248
    const/4 v1, 0x1

    aput v3, v8, v1

    .line 249
    const/4 v1, 0x3

    aput v2, v8, v1

    .line 251
    aget v1, v8, p1

    goto/16 :goto_0

    :cond_e
    move v1, v6

    goto :goto_8

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFirstLine()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_firstLine:I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/SrcFileItem;->getAggregate(I)I

    .line 73
    :cond_0
    iget v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_firstLine:I

    return v0
.end method

.method public getFullVMName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_fullVMName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCoverage()Lcom/vladium/util/IntObjectMap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_lineCoverage:Lcom/vladium/util/IntObjectMap;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/SrcFileItem;->getAggregate(I)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_lineCoverage:Lcom/vladium/util/IntObjectMap;

    return-object v0
.end method

.method public final getMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/vladium/emma/report/SrcFileItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vladium/emma/report/SrcFileItem;->m_name:Ljava/lang/String;

    return-object v0
.end method
