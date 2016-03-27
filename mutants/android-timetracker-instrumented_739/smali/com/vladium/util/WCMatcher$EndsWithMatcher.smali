.class final Lcom/vladium/util/WCMatcher$EndsWithMatcher;
.super Lcom/vladium/util/WCMatcher;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/WCMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EndsWithMatcher"
.end annotation


# instance fields
.field private final m_suffix:Ljava/lang/String;

.field private final m_suffixChars:[C


# direct methods
.method constructor <init>([CI)V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/vladium/util/WCMatcher$EndsWithMatcher;->m_suffixChars:[C

    .line 222
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/vladium/util/WCMatcher$EndsWithMatcher;->m_suffix:Ljava/lang/String;

    .line 223
    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 196
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/WCMatcher$EndsWithMatcher;->m_suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final matches([C)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/vladium/util/WCMatcher$EndsWithMatcher;->m_suffixChars:[C

    .line 206
    array-length v1, v2

    add-int/lit8 v3, v1, -0x1

    .line 207
    array-length v4, p1

    .line 209
    if-ge v4, v3, :cond_2

    .line 216
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    .line 211
    :goto_1
    if-ge v1, v3, :cond_3

    .line 213
    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v1

    aget-char v5, p1, v5

    sub-int v6, v3, v1

    aget-char v6, v2, v6

    if-ne v5, v6, :cond_1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
