.class public final Lcom/vladium/emma/report/MethodItem;
.super Lcom/vladium/emma/report/Item;
.source "MethodItem.java"


# static fields
.field private static final METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;


# instance fields
.field private final m_ID:I

.field private final m_descriptor:Ljava/lang/String;

.field private final m_firstLine:I

.field private final m_name:Ljava/lang/String;

.field private transient m_userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 210
    new-instance v0, Lcom/vladium/emma/report/Item$ItemMetadata;

    const/4 v1, 0x4

    const-string v2, "method"

    const-wide/16 v4, 0x1d

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/vladium/emma/report/Item$ItemMetadata;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/vladium/emma/report/MethodItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/vladium/emma/report/IItem;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/Item;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 30
    iput p2, p0, Lcom/vladium/emma/report/MethodItem;->m_ID:I

    .line 31
    iput-object p3, p0, Lcom/vladium/emma/report/MethodItem;->m_name:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/vladium/emma/report/MethodItem;->m_descriptor:Ljava/lang/String;

    .line 33
    iput p5, p0, Lcom/vladium/emma/report/MethodItem;->m_firstLine:I

    .line 34
    return-void
.end method

.method public static getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/vladium/emma/report/MethodItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    invoke-interface {p1, p0, p2}, Lcom/vladium/emma/report/IItemVisitor;->visit(Lcom/vladium/emma/report/MethodItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public getAggregate(I)I
    .locals 23

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vladium/emma/report/MethodItem;->m_aggregates:[I

    .line 60
    aget v1, v13, p1

    .line 62
    if-gez v1, :cond_9

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/report/MethodItem;->m_parent:Lcom/vladium/emma/report/IItem;

    check-cast v1, Lcom/vladium/emma/report/ClassItem;

    .line 66
    iget-object v2, v1, Lcom/vladium/emma/report/ClassItem;->m_cls:Lcom/vladium/emma/data/ClassDescriptor;

    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->getMethods()[Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/report/MethodItem;->m_ID:I

    aget-object v10, v2, v3

    .line 67
    invoke-virtual {v10}, Lcom/vladium/emma/data/MethodDescriptor;->getStatus()I

    move-result v2

    .line 69
    and-int/lit8 v3, v2, 0xe

    if-eqz v3, :cond_0

    .line 73
    const/4 v1, 0x0

    :goto_0
    array-length v2, v13

    if-ge v1, v2, :cond_8

    const/4 v2, 0x0

    aput v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 78
    :goto_1
    iget-object v3, v1, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/vladium/emma/report/ClassItem;->m_coverage:[[Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/report/MethodItem;->m_ID:I

    aget-object v1, v1, v3

    move-object v3, v1

    .line 80
    :goto_2
    invoke-virtual {v10}, Lcom/vladium/emma/data/MethodDescriptor;->getBlockCount()I

    move-result v11

    .line 82
    const/16 v1, 0xa

    const/4 v4, 0x1

    aput v4, v13, v1

    .line 83
    const/4 v1, 0x6

    aput v11, v13, v1

    .line 85
    const/4 v4, 0x0

    .line 87
    invoke-virtual {v10}, Lcom/vladium/emma/data/MethodDescriptor;->getBlockSizes()[I

    move-result-object v14

    .line 89
    if-eqz v3, :cond_b

    .line 91
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 92
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 94
    const/4 v1, 0x0

    move v12, v4

    move v4, v5

    move v5, v8

    move v8, v1

    :goto_3
    if-ge v8, v11, :cond_3

    .line 96
    aget v1, v14, v8

    .line 98
    add-int v9, v12, v1

    .line 99
    aget-boolean v12, v3, v8

    if-eqz v12, :cond_d

    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    add-int/2addr v1, v4

    move v4, v5

    .line 94
    :goto_4
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v12, v9

    move v5, v4

    move v4, v1

    goto :goto_3

    .line 77
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :cond_2
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_2

    .line 106
    :cond_3
    if-eqz v2, :cond_7

    .line 108
    invoke-virtual {v10}, Lcom/vladium/emma/data/MethodDescriptor;->getLineMap()Lcom/vladium/util/IntObjectMap;

    move-result-object v15

    .line 109
    invoke-virtual {v15}, Lcom/vladium/util/IntObjectMap;->size()I

    move-result v16

    .line 111
    const/4 v1, 0x7

    aput v16, v13, v1

    .line 113
    invoke-virtual {v15}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v17

    .line 114
    const/4 v1, 0x0

    move v9, v1

    move v10, v6

    move v11, v7

    :goto_5
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 116
    aget v1, v17, v9

    invoke-virtual {v15, v1}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 118
    const/4 v8, 0x0

    array-length v0, v1

    move/from16 v18, v0

    .line 119
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 121
    const/4 v2, 0x0

    move/from16 v21, v2

    move v2, v7

    move/from16 v7, v21

    move/from16 v22, v6

    move v6, v8

    move/from16 v8, v22

    :goto_6
    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 123
    aget v19, v1, v7

    .line 125
    aget v20, v14, v19

    .line 127
    add-int v8, v8, v20

    .line 128
    aget-boolean v19, v3, v19

    if-eqz v19, :cond_4

    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    add-int v2, v2, v20

    .line 121
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 135
    :cond_5
    mul-int/lit8 v1, v6, 0x64

    div-int v1, v1, v18

    add-int v6, v11, v1

    .line 136
    mul-int/lit8 v1, v2, 0x64

    div-int/2addr v1, v8

    add-int v2, v10, v1

    .line 114
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    move v11, v6

    goto :goto_5

    .line 139
    :cond_6
    const/4 v1, 0x1

    aput v11, v13, v1

    .line 140
    const/4 v1, 0x3

    aput v10, v13, v1

    .line 143
    :cond_7
    const/16 v1, 0x8

    aput v12, v13, v1

    .line 144
    const/4 v2, 0x4

    if-lez v5, :cond_a

    const/4 v1, 0x1

    :goto_7
    aput v1, v13, v2

    .line 145
    const/4 v1, 0x0

    aput v5, v13, v1

    .line 146
    const/4 v1, 0x2

    aput v4, v13, v1

    .line 173
    :cond_8
    :goto_8
    aget v1, v13, p1

    .line 176
    :cond_9
    return v1

    .line 144
    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 151
    :cond_b
    const/4 v1, 0x0

    move v3, v4

    :goto_9
    if-ge v1, v11, :cond_c

    .line 153
    aget v4, v14, v1

    add-int/2addr v3, v4

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 156
    :cond_c
    const/16 v1, 0x8

    aput v3, v13, v1

    .line 157
    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v13, v1

    .line 158
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v13, v1

    .line 159
    const/4 v1, 0x2

    const/4 v3, 0x0

    aput v3, v13, v1

    .line 161
    if-eqz v2, :cond_8

    .line 163
    invoke-virtual {v10}, Lcom/vladium/emma/data/MethodDescriptor;->getLineMap()Lcom/vladium/util/IntObjectMap;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/vladium/util/IntObjectMap;->size()I

    move-result v1

    .line 166
    const/4 v2, 0x7

    aput v1, v13, v2

    .line 167
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v13, v1

    .line 168
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v13, v1

    goto :goto_8

    :cond_d
    move v1, v4

    move v4, v5

    goto/16 :goto_4
.end method

.method public getFirstLine()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vladium/emma/report/MethodItem;->m_firstLine:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vladium/emma/report/MethodItem;->m_ID:I

    return v0
.end method

.method public final getMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/vladium/emma/report/MethodItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/vladium/emma/report/MethodItem;->m_userName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/vladium/emma/report/MethodItem;->m_parent:Lcom/vladium/emma/report/IItem;

    invoke-interface {v0}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/report/MethodItem;->m_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/vladium/emma/report/MethodItem;->m_descriptor:Ljava/lang/String;

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/vladium/util/Descriptors;->methodVMNameToJavaName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/MethodItem;->m_userName:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/MethodItem;->m_userName:Ljava/lang/String;

    return-object v0
.end method
