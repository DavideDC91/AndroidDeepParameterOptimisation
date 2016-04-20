.class public final Lcom/vladium/util/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/ObjectIntMap$Entry;
    }
.end annotation


# static fields
.field private static final EOL:Ljava/lang/String;


# instance fields
.field private m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

.field private final m_loadFactor:F

.field private m_size:I

.field private m_sizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/ObjectIntMap;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/vladium/util/ObjectIntMap;-><init>(IF)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/vladium/util/ObjectIntMap;-><init>(IF)V

    .line 45
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
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

    .line 56
    :cond_0
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    float-to-double v0, p2

    const-wide v2, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 57
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

    .line 59
    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 61
    :cond_3
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/vladium/util/ObjectIntMap;->m_loadFactor:F

    .line 62
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/ObjectIntMap;->m_sizeThreshold:I

    .line 63
    new-array v0, p1, [Lcom/vladium/util/ObjectIntMap$Entry;

    iput-object v0, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 64
    return-void

    :cond_4
    move v0, p2

    .line 61
    goto :goto_0
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 286
    iget-object v3, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 288
    iget-object v0, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 289
    new-array v5, v4, [Lcom/vladium/util/ObjectIntMap$Entry;

    .line 292
    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 294
    aget-object v1, v3, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 296
    iget-object v2, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    .line 297
    iget-object v6, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 300
    rem-int/2addr v6, v4

    .line 302
    aget-object v7, v5, v6

    .line 303
    iput-object v7, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    .line 304
    aput-object v1, v5, v6

    move-object v1, v2

    .line 307
    goto :goto_1

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    int-to-float v0, v4

    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/ObjectIntMap;->m_sizeThreshold:I

    .line 312
    iput-object v5, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 313
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 93
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 96
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 98
    iget-object v2, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_1
    return v0

    .line 96
    :cond_1
    iget-object v0, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method debugDump(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/vladium/util/ObjectIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket table size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_loadFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/ObjectIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_sizeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/ObjectIntMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;[I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 121
    const v3, 0x7fffffff

    and-int/2addr v3, v2

    array-length v4, v1

    rem-int/2addr v3, v4

    .line 124
    aget-object v1, v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 126
    iget-object v3, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    :cond_0
    iget v1, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_value:I

    aput v1, p2, v0

    .line 129
    const/4 v0, 0x1

    .line 133
    :cond_1
    return v0

    .line 124
    :cond_2
    iget-object v1, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    goto :goto_0
.end method

.method public keys()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    new-array v4, v1, [Ljava/lang/Object;

    move v1, v0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 145
    add-int/lit8 v3, v1, 0x1

    iget-object v5, v2, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 143
    iget-object v1, v2, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    move-object v2, v1

    move v1, v3

    goto :goto_1

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-object v4
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 162
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 168
    and-int v0, v2, v4

    iget-object v3, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 171
    iget-object v3, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 172
    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_4

    .line 174
    iget-object v3, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 185
    iput p2, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_value:I

    .line 201
    :goto_2
    return-void

    .line 172
    :cond_1
    iget-object v0, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    goto :goto_0

    .line 191
    :cond_2
    iget v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    iget v1, p0, Lcom/vladium/util/ObjectIntMap;->m_sizeThreshold:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/vladium/util/ObjectIntMap;->rehash()V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 194
    and-int v1, v2, v4

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 195
    aget-object v2, v0, v1

    .line 196
    new-instance v3, Lcom/vladium/util/ObjectIntMap$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/vladium/util/ObjectIntMap$Entry;-><init>(Ljava/lang/Object;ILcom/vladium/util/ObjectIntMap$Entry;)V

    .line 197
    aput-object v3, v0, v1

    .line 199
    iget v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 214
    const v0, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v1, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    array-length v1, v1

    rem-int v4, v0, v1

    .line 217
    iget-object v5, p0, Lcom/vladium/util/ObjectIntMap;->m_buckets:[Lcom/vladium/util/ObjectIntMap$Entry;

    .line 218
    aget-object v0, v5, v4

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 220
    iget-object v2, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    .line 222
    iget-object v6, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v3, v6, :cond_0

    iget-object v6, v1, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    :cond_0
    if-ne v0, v1, :cond_2

    .line 225
    aput-object v2, v5, v4

    .line 229
    :goto_1
    iget v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    .line 236
    :cond_1
    return-void

    .line 227
    :cond_2
    iput-object v2, v0, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    goto :goto_1

    :cond_3
    move-object v0, v1

    move-object v1, v2

    .line 235
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vladium/util/ObjectIntMap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Lcom/vladium/util/ObjectIntMap;->debugDump(Ljava/lang/StringBuffer;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
