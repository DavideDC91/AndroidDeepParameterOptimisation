.class final Lcom/vladium/util/WCMatcher$StartsWithMatcher;
.super Lcom/vladium/util/WCMatcher;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/WCMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartsWithMatcher"
.end annotation


# instance fields
.field private final m_prefix:Ljava/lang/String;

.field private final m_prefixChars:[C


# direct methods
.method constructor <init>([CI)V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/vladium/util/WCMatcher$StartsWithMatcher;->m_prefixChars:[C

    .line 183
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/vladium/util/WCMatcher$StartsWithMatcher;->m_prefix:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 158
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/WCMatcher$StartsWithMatcher;->m_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final matches([C)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/vladium/util/WCMatcher$StartsWithMatcher;->m_prefixChars:[C

    .line 168
    array-length v1, v2

    add-int/lit8 v3, v1, -0x1

    .line 170
    array-length v1, p1

    if-ge v1, v3, :cond_2

    .line 177
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    .line 172
    :goto_1
    if-ge v1, v3, :cond_3

    .line 174
    aget-char v4, p1, v1

    aget-char v5, v2, v1

    if-ne v4, v5, :cond_1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
