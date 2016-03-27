.class public final Lcom/vladium/emma/runCommand;
.super Lcom/vladium/emma/Command;
.source "runCommand.java"


# static fields
.field private static final DEFAULT_TO_SYSTEM_CLASSPATH:Z


# instance fields
.field private m_appArgs:[Ljava/lang/String;

.field private m_classpath:[Ljava/lang/String;

.field private m_dumpRawData:Z

.field private m_ixpath:[Ljava/lang/String;

.field private m_jarMode:Z

.field private m_outDataMerge:Ljava/lang/Boolean;

.field private m_outFileName:Ljava/lang/String;

.field private m_reportTypes:[Ljava/lang/String;

.field private m_scanCoveragePath:Z

.field private m_srcpath:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/vladium/emma/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private static openJarFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 300
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 303
    if-nez v2, :cond_1

    .line 314
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    .line 305
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 306
    if-nez v2, :cond_2

    .line 314
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 308
    :cond_2
    :try_start_5
    sget-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 314
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected initialize()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/vladium/emma/Command;->initialize()V

    .line 282
    return-void
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 38
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vladium/util/ClassLoaderResolver;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 49
    :goto_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/vladium/emma/runCommand;->getOptParser(Ljava/lang/ClassLoader;)Lcom/vladium/util/args/IOptsParser;

    move-result-object v3

    .line 50
    iget-object v1, p0, Lcom/vladium/emma/runCommand;->m_args:[Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/vladium/util/args/IOptsParser;->parse([Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser$IOpts;

    move-result-object v4

    .line 54
    invoke-interface {v4}, Lcom/vladium/util/args/IOptsParser$IOpts;->usageRequestLevel()I

    move-result v1

    .line 56
    if-lez v1, :cond_1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v1, v0}, Lcom/vladium/emma/runCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 42
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 63
    :cond_1
    :try_start_3
    invoke-interface {v4}, Lcom/vladium/util/args/IOptsParser$IOpts;->getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;

    move-result-object v5

    .line 65
    if-nez v5, :cond_2

    .line 67
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_out:Ljava/io/PrintWriter;

    const/16 v1, 0x50

    invoke-interface {v4, v0, v1}, Lcom/vladium/util/args/IOptsParser$IOpts;->error(Ljava/io/PrintWriter;I)V

    .line 68
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/vladium/emma/runCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    .line 254
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v0}, Lcom/vladium/emma/EMMARuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/runCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    .line 75
    :goto_2
    :try_start_5
    array-length v0, v5

    if-ge v1, v0, :cond_d

    .line 77
    aget-object v0, v5, v1

    .line 78
    invoke-interface {v0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p0, v0}, Lcom/vladium/emma/runCommand;->processOpt(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 82
    const-string v7, "cp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 84
    sget-object v6, Lcom/vladium/emma/runCommand;->PATH_DELIMITERS:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/vladium/emma/runCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_classpath:[Ljava/lang/String;

    .line 75
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 86
    :cond_4
    const-string v7, "jar"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/emma/runCommand;->m_jarMode:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 129
    :catch_2
    move-exception v0

    .line 131
    :try_start_6
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "ARGS_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    :catch_3
    move-exception v0

    .line 262
    const/4 v1, 0x1

    :try_start_7
    const-string v2, "unexpected failure: "

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vladium/emma/runCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 90
    :cond_5
    :try_start_8
    const-string v7, "f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 92
    invoke-static {v0}, Lcom/vladium/emma/runCommand;->getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/emma/runCommand;->m_scanCoveragePath:Z

    goto :goto_3

    .line 94
    :cond_6
    const-string v7, "sp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 96
    sget-object v6, Lcom/vladium/emma/runCommand;->PATH_DELIMITERS:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/vladium/emma/runCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_srcpath:[Ljava/lang/String;

    goto :goto_3

    .line 98
    :cond_7
    const-string v7, "raw"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 100
    invoke-static {v0}, Lcom/vladium/emma/runCommand;->getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/emma/runCommand;->m_dumpRawData:Z

    goto :goto_3

    .line 102
    :cond_8
    const-string v7, "out"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 104
    invoke-interface {v0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_outFileName:Ljava/lang/String;

    goto :goto_3

    .line 106
    :cond_9
    const-string v7, "merge"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 108
    invoke-static {v0}, Lcom/vladium/emma/runCommand;->getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_outDataMerge:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 110
    :cond_b
    const-string v7, "r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 112
    invoke-interface {v0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getValues()[Ljava/lang/String;

    move-result-object v0

    const-string v6, ", \t\r\n"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/vladium/util/Strings;->merge([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_reportTypes:[Ljava/lang/String;

    goto/16 :goto_3

    .line 114
    :cond_c
    const-string v7, "ix"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    const-string v6, ", \t\r\n"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/vladium/emma/runCommand;->getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_ixpath:[Ljava/lang/String;

    goto/16 :goto_3

    .line 123
    :cond_d
    invoke-virtual {p0}, Lcom/vladium/emma/runCommand;->processFilePropertyOverrides()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v4}, Lcom/vladium/emma/runCommand;->processCmdPropertyOverrides(Lcom/vladium/util/args/IOptsParser$IOpts;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 137
    :try_start_9
    invoke-interface {v4}, Lcom/vladium/util/args/IOptsParser$IOpts;->getFreeArgs()[Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-boolean v1, p0, Lcom/vladium/emma/runCommand;->m_jarMode:Z

    if-eqz v1, :cond_11

    .line 141
    if-eqz v0, :cond_e

    array-length v1, v0

    if-nez v1, :cond_f

    .line 143
    :cond_e
    const/4 v0, 0x1

    const-string v1, "missing jar file name"

    invoke-virtual {p0, v3, v0, v1}, Lcom/vladium/emma/runCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_f
    new-instance v1, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    :try_start_a
    invoke-static {v1}, Lcom/vladium/emma/runCommand;->openJarFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v4

    .line 161
    if-nez v4, :cond_10

    .line 163
    const/4 v0, 0x1

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load Main-Class manifest attribute from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vladium/emma/runCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 155
    :catch_4
    move-exception v0

    .line 158
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "ARGS_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 169
    :cond_10
    array-length v5, v0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    .line 170
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    const/4 v7, 0x1

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_classpath:[Ljava/lang/String;

    .line 210
    :goto_5
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_classpath:[Ljava/lang/String;

    if-nez v0, :cond_14

    .line 212
    const/4 v0, 0x1

    const-string v1, "either \'-cp\' or \'-jar\' option is required"

    invoke-virtual {p0, v3, v0, v1}, Lcom/vladium/emma/runCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_11
    if-eqz v0, :cond_12

    array-length v1, v0

    if-nez v1, :cond_13

    .line 179
    :cond_12
    const/4 v0, 0x1

    const-string v1, "missing application class name"

    invoke-virtual {p0, v3, v0, v1}, Lcom/vladium/emma/runCommand;->usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :cond_13
    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    goto :goto_5

    .line 218
    :cond_14
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_reportTypes:[Ljava/lang/String;

    if-nez v0, :cond_15

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "txt"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/vladium/emma/runCommand;->m_reportTypes:[Ljava/lang/String;

    .line 229
    :cond_15
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    invoke-static {v2}, Lcom/vladium/emma/rt/AppRunner;->create(Ljava/lang/ClassLoader;)Lcom/vladium/emma/rt/AppRunner;

    move-result-object v1

    .line 233
    const-string v2, "EMMA"

    invoke-virtual {v1, v2}, Lcom/vladium/emma/rt/AppRunner;->setAppName(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/vladium/emma/runCommand;->m_appArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/vladium/emma/rt/AppRunner;->setAppClass(Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_classpath:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vladium/emma/rt/AppRunner;->setCoveragePath([Ljava/lang/String;Z)V

    .line 237
    iget-boolean v0, p0, Lcom/vladium/emma/runCommand;->m_scanCoveragePath:Z

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setScanCoveragePath(Z)V

    .line 238
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_srcpath:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setSourcePath([Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_ixpath:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setInclExclFilter([Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/vladium/emma/runCommand;->m_dumpRawData:Z

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setDumpSessionData(Z)V

    .line 241
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_outFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setSessionOutFile(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_outDataMerge:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setSessionOutMerge(Ljava/lang/Boolean;)V

    .line 244
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_reportTypes:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setReportTypes([Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/vladium/emma/runCommand;->m_propertyOverrides:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/rt/AppRunner;->setPropertyOverrides(Ljava/util/Properties;)V

    .line 247
    invoke-virtual {v1}, Lcom/vladium/emma/rt/AppRunner;->run()V
    :try_end_b
    .catch Lcom/vladium/emma/EMMARuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vladium/emma/runCommand;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1
.end method

.method protected usageArgsMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, "[options] class [args...] | -jar [options] jarfile [args...]"

    return-object v0
.end method
