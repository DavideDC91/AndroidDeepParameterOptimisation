.class public final Lcom/vladium/emma/data/MethodDescriptor;
.super Ljava/lang/Object;
.source "MethodDescriptor.java"

# interfaces
.implements Lcom/vladium/util/IConstants;
.implements Lcom/vladium/emma/data/IMetadataConstants;
.implements Ljava/io/Serializable;


# instance fields
.field private final m_blockMap:[[I

.field private final m_blockSizes:[I

.field private final m_descriptor:Ljava/lang/String;

.field private final m_firstLine:I

.field private m_lineMap:Lcom/vladium/util/IntObjectMap;

.field private final m_name:Ljava/lang/String;

.field private final m_status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_5

    .line 46
    array-length v1, p4

    .line 49
    iput-object p4, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    .line 51
    and-int/lit8 v1, p3, 0xf

    if-nez v1, :cond_4

    .line 57
    if-eqz p5, :cond_2

    array-length v0, p5

    if-nez v0, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty input: blockMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    iput-object p5, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    .line 72
    iput p6, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_firstLine:I

    .line 87
    :goto_0
    iput-object p1, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_descriptor:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    .line 90
    return-void

    .line 76
    :cond_4
    check-cast v0, [[I

    iput-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    .line 77
    iput v2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_firstLine:I

    goto :goto_0

    .line 82
    :cond_5
    iput-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    .line 83
    check-cast v0, [[I

    iput-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    .line 84
    iput v2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_firstLine:I

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/MethodDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 243
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    move-object v0, v4

    .line 249
    check-cast v0, [[I

    .line 252
    and-int/lit8 v5, v3, 0xe

    if-nez v5, :cond_1

    .line 256
    invoke-static {p0}, Lcom/vladium/emma/data/DataFactory;->readIntArray(Ljava/io/DataInput;)[I

    move-result-object v4

    .line 258
    and-int/lit8 v5, v3, 0xf

    if-nez v5, :cond_1

    .line 262
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 263
    new-array v0, v5, [[I

    .line 265
    :goto_0
    if-ge v6, v5, :cond_0

    .line 267
    invoke-static {p0}, Lcom/vladium/emma/data/DataFactory;->readIntArray(Ljava/io/DataInput;)[I

    move-result-object v7

    aput-object v7, v0, v6

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    move-object v5, v0

    .line 276
    :goto_1
    new-instance v0, Lcom/vladium/emma/data/MethodDescriptor;

    invoke-direct/range {v0 .. v6}, Lcom/vladium/emma/data/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V

    return-object v0

    :cond_1
    move-object v5, v0

    goto :goto_1
.end method

.method static writeExternal(Lcom/vladium/emma/data/MethodDescriptor;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_descriptor:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    .line 286
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 288
    and-int/lit8 v1, v0, 0xe

    if-nez v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    invoke-static {v1, p1}, Lcom/vladium/emma/data/DataFactory;->writeIntArray([ILjava/io/DataOutput;)V

    .line 294
    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    .line 299
    array-length v2, v1

    .line 300
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 302
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 304
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Lcom/vladium/emma/data/DataFactory;->writeIntArray([ILjava/io/DataOutput;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_firstLine:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public getBlockCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    array-length v0, v0

    return v0
.end method

.method public getBlockMap()[[I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    return-object v0
.end method

.method public getBlockSizes()[I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstLine()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_firstLine:I

    return v0
.end method

.method public getLineMap()Lcom/vladium/util/IntObjectMap;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_lineMap:Lcom/vladium/util/IntObjectMap;

    .line 126
    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_5

    .line 132
    new-instance v1, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v1}, Lcom/vladium/util/IntObjectMap;-><init>()V

    .line 133
    iget-object v5, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    .line 135
    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    .line 137
    aget-object v7, v5, v4

    .line 138
    if-eqz v7, :cond_2

    .line 140
    array-length v8, v7

    move v3, v2

    .line 142
    :goto_2
    if-ge v3, v8, :cond_2

    .line 144
    aget v9, v7, v3

    .line 145
    invoke-virtual {v1, v9}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/IntSet;

    .line 147
    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/vladium/util/IntSet;

    invoke-direct {v0}, Lcom/vladium/util/IntSet;-><init>()V

    .line 150
    invoke-virtual {v1, v9, v0}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    invoke-virtual {v0, v4}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 142
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 135
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v1}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v3

    .line 159
    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_4

    .line 161
    aget v5, v3, v2

    .line 162
    invoke-virtual {v1, v5}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/IntSet;

    invoke-virtual {v0}, Lcom/vladium/util/IntSet;->values()[I

    move-result-object v0

    .line 165
    invoke-virtual {v1, v5, v0}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 168
    :cond_4
    iput-object v1, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_lineMap:Lcom/vladium/util/IntObjectMap;

    move-object v0, v1

    .line 170
    goto :goto_0

    .line 173
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    return v0
.end method

.method public hasLineNumberInfo()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/vladium/emma/data/MethodDescriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 194
    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "method ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] descriptor:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_status:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_5

    move v0, v1

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 200
    sget-object v2, Lcom/vladium/emma/data/MethodDescriptor;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockSizes:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instrs) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v2, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_blockMap:[[I

    aget-object v3, v2, v0

    move v2, v1

    .line 204
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 206
    if-eqz v2, :cond_0

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_0
    aget v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lcom/vladium/emma/data/MethodDescriptor;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_lineMap:Lcom/vladium/util/IntObjectMap;

    invoke-virtual {v0}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v5

    move v2, v1

    .line 214
    :goto_2
    array-length v0, v5

    if-ge v2, v0, :cond_6

    .line 216
    sget-object v0, Lcom/vladium/emma/data/MethodDescriptor;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v5, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v0, p0, Lcom/vladium/emma/data/MethodDescriptor;->m_lineMap:Lcom/vladium/util/IntObjectMap;

    aget v3, v5, v2

    invoke-virtual {v0, v3}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    move v3, v1

    .line 220
    :goto_3
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 222
    if-eqz v3, :cond_3

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_3
    aget v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 214
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 229
    :cond_5
    const-string v0, " <no line info>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
