.class public final Lcom/vladium/emma/rt/AppRunner;
.super Lcom/vladium/emma/Processor;
.source "AppRunner.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;,
        Lcom/vladium/emma/rt/AppRunner$Invoker;
    }
.end annotation


# static fields
.field protected static final COMMA_DELIMITERS:Ljava/lang/String; = ", \t\r\n"

.field private static final EXPECTED_FAILURES:[Ljava/lang/Class;

.field private static final FORCED_DELEGATION_FILTER_SPECS:[Ljava/lang/String;

.field private static final INIT_AT_LOAD_TIME:Z = false

.field private static final INIT_CACHE_CAPACITY:I = 0x7d3

.field private static final MAIN_TYPE:[Ljava/lang/Class;

.field protected static final PATH_DELIMITERS:Ljava/lang/String;

.field private static final SET_CURRENT_CONTEXT_LOADER:Z = false

.field private static final SOFT_CACHE_READ_CHK_FREQUENCY:I = 0x64

.field private static final SOFT_CACHE_WRITE_CHK_FREQUENCY:I = 0x64

.field private static final USE_SOFT_CACHE:Z = true


# instance fields
.field private m_appArgs:[Ljava/lang/String;

.field private m_appClassName:Ljava/lang/String;

.field private m_canonical:Z

.field private m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

.field private m_coveragePath:[Ljava/io/File;

.field private final m_delegate:Ljava/lang/ClassLoader;

.field private m_dumpSessionData:Z

.field private m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

.field private m_scanCoveragePath:Z

.field private m_sdataOutFile:Ljava/io/File;

.field private m_sdataOutMerge:Ljava/lang/Boolean;

.field private m_sourcePath:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 944
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, [Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vladium/emma/rt/AppRunner;->MAIN_TYPE:[Ljava/lang/Class;

    .line 949
    const-string v0, ","

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/emma/rt/AppRunner;->PATH_DELIMITERS:Ljava/lang/String;

    .line 953
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/vladium/emma/EMMARuntimeException;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalArgumentException;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Ljava/lang/IllegalStateException;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/emma/rt/AppRunner;->EXPECTED_FAILURES:[Ljava/lang/Class;

    .line 960
    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/IAppConstants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/vladium/emma/rt/AppRunner;->FORCED_DELEGATION_FILTER_SPECS:[Ljava/lang/String;

    .line 961
    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/vladium/emma/Processor;-><init>()V

    .line 831
    iput-object p1, p0, Lcom/vladium/emma/rt/AppRunner;->m_delegate:Ljava/lang/ClassLoader;

    .line 832
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    .line 833
    return-void
.end method

.method public static create(Ljava/lang/ClassLoader;)Lcom/vladium/emma/rt/AppRunner;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/vladium/emma/rt/AppRunner;

    invoke-direct {v0, p0}, Lcom/vladium/emma/rt/AppRunner;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private static joinNonDeamonThreads(Ljava/lang/ThreadGroup;)V
    .locals 5

    .prologue
    .line 838
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 853
    monitor-enter p0

    .line 855
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/Thread;

    .line 856
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    .line 857
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    .line 861
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    if-nez v4, :cond_2

    .line 862
    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 866
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    return-void

    .line 870
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static wrapFailure(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 5

    .prologue
    .line 884
    sget-object v0, Lcom/vladium/emma/rt/AppRunner;->EXPECTED_FAILURES:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/vladium/util/exception/Exceptions;->unexpectedFailure(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    const-string v1, "UNEXPECTED_FAILURE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "this private build is unsupported"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 891
    :goto_0
    return-object p0

    .line 888
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 889
    check-cast p0, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 891
    :cond_1
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v0, p0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method protected _run(Lcom/vladium/util/IProperties;)V
    .locals 17

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    .line 269
    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v6

    .line 270
    if-eqz v6, :cond_3

    .line 272
    const-string v1, "[EMMA v0.0, build 0 (unsupported private build) (unknown)]"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 275
    const-string v1, "coverage path:"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 276
    const-string v1, "{"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    aget-object v4, v3, v1

    .line 280
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 282
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v3, "{nonexistent} "

    goto :goto_1

    .line 284
    :cond_1
    const-string v1, "}"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    array-length v1, v1

    if-nez v1, :cond_b

    .line 288
    :cond_2
    const-string v1, "source path not set"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 306
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/rt/AppRunner;->m_sdataOutFile:Ljava/io/File;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_sdataOutMerge:Ljava/lang/Boolean;

    .line 309
    if-nez v4, :cond_4

    .line 310
    new-instance v4, Ljava/io/File;

    const-string v3, "session.out.file"

    const-string v5, "coverage.es"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    :cond_4
    if-nez v1, :cond_20

    .line 315
    const-string v1, "session.out.merge"

    sget-object v3, Lcom/vladium/emma/EMMAProperties;->DEFAULT_SESSION_DATA_OUT_MERGE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v3}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v5, v1

    .line 321
    :goto_4
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_dumpSessionData:Z

    if-eqz v1, :cond_5

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session data output file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session data output merge mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 328
    :cond_5
    const-string v1, "clsload.forced_delegation_filter"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ", \t\r\n"

    sget-object v6, Lcom/vladium/emma/rt/AppRunner;->FORCED_DELEGATION_FILTER_SPECS:[Ljava/lang/String;

    invoke-static {v1, v3, v6}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v14

    .line 331
    const-string v1, "clsload.through_delegation_filter"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ", \t\r\n"

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v15

    .line 341
    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-static {}, Lcom/vladium/util/exit/ExitHookManager;->getSingleton()Lcom/vladium/util/exit/ExitHookManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    move-object v11, v1

    .line 352
    :goto_5
    const/4 v13, 0x0

    .line 353
    const/4 v12, 0x0

    .line 357
    const/4 v9, 0x0

    .line 358
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    if-eqz v1, :cond_6

    new-instance v9, Lcom/vladium/emma/report/SourcePathCache;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v9, v1, v3}, Lcom/vladium/emma/report/SourcePathCache;-><init>([Ljava/io/File;Z)V

    .line 361
    :cond_6
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getCoverageData()Lcom/vladium/emma/data/ICoverageData;

    move-result-object v7

    .line 364
    invoke-static/range {p1 .. p1}, Lcom/vladium/emma/data/CoverageOptionsFactory;->create(Lcom/vladium/util/IProperties;)Lcom/vladium/emma/data/CoverageOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/vladium/emma/data/DataFactory;->newMetaData(Lcom/vladium/emma/data/CoverageOptions;)Lcom/vladium/emma/data/IMetaData;

    move-result-object v6

    .line 366
    new-instance v1, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_dumpSessionData:Z

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vladium/emma/rt/AppRunner;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;-><init>(Lcom/vladium/logging/Logger;ZLjava/io/File;ZLcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;[Lcom/vladium/emma/report/IReportGenerator;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    if-eqz v11, :cond_7

    .line 369
    :try_start_2
    invoke-virtual {v11, v1}, Lcom/vladium/util/exit/ExitHookManager;->addExitHook(Ljava/lang/Runnable;)Z

    .line 373
    :cond_7
    const/4 v8, 0x0

    .line 376
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_scanCoveragePath:Z

    if-eqz v3, :cond_1f

    .line 379
    new-instance v8, Lcom/vladium/util/SoftValueMap;

    const/16 v3, 0x7d3

    const/high16 v4, 0x3f400000    # 0.75f

    const/16 v5, 0x64

    const/16 v7, 0x64

    invoke-direct {v8, v3, v4, v5, v7}, Lcom/vladium/util/SoftValueMap;-><init>(IFII)V

    .line 383
    new-instance v3, Lcom/vladium/emma/rt/ClassPathProcessorST;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/vladium/emma/rt/AppRunner;->m_canonical:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vladium/emma/rt/AppRunner;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-direct/range {v3 .. v8}, Lcom/vladium/emma/rt/ClassPathProcessorST;-><init>([Ljava/io/File;ZLcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/filter/IInclExclFilter;Ljava/util/Map;)V

    .line 391
    invoke-virtual {v3}, Lcom/vladium/emma/rt/ClassPathProcessorST;->run()V

    .line 393
    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 395
    const-string v3, "run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class cache size after cp scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v3, "run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metadata size after cp scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v9, v8

    .line 407
    :goto_6
    new-instance v8, Lcom/vladium/emma/rt/InstrClassLoadHook;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-direct {v8, v3, v6}, Lcom/vladium/emma/rt/InstrClassLoadHook;-><init>(Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/data/IMetaData;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    :try_start_3
    new-instance v3, Lcom/vladium/emma/rt/InstrClassLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/rt/AppRunner;->m_delegate:Ljava/lang/ClassLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v3 .. v9}, Lcom/vladium/emma/rt/InstrClassLoader;-><init>(Ljava/lang/ClassLoader;[Ljava/io/File;Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/rt/IClassLoadHook;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 449
    const/4 v4, 0x0

    .line 458
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 478
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 479
    if-eq v6, v3, :cond_10

    .line 481
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 483
    :goto_7
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_CLASS_BAD_DELEGATION"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "EMMA"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 554
    :catch_0
    move-exception v3

    .line 556
    :goto_8
    :try_start_6
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "SECURITY_RESTRICTION:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "EMMA"

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 560
    :catchall_0
    move-exception v3

    .line 569
    :goto_9
    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->isDestroyed()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    if-nez v5, :cond_9

    .line 572
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 575
    :cond_9
    :goto_a
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 578
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 584
    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    .line 588
    :goto_c
    invoke-virtual {v3}, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->run()V

    .line 592
    if-eqz v11, :cond_a

    .line 594
    invoke-virtual {v11, v3}, Lcom/vladium/util/exit/ExitHookManager;->removeExitHook(Ljava/lang/Runnable;)Z

    .line 601
    :cond_a
    invoke-virtual {v3}, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->getDataDumpFailure()Ljava/lang/Throwable;

    move-result-object v4

    .line 602
    invoke-virtual {v3}, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->getReportFailures()Ljava/util/List;

    move-result-object v5

    .line 605
    if-eqz v1, :cond_18

    .line 607
    invoke-static {v1}, Lcom/vladium/emma/rt/AppRunner;->wrapFailure(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 292
    :cond_b
    const-string v1, "source path:"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 293
    const-string v1, "{"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;

    aget-object v4, v3, v1

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, ""

    .line 299
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 297
    :cond_c
    const-string v3, "{nonexistent} "

    goto :goto_e

    .line 301
    :cond_d
    const-string v1, "}"

    invoke-virtual {v2, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 346
    :catch_2
    move-exception v3

    .line 349
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v11, v1

    goto/16 :goto_5

    .line 413
    :catch_3
    move-exception v3

    .line 415
    :try_start_a
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v5, "SECURITY_RESTRICTION:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "EMMA"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 584
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    throw v1

    .line 417
    :catch_4
    move-exception v3

    .line 419
    :try_start_b
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v4, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 460
    :catch_5
    move-exception v3

    .line 463
    :try_start_c
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_CLASS_NOT_FOUND"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5

    .line 465
    :catch_6
    move-exception v3

    .line 467
    invoke-virtual {v3}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v3

    .line 469
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_CLASS_LOAD_FAILURE"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5

    .line 471
    :catch_7
    move-exception v3

    .line 473
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_CLASS_NOT_FOUND"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5

    .line 481
    :cond_f
    const-string v3, "<PRIMORDIAL>"
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7

    .line 493
    :cond_10
    :try_start_d
    const-string v6, "main"

    sget-object v7, Lcom/vladium/emma/rt/AppRunner;->MAIN_TYPE:[Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v5

    .line 500
    :try_start_e
    new-instance v6, Lcom/vladium/emma/rt/AppRunner$Invoker;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vladium/emma/rt/AppRunner;->m_appArgs:[Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {v6, v5, v7, v8}, Lcom/vladium/emma/rt/AppRunner$Invoker;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 502
    new-instance v5, Ljava/lang/ThreadGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EMMA thread group ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 503
    const/4 v4, 0x1

    :try_start_f
    invoke-virtual {v5, v4}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    .line 505
    new-instance v4, Ljava/lang/Thread;

    const-string v7, "EMMA main() thread"

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 510
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 512
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 515
    :goto_f
    :try_start_11
    invoke-static {v5}, Lcom/vladium/emma/rt/AppRunner;->joinNonDeamonThreads(Ljava/lang/ThreadGroup;)V

    .line 519
    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 521
    instance-of v4, v3, Lcom/vladium/emma/rt/InstrClassLoader;

    if-eqz v4, :cond_11

    check-cast v3, Lcom/vladium/emma/rt/InstrClassLoader;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vladium/emma/rt/InstrClassLoader;->debugDump(Ljava/io/PrintWriter;)V

    .line 524
    :cond_11
    invoke-virtual {v6}, Lcom/vladium/emma/rt/AppRunner$Invoker;->getFailure()Ljava/lang/Throwable;

    move-result-object v3

    .line 527
    if-eqz v3, :cond_16

    .line 529
    instance-of v4, v3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_12

    .line 531
    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 533
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_METHOD_FAILURE"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v4
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 554
    :catch_8
    move-exception v3

    move-object v4, v5

    goto/16 :goto_8

    .line 495
    :catch_9
    move-exception v3

    .line 497
    :try_start_12
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_METHOD_NOT_FOUND"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 535
    :cond_12
    :try_start_13
    instance-of v4, v3, Ljava/lang/ExceptionInInitializerError;

    if-eqz v4, :cond_13

    .line 538
    check-cast v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v3}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v3

    .line 540
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_METHOD_FAILURE"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v4

    .line 560
    :catchall_2
    move-exception v3

    move-object v4, v5

    goto/16 :goto_9

    .line 542
    :cond_13
    instance-of v4, v3, Ljava/lang/IllegalAccessException;

    if-nez v4, :cond_14

    instance-of v4, v3, Ljava/lang/IllegalArgumentException;

    if-nez v4, :cond_14

    instance-of v4, v3, Ljava/lang/NullPointerException;

    if-eqz v4, :cond_15

    .line 546
    :cond_14
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_METHOD_NOT_FOUND"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v4

    .line 550
    :cond_15
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v6, "MAIN_METHOD_FAILURE"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 569
    :cond_16
    if-eqz v5, :cond_17

    :try_start_14
    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->isDestroyed()Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result v3

    if-nez v3, :cond_17

    .line 572
    :try_start_15
    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 584
    :cond_17
    :goto_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    move-object v3, v1

    move-object v1, v12

    .line 585
    goto/16 :goto_c

    .line 609
    :cond_18
    if-nez v4, :cond_19

    if-eqz v5, :cond_1e

    .line 611
    :cond_19
    if-eqz v4, :cond_1a

    .line 612
    const/4 v1, 0x0

    const-string v3, "exception while persisting raw session data:"

    invoke-virtual {v2, v1, v3, v4}, Lcom/vladium/logging/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    :cond_1a
    const/4 v3, 0x0

    .line 615
    if-eqz v5, :cond_1c

    .line 617
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 619
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 620
    if-nez v3, :cond_1b

    move-object v3, v1

    .line 622
    :cond_1b
    const/4 v6, 0x0

    const-string v7, "exception while creating a report:"

    invoke-virtual {v2, v6, v7, v1}, Lcom/vladium/logging/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 626
    :cond_1c
    if-eqz v4, :cond_1d

    .line 627
    invoke-static {v4}, Lcom/vladium/emma/rt/AppRunner;->wrapFailure(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 628
    :cond_1d
    if-eqz v3, :cond_1e

    .line 629
    invoke-static {v3}, Lcom/vladium/emma/rt/AppRunner;->wrapFailure(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 512
    :catch_a
    move-exception v4

    goto/16 :goto_f

    .line 575
    :catch_b
    move-exception v3

    goto :goto_10

    :catch_c
    move-exception v4

    goto/16 :goto_a

    .line 632
    :cond_1e
    return-void

    .line 578
    :catch_d
    move-exception v1

    move-object v3, v13

    goto/16 :goto_b

    :cond_1f
    move-object v9, v8

    goto/16 :goto_6

    :cond_20
    move-object v5, v1

    goto/16 :goto_4
.end method

.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vladium/emma/rt/AppRunner;->validateState()V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vladium/emma/rt/RTSettings;->setStandaloneMode(Z)V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vladium/emma/rt/RT;->reset(ZZ)Lcom/vladium/emma/data/ICoverageData;

    .line 76
    invoke-static {}, Lcom/vladium/emma/rt/RT;->getAppProperties()Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getAppProperties()Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/rt/AppRunner;->m_propertyOverrides:Lcom/vladium/util/IProperties;

    invoke-static {v1, v0}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/vladium/emma/rt/AppRunner;->m_appName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/vladium/emma/AppLoggers;->create(Ljava/lang/String;Lcom/vladium/util/IProperties;Lcom/vladium/logging/Logger;)Lcom/vladium/logging/Logger;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "run"

    const-string v3, "complete tool properties:"

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vladium/util/IProperties;->list(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/vladium/logging/Logger;->push(Lcom/vladium/logging/Logger;)V

    .line 95
    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    .line 97
    invoke-virtual {p0, v0}, Lcom/vladium/emma/rt/AppRunner;->_run(Lcom/vladium/util/IProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    invoke-static {v0}, Lcom/vladium/logging/Logger;->pop(Lcom/vladium/logging/Logger;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :cond_2
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    invoke-static {v1}, Lcom/vladium/logging/Logger;->pop(Lcom/vladium/logging/Logger;)V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner;->m_log:Lcom/vladium/logging/Logger;

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppClass(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty input: className"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :cond_1
    if-eqz p2, :cond_4

    .line 164
    :try_start_1
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 167
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null input: args["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_3
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_appArgs:[Ljava/lang/String;

    .line 176
    :goto_1
    iput-object p1, p0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 173
    :cond_4
    :try_start_2
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_appArgs:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setCoveragePath([Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 117
    :cond_0
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    .line 121
    :goto_0
    iput-boolean p2, p0, Lcom/vladium/emma/rt/AppRunner;->m_canonical:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDumpSessionData(Z)V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vladium/emma/rt/AppRunner;->m_dumpSessionData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setInclExclFilter([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create([Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReportTypes([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Strings;->removeDuplicates([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 221
    array-length v0, v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty input: types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    array-length v0, v1

    new-array v2, v0, [Lcom/vladium/emma/report/IReportGenerator;

    .line 227
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 229
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/vladium/emma/report/AbstractReportGenerator;->create(Ljava/lang/String;)Lcom/vladium/emma/report/IReportGenerator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_2
    iput-object v2, p0, Lcom/vladium/emma/rt/AppRunner;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setScanCoveragePath(Z)V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vladium/emma/rt/AppRunner;->m_scanCoveragePath:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionOutFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 190
    monitor-enter p0

    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_sdataOutFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a file: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_sdataOutFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized setSessionOutMerge(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vladium/emma/rt/AppRunner;->m_sdataOutMerge:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSourcePath([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_sourcePath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateState()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/vladium/emma/Processor;->validateState()V

    .line 242
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_appClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application class name not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_appArgs:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application arguments not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_coveragePath:[Ljava/io/File;

    if-nez v0, :cond_3

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "coverage path not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    array-length v0, v0

    if-nez v0, :cond_5

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "report types not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_5
    return-void
.end method
