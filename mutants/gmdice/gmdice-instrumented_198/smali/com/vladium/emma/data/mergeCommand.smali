.class public final Lcom/vladium/emma/data/mergeCommand;
.super Lcom/vladium/emma/Command;
.source "mergeCommand.java"


# instance fields
.field private m_datapath:[Ljava/lang/String;

.field private m_outFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/vladium/emma/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/vladium/emma/Command;->initialize()V

    .line 150
    return-void
.end method

.method public declared-synchronized run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vladium/util/ClassLoaderResolver;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/vladium/emma/data/mergeCommand;->getOptParser(Ljava/lang/ClassLoader;)Lcom/vladium/util/args/IOptsParser;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/vladium/emma/data/mergeCommand;->m_args:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/vladium/util/args/IOptsParser;->parse([Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser$IOpts;

    move-result-object v2

    .line 55
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpts;->usageRequestLevel()I

    move-result v3

    .line 57
    if-lez v3, :cond_1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lcom/vladium/emma/data/mergeCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 43
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_1
    :try_start_3
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpts;->getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;

    move-result-object v3

    .line 66
    if-nez v3, :cond_2

    .line 68
    iget-object v0, p0, Lcom/vladium/emma/data/mergeCommand;->m_out:Ljava/io/PrintWriter;

    const/16 v3, 0x50

    invoke-interface {v2, v0, v3}, Lcom/vladium/util/args/IOptsParser$IOpts;->error(Ljava/io/PrintWriter;I)V

    .line 69
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/vladium/emma/data/mergeCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 129
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v0}, Lcom/vladium/emma/EMMARuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/data/mergeCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_2
    :goto_2
    :try_start_5
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 79
    aget-object v1, v3, v0

    .line 80
    invoke-interface {v1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {p0, v1}, Lcom/vladium/emma/data/mergeCommand;->processOpt(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 84
    const-string v5, "in"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    sget-object v4, Lcom/vladium/emma/data/mergeCommand;->PATH_DELIMITERS:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/vladium/emma/data/mergeCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vladium/emma/data/mergeCommand;->m_datapath:[Ljava/lang/String;

    .line 77
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_4
    const-string v5, "out"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    invoke-interface {v1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vladium/emma/data/mergeCommand;->m_outFileName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 103
    :catch_2
    move-exception v0

    .line 105
    :try_start_6
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "ARGS_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    :catch_3
    move-exception v0

    .line 137
    const/4 v1, 0x1

    :try_start_7
    const-string v2, "unexpected failure: "

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/data/mergeCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 97
    :cond_5
    :try_start_8
    invoke-virtual {p0}, Lcom/vladium/emma/data/mergeCommand;->processFilePropertyOverrides()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Lcom/vladium/emma/data/mergeCommand;->processCmdPropertyOverrides(Lcom/vladium/util/args/IOptsParser$IOpts;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 115
    :try_start_9
    invoke-static {}, Lcom/vladium/emma/data/MergeProcessor;->create()Lcom/vladium/emma/data/MergeProcessor;

    move-result-object v0

    .line 116
    const-string v1, "EMMA"

    invoke-virtual {v0, v1}, Lcom/vladium/emma/data/MergeProcessor;->setAppName(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/vladium/emma/data/mergeCommand;->m_datapath:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vladium/emma/data/MergeProcessor;->setDataPath([Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/vladium/emma/data/mergeCommand;->m_outFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vladium/emma/data/MergeProcessor;->setSessionOutFile(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/vladium/emma/data/mergeCommand;->m_propertyOverrides:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Lcom/vladium/emma/data/MergeProcessor;->setPropertyOverrides(Ljava/util/Properties;)V

    .line 122
    invoke-virtual {v0}, Lcom/vladium/emma/data/MergeProcessor;->run()V
    :try_end_9
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vladium/emma/data/mergeCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1
.end method

.method protected usageArgsMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "[options]"

    return-object v0
.end method
