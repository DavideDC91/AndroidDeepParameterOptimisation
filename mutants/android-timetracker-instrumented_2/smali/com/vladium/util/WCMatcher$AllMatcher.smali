.class final Lcom/vladium/util/WCMatcher$AllMatcher;
.super Lcom/vladium/util/WCMatcher;
.source "WCMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/WCMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllMatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/util/WCMatcher$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vladium/util/WCMatcher$AllMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 120
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final matches([C)Z
    .locals 2

    .prologue
    .line 127
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
