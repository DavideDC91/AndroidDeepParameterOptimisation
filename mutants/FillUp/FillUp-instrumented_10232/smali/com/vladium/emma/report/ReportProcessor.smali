.class public final Lcom/vladium/emma/report/ReportProcessor;
.super Lcom/vladium/emma/Processor;
.source "ReportProcessor.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# static fields
.field private static final EXPECTED_FAILURES:[Ljava/lang/Class;


# instance fields
.field private m_dataFileCount:I

.field private m_dataPath:[Ljava/io/File;

.field private m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

.field private m_sourcePath:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/vladium/emma/EMMARuntimeException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/IllegalArgumentException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/IllegalStateException;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/emma/report/ReportProcessor;->EXPECTED_FAILURES:[Ljava/lang/Class;

    .line 338
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/vladium/emma/Processor;-><init>()V

    .line 309
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    .line 310
    return-void
.end method

.method public static create()Lcom/vladium/emma/report/ReportProcessor;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/vladium/emma/report/ReportProcessor;

    invoke-direct {v0}, Lcom/vladium/emma/report/ReportProcessor;-><init>()V

    return-object v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataFileCount:I

    .line 315
    return-void
.end method


# virtual methods
.method protected _run(Lcom/vladium/util/IProperties;)V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v8, p0, Lcom/vladium/emma/report/ReportProcessor;->m_log:Lcom/vladium/logging/Logger;

    .line 118
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v9

    .line 119
    if-eqz v9, :cond_b

    .line 121
    const-string v0, "[EMMA v0.0, build 0 (unsupported private build) (unknown)]"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 124
    const-string v0, "input data path:"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 125
    const-string v0, "{"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    move v0, v1

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    aget-object v3, v2, v0

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 131
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const-string v2, "{nonexistent} "

    goto :goto_1

    .line 133
    :cond_1
    const-string v0, "}"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    array-length v0, v0

    if-nez v0, :cond_8

    .line 138
    :cond_2
    const-string v0, "source path not set"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 162
    :goto_2
    :try_start_0
    invoke-virtual {v8}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    :goto_3
    move v6, v1

    move-object v7, v4

    move-object v5, v4

    .line 170
    :goto_4
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    array-length v0, v0

    if-ge v6, v0, :cond_f

    .line 172
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    aget-object v0, v0, v6

    .line 173
    if-eqz v9, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processing input file ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 175
    :cond_3
    invoke-static {v0}, Lcom/vladium/emma/data/DataFactory;->load(Ljava/io/File;)[Lcom/vladium/emma/data/IMergeable;

    move-result-object v10

    .line 177
    const/4 v0, 0x0

    aget-object v0, v10, v0

    check-cast v0, Lcom/vladium/emma/data/IMetaData;

    .line 178
    if-eqz v0, :cond_5

    .line 180
    if-eqz v9, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  loaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " metadata entries"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 182
    :cond_4
    if-nez v5, :cond_d

    move-object v5, v0

    .line 188
    :cond_5
    :goto_5
    const/4 v0, 0x1

    aget-object v0, v10, v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData;

    .line 189
    if-eqz v0, :cond_7

    .line 191
    if-eqz v9, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  loaded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Lcom/vladium/emma/data/ICoverageData;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " coverage data entries"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 193
    :cond_6
    if-nez v7, :cond_e

    move-object v7, v0

    .line 199
    :cond_7
    :goto_6
    iget v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataFileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataFileCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    .line 142
    :cond_8
    const-string v0, "source path:"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 143
    const-string v0, "{"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    move v0, v1

    .line 144
    :goto_7
    iget-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 146
    iget-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    aget-object v3, v2, v0

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, ""

    .line 149
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 147
    :cond_9
    const-string v2, "{nonexistent} "

    goto :goto_8

    .line 151
    :cond_a
    const-string v0, "}"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 156
    :cond_b
    const-string v0, "processing input files ..."

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :cond_c
    const-wide/16 v2, 0x0

    goto/16 :goto_3

    .line 185
    :cond_d
    :try_start_2
    invoke-interface {v5, v0}, Lcom/vladium/emma/data/IMetaData;->merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/IMetaData;

    move-object v5, v0

    goto/16 :goto_5

    .line 196
    :cond_e
    invoke-interface {v7, v0}, Lcom/vladium/emma/data/ICoverageData;->merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData;

    move-object v7, v0

    goto :goto_6

    .line 202
    :cond_f
    invoke-virtual {v8}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataFileCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " file(s) read and merged in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v10, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    :cond_10
    if-eqz v5, :cond_11

    invoke-interface {v5}, Lcom/vladium/emma/data/IMetaData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 211
    :cond_11
    const-string v0, "nothing to do: no metadata found in any of the data files"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    .line 300
    :cond_12
    :goto_9
    return-void

    .line 216
    :cond_13
    if-nez v7, :cond_14

    .line 218
    :try_start_3
    const-string v0, "nothing to do: no runtime coverage data found in any of the data files"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    goto :goto_9

    .line 223
    :cond_14
    :try_start_4
    invoke-interface {v7}, Lcom/vladium/emma/data/ICoverageData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 225
    const-string v0, "no collected coverage data found in any of the data files [all reports will be empty]"

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 229
    :cond_15
    if-eqz v9, :cond_17

    .line 231
    if-eqz v5, :cond_16

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  merged metadata contains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 236
    :cond_16
    if-eqz v7, :cond_17

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  merged coverage data contains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Lcom/vladium/emma/data/ICoverageData;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 243
    :cond_17
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/vladium/emma/report/SourcePathCache;

    iget-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/vladium/emma/report/SourcePathCache;-><init>([Ljava/io/File;Z)V

    :goto_a
    move v2, v1

    .line 245
    :goto_b
    iget-object v3, p0, Lcom/vladium/emma/report/ReportProcessor;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    array-length v3, v3

    if-ge v2, v3, :cond_18

    .line 247
    iget-object v3, p0, Lcom/vladium/emma/report/ReportProcessor;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    aget-object v3, v3, v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    :try_start_5
    invoke-interface {v3, v5, v7, v0, p1}, Lcom/vladium/emma/report/IReportGenerator;->process(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    :try_start_6
    invoke-interface {v3}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 256
    :catch_0
    move-exception v0

    .line 259
    :try_start_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 266
    :try_start_8
    invoke-interface {v3}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 286
    :cond_18
    :goto_d
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    .line 289
    :goto_e
    if-eqz v4, :cond_12

    .line 291
    sget-object v0, Lcom/vladium/emma/report/ReportProcessor;->EXPECTED_FAILURES:[Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/vladium/util/exception/Exceptions;->unexpectedFailure(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 293
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "UNEXPECTED_FAILURE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v1, "this private build is unsupported"

    aput-object v1, v3, v13

    invoke-direct {v0, v2, v3, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-interface {v3}, Lcom/vladium/emma/report/IReportGenerator;->cleanup()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_f
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 270
    :catch_1
    move-exception v0

    .line 273
    :try_start_b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_d

    .line 276
    :catch_2
    move-exception v0

    .line 278
    :try_start_c
    new-instance v4, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "SECURITY_RESTRICTION:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EMMA"

    aput-object v6, v3, v5

    invoke-direct {v4, v2, v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 286
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    goto :goto_e

    .line 280
    :catch_3
    move-exception v0

    .line 286
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    move-object v4, v0

    .line 287
    goto :goto_e

    .line 286
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProcessor;->reset()V

    throw v0

    .line 298
    :cond_19
    throw v4

    .line 266
    :catch_4
    move-exception v3

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v2

    goto :goto_f

    :cond_1a
    move-object v0, v4

    goto :goto_a
.end method

.method public final declared-synchronized setDataPath([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 56
    :cond_0
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReportTypes([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
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

    .line 80
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Strings;->removeDuplicates([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 81
    array-length v0, v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty input: types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    array-length v0, v1

    new-array v2, v0, [Lcom/vladium/emma/report/IReportGenerator;

    .line 87
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 89
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/vladium/emma/report/AbstractReportGenerator;->create(Ljava/lang/String;)Lcom/vladium/emma/report/IReportGenerator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iput-object v2, p0, Lcom/vladium/emma/report/ReportProcessor;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSourcePath([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_sourcePath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateState()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/vladium/emma/Processor;->validateState()V

    .line 102
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_dataPath:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data path not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/report/ReportProcessor;->m_reportGenerators:[Lcom/vladium/emma/report/IReportGenerator;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "report types not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    return-void
.end method
