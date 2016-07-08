.class public abstract Lcom/vladium/emma/rt/RT;
.super Ljava/lang/Object;
.source "RT.java"

# interfaces
.implements Lcom/vladium/emma/IAppConstants;


# static fields
.field private static final DEBUG:Z

.field private static final EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

.field private static s_appProperties:Lcom/vladium/util/IProperties;

.field private static s_cdata:Lcom/vladium/emma/data/ICoverageData;

.field private static s_exitHook:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/vladium/util/exit/ExitHookManager;->getSingleton()Lcom/vladium/util/exit/ExitHookManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    :goto_0
    sput-object v0, Lcom/vladium/emma/rt/RT;->EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

    .line 233
    invoke-static {}, Lcom/vladium/emma/rt/RTSettings;->isStandaloneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {v4, v4}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    .line 241
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "collecting runtime coverage data ..."

    invoke-virtual {v0, v1}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 228
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {v3, v3}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dumpCoverageData(Ljava/io/File;Z)V
    .locals 4

    .prologue
    .line 161
    const-class v1, Lcom/vladium/emma/rt/RT;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 163
    :goto_0
    :try_start_0
    sget-object v2, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 164
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 166
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageOutMerge()Z

    move-result v3

    invoke-static {v2, v0, p0, v3}, Lcom/vladium/emma/rt/RTCoverageDataPersister;->dumpCoverageData(Lcom/vladium/emma/data/ICoverageData;ZLjava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit v1

    return-void

    .line 161
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageOutFile()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dumpCoverageData(Ljava/io/File;ZZ)V
    .locals 3

    .prologue
    .line 151
    const-class v1, Lcom/vladium/emma/rt/RT;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 153
    :goto_0
    :try_start_0
    sget-object v2, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 154
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 156
    :cond_0
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0, p0, p1}, Lcom/vladium/emma/rt/RTCoverageDataPersister;->dumpCoverageData(Lcom/vladium/emma/data/ICoverageData;ZLjava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v1

    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageOutFile()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAppProperties()Lcom/vladium/util/IProperties;
    .locals 2

    .prologue
    .line 138
    const-class v0, Lcom/vladium/emma/rt/RT;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vladium/emma/rt/RT;->s_appProperties:Lcom/vladium/util/IProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCoverageData()Lcom/vladium/emma/data/ICoverageData;
    .locals 2

    .prologue
    .line 133
    const-class v0, Lcom/vladium/emma/rt/RT;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCoverageOutFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getAppProperties()Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 184
    const-string v1, "coverage.out.file"

    const-string v2, "coverage.ec"

    invoke-interface {v0, v1, v2}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "coverage.ec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCoverageOutMerge()Z
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getAppProperties()Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 199
    const-string v1, "coverage.out.merge"

    sget-object v2, Lcom/vladium/emma/EMMAProperties;->DEFAULT_COVERAGE_DATA_OUT_MERGE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/vladium/emma/EMMAProperties;->DEFAULT_COVERAGE_DATA_OUT_MERGE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static r([[ZLjava/lang/String;J)V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageData()Lcom/vladium/emma/data/ICoverageData;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/vladium/emma/data/ICoverageData;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/vladium/emma/data/ICoverageData;->addClass([[ZLjava/lang/String;J)V

    .line 127
    monitor-exit v1

    .line 129
    :cond_0
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized reset(ZZ)Lcom/vladium/emma/data/ICoverageData;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v2, Lcom/vladium/emma/rt/RT;

    monitor-enter v2

    :try_start_0
    const-class v0, Lcom/vladium/emma/rt/RT;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/vladium/emma/EMMAProperties;->getAppProperties(Ljava/lang/ClassLoader;)Lcom/vladium/util/IProperties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 52
    :goto_0
    :try_start_2
    sput-object v0, Lcom/vladium/emma/rt/RT;->s_appProperties:Lcom/vladium/util/IProperties;

    .line 55
    sget-object v0, Lcom/vladium/emma/rt/RT;->EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/vladium/emma/rt/RT;->s_exitHook:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/vladium/emma/rt/RT;->EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

    sget-object v1, Lcom/vladium/emma/rt/RT;->s_exitHook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vladium/util/exit/ExitHookManager;->removeExitHook(Ljava/lang/Runnable;)Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/vladium/emma/rt/RT;->s_exitHook:Ljava/lang/Runnable;

    .line 69
    :cond_1
    sget-object v0, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 70
    if-eqz p0, :cond_3

    .line 72
    invoke-static {}, Lcom/vladium/emma/data/DataFactory;->newCoverageData()Lcom/vladium/emma/data/ICoverageData;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 80
    :goto_1
    sget-object v1, Lcom/vladium/emma/rt/RT;->EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

    if-eqz v1, :cond_2

    .line 82
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 84
    new-instance v1, Lcom/vladium/emma/rt/RTExitHook;

    const-class v3, Lcom/vladium/emma/rt/RT;

    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageOutFile()Ljava/io/File;

    move-result-object v4

    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageOutMerge()Z

    move-result v5

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/vladium/emma/rt/RTExitHook;-><init>(Ljava/lang/Class;Lcom/vladium/emma/data/ICoverageData;Ljava/io/File;Z)V

    .line 92
    invoke-static {}, Lcom/vladium/emma/rt/RTExitHook;->createClassLoaderClosure()V

    .line 94
    sget-object v3, Lcom/vladium/emma/rt/RT;->EXIT_HOOK_MANAGER:Lcom/vladium/util/exit/ExitHookManager;

    invoke-virtual {v3, v1}, Lcom/vladium/util/exit/ExitHookManager;->addExitHook(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    sput-object v1, Lcom/vladium/emma/rt/RT;->s_exitHook:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_2
    monitor-exit v2

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x0

    sput-object v1, Lcom/vladium/emma/rt/RT;->s_cdata:Lcom/vladium/emma/data/ICoverageData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
