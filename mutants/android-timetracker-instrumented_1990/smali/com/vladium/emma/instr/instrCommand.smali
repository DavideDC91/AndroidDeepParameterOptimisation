.class public final Lcom/vladium/emma/instr/instrCommand;
.super Lcom/vladium/emma/Command;
.source "instrCommand.java"


# instance fields
.field private m_instrpath:[Ljava/lang/String;

.field private m_ixpath:[Ljava/lang/String;

.field private m_outDataMerge:Ljava/lang/Boolean;

.field private m_outDirName:Ljava/lang/String;

.field private m_outFileName:Ljava/lang/String;

.field private m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/vladium/emma/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    iput-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    .line 35
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/vladium/emma/Command;->initialize()V

    .line 191
    return-void
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vladium/util/ClassLoaderResolver;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 53
    :goto_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/vladium/emma/instr/instrCommand;->getOptParser(Ljava/lang/ClassLoader;)Lcom/vladium/util/args/IOptsParser;

    move-result-object v4

    .line 54
    iget-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_args:[Ljava/lang/String;

    invoke-interface {v4, v2}, Lcom/vladium/util/args/IOptsParser;->parse([Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser$IOpts;

    move-result-object v5

    .line 58
    invoke-interface {v5}, Lcom/vladium/util/args/IOptsParser$IOpts;->usageRequestLevel()I

    move-result v2

    .line 60
    if-lez v2, :cond_1

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v2, v0}, Lcom/vladium/emma/instr/instrCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_1
    :try_start_3
    invoke-interface {v5}, Lcom/vladium/util/args/IOptsParser$IOpts;->getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;

    move-result-object v6

    .line 69
    if-nez v6, :cond_2

    .line 71
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_out:Ljava/io/PrintWriter;

    const/16 v1, 0x50

    invoke-interface {v5, v0, v1}, Lcom/vladium/util/args/IOptsParser$IOpts;->error(Ljava/io/PrintWriter;I)V

    .line 72
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/vladium/emma/instr/instrCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 170
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v0}, Lcom/vladium/emma/EMMARuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/instr/instrCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v3, v1

    .line 79
    :goto_2
    :try_start_5
    array-length v2, v6

    if-ge v3, v2, :cond_b

    .line 81
    aget-object v2, v6, v3

    .line 82
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {p0, v2}, Lcom/vladium/emma/instr/instrCommand;->processOpt(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 86
    const-string v8, "ip"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    sget-object v7, Lcom/vladium/emma/instr/instrCommand;->PATH_DELIMITERS:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcom/vladium/emma/instr/instrCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_instrpath:[Ljava/lang/String;

    .line 79
    :cond_3
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 90
    :cond_4
    const-string v8, "d"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 92
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outDirName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 131
    :catch_2
    move-exception v0

    .line 133
    :try_start_6
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "ARGS_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    :catch_3
    move-exception v0

    .line 178
    const/4 v1, 0x1

    :try_start_7
    const-string v2, "unexpected failure: "

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/instr/instrCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 94
    :cond_5
    :try_start_8
    const-string v8, "out"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 96
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outFileName:Ljava/lang/String;

    goto :goto_3

    .line 98
    :cond_6
    const-string v8, "merge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 100
    invoke-static {v2}, Lcom/vladium/emma/instr/instrCommand;->getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    iput-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outDataMerge:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 102
    :cond_8
    const-string v8, "ix"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 105
    const-string v7, ", \t\r\n"

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcom/vladium/emma/instr/instrCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_ixpath:[Ljava/lang/String;

    goto :goto_3

    .line 107
    :cond_9
    const-string v8, "m"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    invoke-interface {v2}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->nameToMode(Ljava/lang/String;)Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    move-result-object v7

    .line 112
    if-nez v7, :cond_a

    .line 114
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v6, v3

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' option value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/vladium/emma/instr/instrCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 118
    :cond_a
    iput-object v7, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    goto/16 :goto_3

    .line 125
    :cond_b
    invoke-virtual {p0}, Lcom/vladium/emma/instr/instrCommand;->processFilePropertyOverrides()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0, v5}, Lcom/vladium/emma/instr/instrCommand;->processCmdPropertyOverrides(Lcom/vladium/util/args/IOptsParser$IOpts;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    :try_start_9
    iget-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v3, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outDirName:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 142
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output directory must be specified for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' output mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/vladium/emma/instr/instrCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :cond_c
    invoke-static {}, Lcom/vladium/emma/instr/InstrProcessor;->create()Lcom/vladium/emma/instr/InstrProcessor;

    move-result-object v2

    .line 152
    const-string v3, "EMMA"

    invoke-virtual {v2, v3}, Lcom/vladium/emma/instr/InstrProcessor;->setAppName(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/vladium/emma/instr/instrCommand;->m_instrpath:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/vladium/emma/instr/InstrProcessor;->setInstrPath([Ljava/lang/String;Z)V

    .line 155
    iget-object v3, p0, Lcom/vladium/emma/instr/instrCommand;->m_ixpath:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vladium/emma/instr/InstrProcessor;->setInclExclFilter([Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eqz v3, :cond_d

    :goto_5
    const-string v1, "m_outMode not set"

    invoke-static {v0, v1}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/instr/InstrProcessor;->setOutMode(Lcom/vladium/emma/instr/InstrProcessor$OutMode;)V

    .line 158
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_outDirName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/instr/InstrProcessor;->setInstrOutDir(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_outFileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/instr/InstrProcessor;->setMetaOutFile(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_outDataMerge:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/instr/InstrProcessor;->setMetaOutMerge(Ljava/lang/Boolean;)V

    .line 161
    iget-object v0, p0, Lcom/vladium/emma/instr/instrCommand;->m_propertyOverrides:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/instr/InstrProcessor;->setPropertyOverrides(Ljava/util/Properties;)V

    .line 163
    invoke-virtual {v2}, Lcom/vladium/emma/instr/InstrProcessor;->run()V
    :try_end_9
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vladium/emma/instr/instrCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 156
    goto :goto_5
.end method

.method protected usageArgsMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "[options]"

    return-object v0
.end method
