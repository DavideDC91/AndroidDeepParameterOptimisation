.class public abstract Lcom/vladium/util/WCMatcher;
.super Ljava/lang/Object;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/WCMatcher$1;,
        Lcom/vladium/util/WCMatcher$PatternMatcher;,
        Lcom/vladium/util/WCMatcher$EndsWithMatcher;,
        Lcom/vladium/util/WCMatcher$StartsWithMatcher;,
        Lcom/vladium/util/WCMatcher$EmptyMatcher;,
        Lcom/vladium/util/WCMatcher$AllMatcher;
    }
.end annotation


# static fields
.field private static final ALL_MATCHER:Lcom/vladium/util/WCMatcher;

.field private static final EMPTY_MATCHER:Lcom/vladium/util/WCMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    new-instance v0, Lcom/vladium/util/WCMatcher$AllMatcher;

    invoke-direct {v0, v1}, Lcom/vladium/util/WCMatcher$AllMatcher;-><init>(Lcom/vladium/util/WCMatcher$1;)V

    sput-object v0, Lcom/vladium/util/WCMatcher;->ALL_MATCHER:Lcom/vladium/util/WCMatcher;

    .line 365
    new-instance v0, Lcom/vladium/util/WCMatcher$EmptyMatcher;

    invoke-direct {v0, v1}, Lcom/vladium/util/WCMatcher$EmptyMatcher;-><init>(Lcom/vladium/util/WCMatcher$1;)V

    sput-object v0, Lcom/vladium/util/WCMatcher;->EMPTY_MATCHER:Lcom/vladium/util/WCMatcher;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/vladium/util/WCMatcher;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x2a

    const/4 v3, 0x0

    .line 23
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 26
    array-length v8, v7

    .line 28
    if-nez v8, :cond_1

    .line 29
    sget-object v0, Lcom/vladium/util/WCMatcher;->EMPTY_MATCHER:Lcom/vladium/util/WCMatcher;

    .line 67
    :goto_0
    return-object v0

    :cond_1
    move v6, v3

    move v2, v3

    move v0, v3

    move v4, v3

    move v5, v3

    .line 35
    :goto_1
    if-ge v6, v8, :cond_4

    .line 37
    aget-char v9, v7, v6

    .line 38
    if-ne v9, v10, :cond_2

    .line 40
    if-nez v2, :cond_8

    .line 43
    add-int/lit8 v2, v4, 0x1

    .line 44
    add-int/lit8 v4, v5, 0x1

    aput-char v10, v7, v5

    move v5, v4

    move v4, v2

    move v2, v0

    move v0, v1

    .line 35
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_1

    .line 50
    :cond_2
    const/16 v2, 0x3f

    if-ne v9, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 51
    :cond_3
    add-int/lit8 v2, v5, 0x1

    aput-char v9, v7, v5

    move v5, v2

    move v2, v0

    move v0, v3

    goto :goto_2

    .line 57
    :cond_4
    if-ne v4, v1, :cond_7

    if-nez v0, :cond_7

    .line 59
    if-ne v5, v1, :cond_5

    .line 60
    sget-object v0, Lcom/vladium/util/WCMatcher;->ALL_MATCHER:Lcom/vladium/util/WCMatcher;

    goto :goto_0

    .line 61
    :cond_5
    aget-char v0, v7, v3

    if-ne v0, v10, :cond_6

    .line 62
    new-instance v0, Lcom/vladium/util/WCMatcher$EndsWithMatcher;

    invoke-direct {v0, v7, v5}, Lcom/vladium/util/WCMatcher$EndsWithMatcher;-><init>([CI)V

    goto :goto_0

    .line 63
    :cond_6
    add-int/lit8 v0, v5, -0x1

    aget-char v0, v7, v0

    if-ne v0, v10, :cond_7

    .line 64
    new-instance v0, Lcom/vladium/util/WCMatcher$StartsWithMatcher;

    invoke-direct {v0, v7, v5}, Lcom/vladium/util/WCMatcher$StartsWithMatcher;-><init>([CI)V

    goto :goto_0

    .line 67
    :cond_7
    new-instance v0, Lcom/vladium/util/WCMatcher$PatternMatcher;

    invoke-direct {v0, v7, v5}, Lcom/vladium/util/WCMatcher$PatternMatcher;-><init>([CI)V

    goto :goto_0

    :cond_8
    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_2
.end method


# virtual methods
.method public abstract matches(Ljava/lang/String;)Z
.end method

.method public abstract matches([C)Z
.end method
