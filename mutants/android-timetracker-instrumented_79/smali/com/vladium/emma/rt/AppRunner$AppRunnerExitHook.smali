.class final Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;
.super Ljava/lang/Object;
.source "AppRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/rt/AppRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppRunnerExitHook"
.end annotation


# instance fields
.field private m_cache:Lcom/vladium/emma/report/SourcePathCache;

.field private m_cdata:Lcom/vladium/emma/data/ICoverageData;

.field private m_dataDumpFailure:Ljava/lang/Throwable;

.field private m_done:Z

.field private final m_dumpRawData:Z

.field private m_generators:[Lcom/vladium/emma/report/IReportGenerator;

.field private final m_log:Lcom/vladium/logging/Logger;

.field private m_mdata:Lcom/vladium/emma/data/IMetaData;

.field private m_properties:Lcom/vladium/util/IProperties;

.field private m_reportFailures:Ljava/util/List;

.field private final m_sdataOutFile:Ljava/io/File;

.field private final m_sdataOutMerge:Z


# direct methods
.method constructor <init>(Lcom/vladium/logging/Logger;ZLjava/io/File;ZLcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;[Lcom/vladium/emma/report/IReportGenerator;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    .locals 2

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    if-eqz p7, :cond_1

    array-length v0, p7

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty input: generators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_2
    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_3
    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: cdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_4
    if-nez p9, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_5
    iput-object p1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_log:Lcom/vladium/logging/Logger;

    .line 789
    iput-boolean p2, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_dumpRawData:Z

    .line 790
    iput-object p3, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutFile:Ljava/io/File;

    .line 791
    iput-boolean p4, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutMerge:Z

    .line 793
    invoke-virtual {p7}, [Lcom/vladium/emma/report/IReportGenerator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vladium/emma/report/IReportGenerator;

    check-cast v0, [Lcom/vladium/emma/report/IReportGenerator;

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    .line 794
    iput-object p5, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 795
    iput-object p6, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 796
    iput-object p8, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 797
    iput-object p9, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_properties:Lcom/vladium/util/IProperties;

    .line 798
    return-void
.end method


# virtual methods
.method declared-synchronized getDataDumpFailure()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 803
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_dataDumpFailure:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getReportFailures()Ljava/util/List;
    .locals 1

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_reportFailures:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_done:Z

    if-nez v0, :cond_7

    .line 687
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v0}, Lcom/vladium/emma/data/IMetaData;->shallowCopy()Lcom/vladium/emma/data/IMetaData;

    move-result-object v4

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 689
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    invoke-interface {v0}, Lcom/vladium/emma/data/ICoverageData;->shallowCopy()Lcom/vladium/emma/data/ICoverageData;

    move-result-object v5

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 692
    invoke-interface {v4}, Lcom/vladium/emma/data/IMetaData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "no metadata collected at runtime [no reports generated]"

    invoke-virtual {v0, v1}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_properties:Lcom/vladium/util/IProperties;

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_done:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 769
    :goto_0
    monitor-exit p0

    return-void

    .line 699
    :cond_0
    :try_start_2
    invoke-interface {v5}, Lcom/vladium/emma/data/ICoverageData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "no coverage data collected at runtime [all reports will be empty]"

    invoke-virtual {v0, v1}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 704
    :cond_1
    new-instance v6, Lcom/vladium/emma/data/SessionData;

    invoke-direct {v6, v4, v5}, Lcom/vladium/emma/data/SessionData;-><init>(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)V

    .line 710
    iget-boolean v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_dumpRawData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 714
    :try_start_3
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v7

    .line 716
    if-eqz v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutFile:Ljava/io/File;

    iget-boolean v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutMerge:Z

    invoke-static {v6, v0, v1}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/ISessionData;Ljava/io/File;Z)V

    .line 720
    if-eqz v7, :cond_2

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 724
    iget-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_log:Lcom/vladium/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "raw session data "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutMerge:Z

    if-eqz v0, :cond_5

    const-string v0, "merged into"

    :goto_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_sdataOutFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] {in "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 733
    :cond_2
    :goto_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 735
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    aget-object v2, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 737
    if-eqz v2, :cond_3

    .line 741
    :try_start_5
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    iget-object v3, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_properties:Lcom/vladium/util/IProperties;

    invoke-interface {v2, v4, v5, v0, v3}, Lcom/vladium/emma/report/IReportGenerator;->process(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 752
    :try_start_6
    invoke-interface {v2}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 753
    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 733
    :cond_3
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 716
    :cond_4
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_1

    .line 724
    :cond_5
    :try_start_8
    const-string v0, "written to"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 727
    :catch_0
    move-exception v0

    .line 729
    :try_start_9
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_dataDumpFailure:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 761
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_a
    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    .line 762
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 763
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 764
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_properties:Lcom/vladium/util/IProperties;

    .line 765
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 767
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_done:Z

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 683
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 743
    :catch_1
    move-exception v0

    .line 745
    :try_start_b
    iget-object v3, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_reportFailures:Ljava/util/List;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_reportFailures:Ljava/util/List;

    .line 746
    :cond_6
    iget-object v3, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_reportFailures:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 752
    :try_start_c
    invoke-interface {v2}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 753
    :goto_7
    :try_start_d
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 752
    :catchall_2
    move-exception v0

    :try_start_e
    invoke-interface {v2}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 753
    :goto_8
    :try_start_f
    iget-object v2, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 761
    :cond_7
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_generators:[Lcom/vladium/emma/report/IReportGenerator;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_properties:Lcom/vladium/util/IProperties;

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/emma/rt/AppRunner$AppRunnerExitHook;->m_done:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0

    .line 752
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v2

    goto :goto_8
.end method
