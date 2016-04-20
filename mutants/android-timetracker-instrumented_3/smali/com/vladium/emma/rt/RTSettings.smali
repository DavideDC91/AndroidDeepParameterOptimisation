.class public abstract Lcom/vladium/emma/rt/RTSettings;
.super Ljava/lang/Object;
.source "RTSettings.java"


# static fields
.field private static s_not_standalone:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isStandaloneMode()Z
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/vladium/emma/rt/RTSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/vladium/emma/rt/RTSettings;->s_not_standalone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setStandaloneMode(Z)V
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/vladium/emma/rt/RTSettings;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    sput-boolean v0, Lcom/vladium/emma/rt/RTSettings;->s_not_standalone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v1

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
