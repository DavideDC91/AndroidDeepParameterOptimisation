.class final Lcom/vladium/util/WCMatcher$EmptyMatcher;
.super Lcom/vladium/util/WCMatcher;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/WCMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyMatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/util/WCMatcher$1;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher$EmptyMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 139
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final matches([C)Z
    .locals 2

    .prologue
    .line 146
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
