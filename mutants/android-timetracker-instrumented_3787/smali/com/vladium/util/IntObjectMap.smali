.class public final Lcom/vladium/util/IntObjectMap;
.super Ljava/lang/Object;
.source "IntObjectMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IntObjectMap$Entry;
    }
.end annotation


# static fields
.field private static final EOL:Ljava/lang/String;


# instance fields
.field private m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

.field private final m_loadFactor:F

.field private m_size:I

.field private m_sizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/IntObjectMap;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/vladium/util/IntObjectMap;-><init>(IF)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/vladium/util/IntObjectMap;-><init>(IF)V

    .line 43
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative input: initialCapacity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    float-to-double v0, p2

    const-wide v2, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor not in (0.0, 1.0] range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 59
    :cond_3
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/vladium/util/IntObjectMap;->m_loadFactor:F

    .line 60
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntObjectMap;->m_sizeThreshold:I

    .line 61
    new-array v0, p1, [Lcom/vladium/util/IntObjectMap$Entry;

    iput-object v0, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 62
    return-void

    :cond_4
    move v0, p2

    .line 59
    goto :goto_0
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 248
    iget-object v3, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 250
    iget-object v0, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 251
    new-array v5, v4, [Lcom/vladium/util/IntObjectMap$Entry;

    .line 254
    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 256
    aget-object v1, v3, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    .line 259
    iget v6, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    .line 262
    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v4

    .line 264
    aget-object v7, v5, v6

    .line 265
    iput-object v7, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    .line 266
    aput-object v1, v5, v6

    move-object v1, v2

    .line 269
    goto :goto_1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    int-to-float v0, v4

    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntObjectMap;->m_sizeThreshold:I

    .line 274
    iput-object v5, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 275
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 88
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 91
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 93
    iget v1, v0, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    if-ne p1, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_1
    return v0

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method debugDump(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 210
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/vladium/util/IntObjectMap;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket table size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_loadFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntObjectMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_sizeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntObjectMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 113
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 116
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    iget v1, v0, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    if-ne p1, v1, :cond_0

    .line 119
    iget-object v0, v0, Lcom/vladium/util/IntObjectMap$Entry;->m_value:Ljava/lang/Object;

    .line 122
    :goto_1
    return-object v0

    .line 116
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public keys()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    if-nez v1, :cond_0

    .line 128
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_INT_ARRAY:[I

    .line 142
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    new-array v2, v1, [I

    move v1, v0

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    aget-object v3, v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 138
    add-int/lit8 v4, v1, 0x1

    iget v5, v3, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    aput v5, v2, v1

    .line 136
    iget-object v1, v3, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    move-object v3, v1

    move v1, v4

    goto :goto_2

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 142
    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v3, 0x7fffffff

    .line 161
    and-int v1, p1, v3

    iget-object v2, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 164
    iget-object v2, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 165
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_3

    .line 167
    iget v2, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    if-ne p1, v2, :cond_0

    .line 174
    :goto_1
    if-eqz v1, :cond_1

    .line 178
    iget-object v0, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_value:Ljava/lang/Object;

    .line 179
    iput-object p2, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_value:Ljava/lang/Object;

    .line 197
    :goto_2
    return-object v0

    .line 165
    :cond_0
    iget-object v1, v1, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    iget v2, p0, Lcom/vladium/util/IntObjectMap;->m_sizeThreshold:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/vladium/util/IntObjectMap;->rehash()V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/vladium/util/IntObjectMap;->m_buckets:[Lcom/vladium/util/IntObjectMap$Entry;

    .line 190
    and-int v2, p1, v3

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 191
    aget-object v3, v1, v2

    .line 192
    new-instance v4, Lcom/vladium/util/IntObjectMap$Entry;

    invoke-direct {v4, p1, p2, v3}, Lcom/vladium/util/IntObjectMap$Entry;-><init>(ILjava/lang/Object;Lcom/vladium/util/IntObjectMap$Entry;)V

    .line 193
    aput-object v4, v1, v2

    .line 195
    iget v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vladium/util/IntObjectMap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/vladium/util/IntObjectMap;->debugDump(Ljava/lang/StringBuffer;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
