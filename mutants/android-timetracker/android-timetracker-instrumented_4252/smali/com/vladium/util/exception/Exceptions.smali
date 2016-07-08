.class public abstract Lcom/vladium/util/exception/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unexpectedFailure(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return v1

    .line 23
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move v0, v1

    .line 27
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 29
    aget-object v4, p1, v0

    if-nez v4, :cond_3

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_3
    aget-object v4, p1, v0

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 34
    goto :goto_0
.end method
