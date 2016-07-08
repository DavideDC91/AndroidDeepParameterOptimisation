.class public abstract Lcom/androidplot/util/MultiSynch;
.super Ljava/lang/Object;
.source "MultiSynch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/util/MultiSynch$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;I)V
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    aget-object v1, p1, p3

    monitor-enter v1

    .line 77
    :try_start_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_1

    .line 78
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/androidplot/util/MultiSynch;->a([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;I)V

    .line 82
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    invoke-interface {p2, p0}, Lcom/androidplot/util/MultiSynch$Action;->run([Ljava/lang/Object;)V

    .line 85
    return-void

    .line 80
    :cond_1
    :try_start_1
    invoke-interface {p2, p0}, Lcom/androidplot/util/MultiSynch$Action;->run([Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static run([Ljava/lang/Object;Ljava/util/List;Lcom/androidplot/util/MultiSynch$Action;)V
    .locals 2

    .prologue
    .line 55
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/androidplot/util/MultiSynch;->a([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;I)V

    .line 56
    return-void
.end method

.method public static run([Ljava/lang/Object;Ljava/util/Set;Lcom/androidplot/util/MultiSynch$Action;)V
    .locals 2

    .prologue
    .line 46
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/androidplot/util/MultiSynch;->a([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;I)V

    .line 47
    return-void
.end method

.method public static run([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/androidplot/util/MultiSynch;->a([Ljava/lang/Object;[Ljava/lang/Object;Lcom/androidplot/util/MultiSynch$Action;I)V

    .line 65
    return-void
.end method
