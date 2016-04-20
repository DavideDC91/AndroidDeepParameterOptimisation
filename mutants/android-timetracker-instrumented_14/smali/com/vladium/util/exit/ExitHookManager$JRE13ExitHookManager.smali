.class final Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;
.super Lcom/vladium/util/exit/ExitHookManager;
.source "ExitHookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/exit/ExitHookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JRE13ExitHookManager"
.end annotation


# instance fields
.field private final m_exitThreadMap:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/vladium/util/exit/ExitHookManager;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;->m_exitThreadMap:Ljava/util/Map;

    .line 113
    return-void
.end method


# virtual methods
.method public declared-synchronized addExitHook(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    .line 63
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;->m_exitThreadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "EMMA shutdown handler thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 70
    iget-object v1, p0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;->m_exitThreadMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    const/4 v0, 0x1

    .line 81
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception caught while adding a shutdown hook:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeExitHook(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;->m_exitThreadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_0

    .line 94
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 95
    iget-object v0, p0, Lcom/vladium/util/exit/ExitHookManager$JRE13ExitHookManager;->m_exitThreadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v0, 0x1

    .line 107
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception caught while removing a shutdown hook:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
