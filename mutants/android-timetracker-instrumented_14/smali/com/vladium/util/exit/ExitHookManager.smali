.class public abstract Lcom/vladium/util/exit/ExitHookManager;
.super Ljava/lang/Object;
.source "ExitHookManager.java"

# interfaces
.implements Lcom/vladium/util/IJREVersion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;
    }
.end annotation


# static fields
.field private static s_singleton:Lcom/vladium/util/exit/ExitHookManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSingleton()Lcom/vladium/util/exit/ExitHookManager;
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/vladium/util/exit/ExitHookManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vladium/util/exit/ExitHookManager;->s_singleton:Lcom/vladium/util/exit/ExitHookManager;

    if-nez v0, :cond_0

    .line 36
    sget-boolean v0, Lcom/vladium/util/exit/ExitHookManager;->JRE_1_3_PLUS:Z

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;

    invoke-direct {v0}, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;-><init>()V

    sput-object v0, Lcom/vladium/util/exit/ExitHookManager;->s_singleton:Lcom/vladium/util/exit/ExitHookManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/vladium/util/exit/ExitHookManager;->s_singleton:Lcom/vladium/util/exit/ExitHookManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no shutdown hook manager available [JVM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/vladium/util/Property;->getSystemFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract addExitHook(Ljava/lang/Runnable;)Z
.end method

.method public abstract removeExitHook(Ljava/lang/Runnable;)Z
.end method
