.class public final Lcom/vladium/util/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IntSet$Entry;
    }
.end annotation


# static fields
.field private static final EOL:Ljava/lang/String;


# instance fields
.field private m_buckets:[Lcom/vladium/util/IntSet$Entry;

.field private final m_loadFactor:F

.field private m_size:I

.field private m_sizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/IntSet;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/vladium/util/IntSet;-><init>(IF)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 40
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/vladium/util/IntSet;-><init>(IF)V

    .line 41
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
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

    .line 52
    :cond_0
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    float-to-double v0, p2

    const-wide v2, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 53
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

    .line 55
    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 57
    :cond_3
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/vladium/util/IntSet;->m_loadFactor:F

    .line 58
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntSet;->m_sizeThreshold:I

    .line 59
    new-array v0, p1, [Lcom/vladium/util/IntSet$Entry;

    iput-object v0, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 60
    return-void

    :cond_4
    move v0, p2

    .line 57
    goto :goto_0
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 220
    iget-object v3, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 222
    iget-object v0, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 223
    new-array v5, v4, [Lcom/vladium/util/IntSet$Entry;

    .line 226
    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 228
    aget-object v1, v3, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 230
    iget-object v2, v1, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    .line 231
    iget v6, v1, Lcom/vladium/util/IntSet$Entry;->m_key:I

    .line 234
    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v4

    .line 236
    aget-object v7, v5, v6

    .line 237
    iput-object v7, v1, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    .line 238
    aput-object v1, v5, v6

    move-object v1, v2

    .line 241
    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    int-to-float v0, v4

    iget v1, p0, Lcom/vladium/util/IntSet;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/IntSet;->m_sizeThreshold:I

    .line 246
    iput-object v5, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 247
    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 137
    const/4 v1, 0x0

    .line 142
    and-int v0, p1, v3

    iget-object v2, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 146
    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 148
    iget v2, v0, Lcom/vladium/util/IntSet$Entry;->m_key:I

    if-ne p1, v2, :cond_1

    .line 155
    :goto_1
    if-nez v0, :cond_2

    .line 159
    iget v0, p0, Lcom/vladium/util/IntSet;->m_size:I

    iget v1, p0, Lcom/vladium/util/IntSet;->m_sizeThreshold:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vladium/util/IntSet;->rehash()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 162
    and-int v1, p1, v3

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 163
    aget-object v2, v0, v1

    .line 164
    new-instance v3, Lcom/vladium/util/IntSet$Entry;

    invoke-direct {v3, p1, v2}, Lcom/vladium/util/IntSet$Entry;-><init>(ILcom/vladium/util/IntSet$Entry;)V

    .line 165
    aput-object v3, v0, v1

    .line 167
    iget v0, p0, Lcom/vladium/util/IntSet;->m_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/IntSet;->m_size:I

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_2
    return v0

    .line 146
    :cond_1
    iget-object v0, v0, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public contains(I)Z
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    .line 86
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 89
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    iget v1, v0, Lcom/vladium/util/IntSet$Entry;->m_key:I

    if-ne p1, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_1
    return v0

    .line 89
    :cond_0
    iget-object v0, v0, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method debugDump(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 184
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/vladium/util/IntSet;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntSet;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket table size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntSet;->m_loadFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntSet;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/IntSet;->m_sizeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/IntSet;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vladium/util/IntSet;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/vladium/util/IntSet;->debugDump(Ljava/lang/StringBuffer;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values([II)V
    .locals 4

    .prologue
    .line 121
    iget v0, p0, Lcom/vladium/util/IntSet;->m_size:I

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 129
    add-int/lit8 v2, p2, 0x1

    iget v3, v1, Lcom/vladium/util/IntSet$Entry;->m_key:I

    aput v3, p1, p2

    .line 127
    iget-object v1, v1, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    move p2, v2

    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public values()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 100
    iget v1, p0, Lcom/vladium/util/IntSet;->m_size:I

    if-nez v1, :cond_0

    .line 101
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_INT_ARRAY:[I

    .line 115
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget v1, p0, Lcom/vladium/util/IntSet;->m_size:I

    new-array v2, v1, [I

    move v1, v0

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/vladium/util/IntSet;->m_buckets:[Lcom/vladium/util/IntSet$Entry;

    aget-object v3, v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 111
    add-int/lit8 v4, v1, 0x1

    iget v5, v3, Lcom/vladium/util/IntSet$Entry;->m_key:I

    aput v5, v2, v1

    .line 109
    iget-object v1, v3, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    move-object v3, v1

    move v1, v4

    goto :goto_2

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 115
    goto :goto_0
.end method
