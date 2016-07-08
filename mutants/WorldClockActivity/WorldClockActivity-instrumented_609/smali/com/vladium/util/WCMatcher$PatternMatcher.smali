.class final Lcom/vladium/util/WCMatcher$PatternMatcher;
.super Lcom/vladium/util/WCMatcher;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/WCMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternMatcher"
.end annotation


# instance fields
.field private final m_pattern:[C

.field private final m_patternLength:I


# direct methods
.method constructor <init>([CI)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_pattern:[C

    .line 354
    iput p2, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_patternLength:I

    .line 355
    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 238
    array-length v7, v6

    .line 240
    iget-object v8, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_pattern:[C

    .line 241
    iget v9, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_patternLength:I

    move v0, v1

    move v3, v1

    move v4, v1

    :goto_0
    move v5, v1

    .line 254
    :goto_1
    add-int v10, v3, v5

    if-ge v10, v9, :cond_6

    .line 256
    add-int v10, v3, v5

    aget-char v10, v8, v10

    .line 258
    const/16 v11, 0x2a

    if-ne v10, v11, :cond_1

    .line 260
    add-int/2addr v4, v5

    .line 261
    add-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    .line 264
    goto :goto_0

    .line 267
    :cond_1
    add-int v11, v4, v5

    .line 269
    if-ne v11, v7, :cond_3

    .line 285
    :cond_2
    :goto_2
    return v1

    .line 271
    :cond_3
    aget-char v11, v6, v11

    if-eq v10, v11, :cond_4

    .line 273
    const/16 v11, 0x3f

    if-ne v10, v11, :cond_5

    .line 254
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 275
    :cond_5
    if-eqz v0, :cond_2

    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 278
    goto :goto_0

    .line 283
    :cond_6
    add-int/2addr v5, v4

    if-ne v5, v7, :cond_7

    move v1, v2

    goto :goto_2

    .line 285
    :cond_7
    if-eqz v0, :cond_2

    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 289
    goto :goto_0
.end method

.method public final matches([C)Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    array-length v6, p1

    .line 299
    iget-object v7, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_pattern:[C

    .line 300
    iget v8, p0, Lcom/vladium/util/WCMatcher$PatternMatcher;->m_patternLength:I

    move v0, v1

    move v3, v1

    move v4, v1

    :goto_0
    move v5, v1

    .line 313
    :goto_1
    add-int v9, v3, v5

    if-ge v9, v8, :cond_6

    .line 315
    add-int v9, v3, v5

    aget-char v9, v7, v9

    .line 317
    const/16 v10, 0x2a

    if-ne v9, v10, :cond_1

    .line 319
    add-int/2addr v4, v5

    .line 320
    add-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    .line 323
    goto :goto_0

    .line 326
    :cond_1
    add-int v10, v4, v5

    .line 328
    if-ne v10, v6, :cond_3

    .line 344
    :cond_2
    :goto_2
    return v1

    .line 330
    :cond_3
    aget-char v10, p1, v10

    if-eq v9, v10, :cond_4

    .line 332
    const/16 v10, 0x3f

    if-ne v9, v10, :cond_5

    .line 313
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 334
    :cond_5
    if-eqz v0, :cond_2

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 337
    goto :goto_0

    .line 342
    :cond_6
    add-int/2addr v5, v4

    if-ne v5, v6, :cond_7

    move v1, v2

    goto :goto_2

    .line 344
    :cond_7
    if-eqz v0, :cond_2

    .line 345
    add-int/lit8 v4, v4, 0x1

    .line 348
    goto :goto_0
.end method
