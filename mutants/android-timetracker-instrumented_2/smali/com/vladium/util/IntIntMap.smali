.class public final Lcom/vladium/util/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IntIntMap$Entry;
    }
.end annotation


# static fields
.field private static final EOL:Ljava/lang/String;


# instance fields
.field private m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

.field private final m_loadFactor:F

.field private m_size:I

.field private m_sizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/IntIntMap;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/vladium/util/IntIntMap;-><init>(IF)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/vladium/util/IntIntMap;-><init>(IF)V

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
    iput v0, p0, Lcom/vladium/util/IntIntMap;->m_loadFactor:F

    .line 60
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntIntMap;->m_sizeThreshold:I

    .line 61
    new-array v0, p1, [Lcom/vladium/util/IntIntMap$Entry;

    iput-object v0, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

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
    .line 290
    iget-object v3, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 292
    iget-object v0, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 293
    new-array v5, v4, [Lcom/vladium/util/IntIntMap$Entry;

    .line 296
    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 298
    aget-object v1, v3, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 300
    iget-object v2, v1, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    .line 301
    iget v6, v1, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 304
    rem-int/2addr v6, v4

    .line 306
    aget-object v7, v5, v6

    .line 307
    iput-object v7, v1, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    .line 308
    aput-object v1, v5, v6

    move-object v1, v2

    .line 311
    goto :goto_1

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    int-to-float v0, v4

    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntIntMap;->m_sizeThreshold:I

    .line 316
    iput-object v5, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 317
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

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
    iget v1, v0, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_1
    return v0

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method debugDump(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 252
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/vladium/util/IntIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket table size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_loadFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_sizeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_0
    return-void
.end method

.method public get(I[I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 112
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 115
    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 117
    iget v2, v1, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    if-ne p1, v2, :cond_1

    .line 119
    iget v1, v1, Lcom/vladium/util/IntIntMap$Entry;->m_value:I

    aput v1, p2, v0

    .line 120
    const/4 v0, 0x1

    .line 124
    :cond_0
    return v0

    .line 115
    :cond_1
    iget-object v1, v1, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    goto :goto_0
.end method

.method public get(I[II)Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 131
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 134
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget v1, v0, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    if-ne p1, v1, :cond_0

    .line 138
    iget v0, v0, Lcom/vladium/util/IntIntMap$Entry;->m_value:I

    aput v0, p2, p3

    .line 139
    const/4 v0, 0x1

    .line 143
    :goto_1
    return v0

    .line 134
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public keys()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    new-array v4, v1, [I

    move v1, v0

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 155
    add-int/lit8 v3, v1, 0x1

    iget v5, v2, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    aput v5, v4, v1

    .line 153
    iget-object v1, v2, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    move-object v2, v1

    move v1, v3

    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-object v4
.end method

.method public put(II)V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 170
    const/4 v1, 0x0

    .line 175
    and-int v0, p1, v3

    iget-object v2, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 178
    iget-object v2, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 179
    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 181
    iget v2, v0, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    if-ne p1, v2, :cond_0

    .line 188
    :goto_1
    if-eqz v0, :cond_1

    .line 192
    iput p2, v0, Lcom/vladium/util/IntIntMap$Entry;->m_value:I

    .line 208
    :goto_2
    return-void

    .line 179
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    goto :goto_0

    .line 198
    :cond_1
    iget v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    iget v1, p0, Lcom/vladium/util/IntIntMap;->m_sizeThreshold:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/vladium/util/IntIntMap;->rehash()V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 201
    and-int v1, p1, v3

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 202
    aget-object v2, v0, v1

    .line 203
    new-instance v3, Lcom/vladium/util/IntIntMap$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/vladium/util/IntIntMap$Entry;-><init>(IILcom/vladium/util/IntIntMap$Entry;)V

    .line 204
    aput-object v3, v0, v1

    .line 206
    iget v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public remove(I)V
    .locals 6

    .prologue
    .line 218
    const v0, 0x7fffffff

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    array-length v1, v1

    rem-int v3, v0, v1

    .line 221
    iget-object v4, p0, Lcom/vladium/util/IntIntMap;->m_buckets:[Lcom/vladium/util/IntIntMap$Entry;

    .line 222
    aget-object v0, v4, v3

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 224
    iget-object v2, v1, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    .line 226
    iget v5, v1, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    if-ne p1, v5, :cond_2

    .line 228
    if-ne v0, v1, :cond_1

    .line 229
    aput-object v2, v4, v3

    .line 233
    :goto_1
    iget v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    .line 240
    :cond_0
    return-void

    .line 231
    :cond_1
    iput-object v2, v0, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v1, v2

    .line 239
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vladium/util/IntIntMap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/vladium/util/IntIntMap;->debugDump(Ljava/lang/StringBuffer;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
