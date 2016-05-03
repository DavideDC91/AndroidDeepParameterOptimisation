.class public final Lcom/vladium/util/SoftValueMap;
.super Ljava/lang/Object;
.source "SoftValueMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/SoftValueMap$SoftEntry;,
        Lcom/vladium/util/SoftValueMap$IndexedSoftReference;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENQUEUE_FOUND_CLEARED_ENTRIES:Z = true

.field private static final EOL:Ljava/lang/String;

.field private static final IDENTITY_OPTIMIZATION:Z = true


# instance fields
.field private m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

.field private final m_loadFactor:F

.field private m_readAccessCount:I

.field private final m_readClearCheckFrequency:I

.field private m_size:I

.field private m_sizeThreshold:I

.field private final m_valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field private m_writeAccessCount:I

.field private final m_writeClearCheckFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 609
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0, v0}, Lcom/vladium/util/SoftValueMap;-><init>(II)V

    .line 47
    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-gez p1, :cond_0

    .line 75
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

    .line 76
    :cond_0
    float-to-double v2, p2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1

    float-to-double v2, p2

    const-wide v4, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    .line 77
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

    .line 78
    :cond_2
    if-ge p3, v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readClearCheckFrequency not in [1, +inf) range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    if-ge p4, v0, :cond_4

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeClearCheckFrequency not in [1, +inf) range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    if-nez p1, :cond_5

    move p1, v0

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 87
    iput p2, p0, Lcom/vladium/util/SoftValueMap;->m_loadFactor:F

    .line 88
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_sizeThreshold:I

    .line 90
    iput p3, p0, Lcom/vladium/util/SoftValueMap;->m_readClearCheckFrequency:I

    .line 91
    iput p4, p0, Lcom/vladium/util/SoftValueMap;->m_writeClearCheckFrequency:I

    .line 93
    new-array v0, p1, [Lcom/vladium/util/SoftValueMap$SoftEntry;

    iput-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 94
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/vladium/util/SoftValueMap;-><init>(IFII)V

    .line 55
    return-void
.end method

.method private rehash()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v4, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 478
    iget-object v1, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 479
    new-array v6, v5, [Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 484
    array-length v7, v4

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v7, :cond_2

    .line 486
    aget-object v0, v4, v3

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_1
    if-eqz v1, :cond_1

    .line 488
    iget-object v2, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 490
    iget-object v8, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 492
    invoke-virtual {v8}, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 495
    if-eqz v9, :cond_0

    .line 500
    iget-object v9, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 501
    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int/2addr v9, v5

    .line 503
    aget-object v10, v6, v9

    .line 504
    iput-object v10, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 505
    aput-object v1, v6, v9

    .line 508
    iput v9, v8, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 510
    add-int/lit8 v0, v0, 0x1

    :goto_2
    move-object v1, v2

    .line 524
    goto :goto_1

    .line 520
    :cond_0
    const/4 v1, -0x1

    iput v1, v8, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    goto :goto_2

    .line 484
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 532
    :cond_2
    iput v1, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    .line 533
    int-to-float v0, v5

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_sizeThreshold:I

    .line 534
    iput-object v6, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 535
    return-void
.end method

.method private removeClearedValues()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 546
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, v1

    .line 551
    check-cast v0, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    iget v4, v0, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 553
    if-ltz v4, :cond_0

    .line 558
    iget-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    aget-object v3, v0, v4

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 560
    iget-object v5, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    if-ne v5, v1, :cond_2

    .line 562
    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    iget-object v1, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    aput-object v1, v0, v4

    .line 571
    :goto_2
    iput-object v2, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 572
    iput-object v2, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 573
    iput-object v2, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 576
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    goto :goto_0

    .line 568
    :cond_1
    iget-object v1, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    iput-object v1, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    goto :goto_2

    .line 558
    :cond_2
    iget-object v0, v3, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    .line 585
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeClearedValues(): soft reference ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] did not match within bucket #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0, v0}, Lcom/vladium/util/SoftValueMap;->debugDump(Ljava/lang/StringBuffer;)V

    .line 588
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 345
    iget-object v4, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 347
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    .line 349
    aget-object v0, v4, v2

    :goto_1
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 354
    iget-object v6, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    const/4 v7, -0x1

    iput v7, v6, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 357
    iput-object v8, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 358
    iput-object v8, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 359
    iput-object v8, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    move-object v0, v1

    .line 362
    goto :goto_1

    .line 364
    :cond_0
    aput-object v8, v4, v2

    .line 347
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 367
    :cond_1
    iput v3, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    .line 368
    iput v3, p0, Lcom/vladium/util/SoftValueMap;->m_readAccessCount:I

    .line 369
    iput v3, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    .line 370
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: containsKey"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: containsValue"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method debugDump(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket table size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_loadFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_sizeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", get clear frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_readClearCheckFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", put clear frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_writeClearCheckFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_readAccessCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", put count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vladium/util/SoftValueMap;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_0
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: entrySet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: equals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 157
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_readAccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_readAccessCount:I

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_readClearCheckFrequency:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vladium/util/SoftValueMap;->removeClearedValues()V

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 163
    iget-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 164
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 169
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 171
    iget-object v2, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 177
    if-eq p1, v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    :cond_2
    iget-object v1, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 180
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 183
    if-nez v0, :cond_3

    .line 185
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->enqueue()Z

    .line 209
    :cond_3
    :goto_1
    return-object v0

    .line 169
    :cond_4
    iget-object v0, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    goto :goto_0

    .line 209
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: hashCode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: keySet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const v5, 0x7fffffff

    .line 223
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_writeClearCheckFrequency:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/vladium/util/SoftValueMap;->removeClearedValues()V

    .line 233
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 234
    iget-object v0, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 235
    and-int v1, v2, v5

    array-length v3, v0

    rem-int v3, v1, v3

    .line 238
    aget-object v0, v0, v3

    :goto_0
    if-eqz v0, :cond_8

    .line 240
    iget-object v1, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 246
    if-eq p1, v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move-object v1, v0

    .line 262
    :goto_1
    if-eqz v1, :cond_6

    .line 266
    iget-object v2, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 267
    invoke-virtual {v2}, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 269
    if-nez v0, :cond_4

    const/4 v4, -0x1

    iput v4, v2, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 270
    :cond_4
    new-instance v2, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    iget-object v4, p0, Lcom/vladium/util/SoftValueMap;->m_valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p2, v4, v3}, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    iput-object v2, v1, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 289
    :goto_2
    return-object v0

    .line 238
    :cond_5
    iget-object v0, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    goto :goto_0

    .line 278
    :cond_6
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_sizeThreshold:I

    if-lt v0, v1, :cond_7

    invoke-direct {p0}, Lcom/vladium/util/SoftValueMap;->rehash()V

    .line 281
    :cond_7
    iget-object v7, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 282
    and-int v0, v2, v5

    array-length v1, v7

    rem-int v5, v0, v1

    .line 283
    aget-object v4, v7, v5

    .line 284
    new-instance v0, Lcom/vladium/util/SoftValueMap$SoftEntry;

    iget-object v1, p0, Lcom/vladium/util/SoftValueMap;->m_valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vladium/util/SoftValueMap$SoftEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljava/lang/Object;Lcom/vladium/util/SoftValueMap$SoftEntry;I)V

    .line 285
    aput-object v0, v7, v5

    .line 287
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    move-object v0, v6

    .line 289
    goto :goto_2

    :cond_8
    move-object v1, v6

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: putAll"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/SoftValueMap;->m_writeAccessCount:I

    iget v2, p0, Lcom/vladium/util/SoftValueMap;->m_writeClearCheckFrequency:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vladium/util/SoftValueMap;->removeClearedValues()V

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 301
    iget-object v4, p0, Lcom/vladium/util/SoftValueMap;->m_buckets:[Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 302
    const v0, 0x7fffffff

    and-int/2addr v0, v3

    array-length v2, v4

    rem-int v5, v0, v2

    .line 307
    aget-object v2, v4, v5

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 309
    iget-object v6, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 311
    if-eq v6, p1, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-ne v3, v7, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    :cond_2
    if-nez v0, :cond_3

    .line 315
    iget-object v0, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    aput-object v0, v4, v5

    .line 322
    :goto_1
    iget-object v3, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 323
    invoke-virtual {v3}, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 326
    const/4 v4, -0x1

    iput v4, v3, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 329
    iput-object v1, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 330
    iput-object v1, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 331
    iput-object v1, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 334
    iget v1, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    .line 339
    :goto_2
    return-object v0

    .line 319
    :cond_3
    iget-object v3, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    iput-object v3, v0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    goto :goto_1

    .line 307
    :cond_4
    iget-object v0, v2, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/vladium/util/SoftValueMap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/vladium/util/SoftValueMap;->debugDump(Ljava/lang/StringBuffer;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented: values"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
