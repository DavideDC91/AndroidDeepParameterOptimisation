.class public final Lcom/vladium/emma/data/MergeProcessor;
.super Lcom/vladium/emma/Processor;
.source "MergeProcessor.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# static fields
.field private static final EXPECTED_FAILURES:[Ljava/lang/Class;


# instance fields
.field private m_dataFileCount:I

.field private m_dataPath:[Ljava/io/File;

.field private m_sdataOutFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 359
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

    sput-object v0, Lcom/vladium/emma/data/MergeProcessor;->EXPECTED_FAILURES:[Ljava/lang/Class;

    .line 365
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/vladium/emma/Processor;-><init>()V

    .line 336
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    .line 337
    return-void
.end method

.method public static create()Lcom/vladium/emma/data/MergeProcessor;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/vladium/emma/data/MergeProcessor;

    invoke-direct {v0}, Lcom/vladium/emma/data/MergeProcessor;-><init>()V

    return-object v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataFileCount:I

    .line 343
    return-void
.end method


# virtual methods
.method protected _run(Lcom/vladium/util/IProperties;)V
    .locals 14

    .prologue
    .line 96
    iget-object v9, p0, Lcom/vladium/emma/data/MergeProcessor;->m_log:Lcom/vladium/logging/Logger;

    .line 98
    iget-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v10

    .line 99
    if-eqz v10, :cond_7

    .line 101
    const-string v0, "[EMMA v0.0, build 0 (unsupported private build) (unknown)]"

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 104
    const-string v0, "input data path:"

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 105
    const-string v0, "{"

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    aget-object v2, v1, v0

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 111
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "{nonexistent} "

    goto :goto_1

    .line 113
    :cond_1
    const-string v0, "}"

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_sdataOutFile:Ljava/io/File;

    .line 123
    if-nez v0, :cond_23

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "session.out.file"

    const-string v2, "coverage.es"

    invoke-interface {p1, v1, v2}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 128
    :goto_3
    const/4 v6, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v4, 0x0

    .line 137
    :try_start_0
    invoke-virtual {v9}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 139
    :goto_4
    const/4 v0, 0x0

    move v7, v0

    :goto_5
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    array-length v0, v0

    if-ge v7, v0, :cond_b

    .line 141
    iget-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    aget-object v0, v0, v7

    .line 142
    if-eqz v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processing input file ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "] ..."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-static {v0}, Lcom/vladium/emma/data/DataFactory;->load(Ljava/io/File;)[Lcom/vladium/emma/data/IMergeable;

    move-result-object v8

    .line 146
    const/4 v0, 0x0

    aget-object v0, v8, v0

    check-cast v0, Lcom/vladium/emma/data/IMetaData;

    .line 147
    if-eqz v0, :cond_4

    .line 149
    if-eqz v10, :cond_3

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

    invoke-virtual {v9, v11}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 151
    :cond_3
    if-nez v5, :cond_9

    move-object v5, v0

    .line 157
    :cond_4
    :goto_6
    const/4 v0, 0x1

    aget-object v0, v8, v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData;

    .line 158
    if-eqz v0, :cond_6

    .line 160
    if-eqz v10, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  loaded "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lcom/vladium/emma/data/ICoverageData;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " coverage data entries"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 162
    :cond_5
    if-nez v4, :cond_a

    move-object v4, v0

    .line 168
    :cond_6
    :goto_7
    iget v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataFileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataFileCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_5

    .line 117
    :cond_7
    const-string v0, "processing input files ..."

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 137
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    .line 154
    :cond_9
    :try_start_2
    invoke-interface {v5, v0}, Lcom/vladium/emma/data/IMetaData;->merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/IMetaData;

    move-object v5, v0

    goto :goto_6

    .line 165
    :cond_a
    invoke-interface {v4, v0}, Lcom/vladium/emma/data/ICoverageData;->merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData;

    move-object v4, v0

    goto :goto_7

    .line 171
    :cond_b
    invoke-virtual {v9}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataFileCount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " file(s) read and merged in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v12, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 178
    :cond_c
    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/vladium/emma/data/IMetaData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/vladium/emma/data/ICoverageData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    :cond_e
    const-string v0, "nothing to do: no metadata or coverage data found in any of the input files"

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    invoke-direct {p0}, Lcom/vladium/emma/data/MergeProcessor;->reset()V

    .line 326
    :cond_f
    return-void

    :cond_10
    move-object v7, v4

    move-object v8, v5

    .line 193
    :goto_8
    if-eqz v10, :cond_12

    .line 195
    if-eqz v8, :cond_11

    .line 197
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  merged metadata contains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 200
    :cond_11
    if-eqz v7, :cond_12

    .line 202
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

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 208
    :cond_12
    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :goto_9
    const-string v2, "sdataOutFile not null"

    invoke-static {v0, v2}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    .line 215
    const/4 v3, 0x0

    .line 217
    invoke-static {v1}, Lcom/vladium/util/Files;->canonicalizeFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 219
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 221
    iget-object v2, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/vladium/util/Files;->canonicalizeFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 222
    invoke-virtual {v4, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 224
    const/4 v0, 0x1

    move v5, v0

    .line 229
    :goto_b
    if-eqz v5, :cond_14

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 232
    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/vladium/util/Files;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v2, ".et"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :try_start_4
    const-string v2, ".et"

    invoke-static {v0, v1, v2}, Lcom/vladium/util/Files;->createTempFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 248
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the specified output file is one of the input files ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all merged data will be written to a temp file first ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 254
    :cond_14
    invoke-virtual {v9}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    .line 259
    :goto_c
    if-eqz v3, :cond_19

    move-object v2, v3

    .line 263
    :goto_d
    if-eqz v8, :cond_15

    :try_start_6
    invoke-interface {v8}, Lcom/vladium/emma/data/IMetaData;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 264
    :cond_15
    const/4 v8, 0x0

    invoke-static {v7, v2, v8}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/ICoverageData;Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    :goto_e
    if-eqz v5, :cond_1f

    .line 286
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v3, v4, v2}, Lcom/vladium/util/Files;->renameFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 289
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not rename temporary file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: make sure the original file is not locked and can be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    :try_start_8
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "SECURITY_RESTRICTION:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EMMA"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 312
    invoke-direct {p0}, Lcom/vladium/emma/data/MergeProcessor;->reset()V

    move-object v0, v1

    .line 315
    :goto_f
    if-eqz v0, :cond_f

    .line 317
    sget-object v1, Lcom/vladium/emma/data/MergeProcessor;->EXPECTED_FAILURES:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/vladium/util/exception/Exceptions;->unexpectedFailure(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 319
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "UNEXPECTED_FAILURE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "this private build is unsupported"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :catch_1
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    .line 189
    :goto_10
    :try_start_9
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v7, v2

    move-object v8, v3

    goto/16 :goto_8

    .line 208
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 219
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 242
    :catch_2
    move-exception v0

    .line 245
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 306
    :catch_3
    move-exception v0

    .line 312
    invoke-direct {p0}, Lcom/vladium/emma/data/MergeProcessor;->reset()V

    goto :goto_f

    .line 254
    :cond_18
    const-wide/16 v0, 0x0

    goto/16 :goto_c

    :cond_19
    move-object v2, v4

    .line 259
    goto/16 :goto_d

    .line 265
    :cond_1a
    if-eqz v7, :cond_1b

    :try_start_a
    invoke-interface {v7}, Lcom/vladium/emma/data/ICoverageData;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 266
    :cond_1b
    const/4 v7, 0x0

    invoke-static {v8, v2, v7}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMetaData;Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_e

    .line 270
    :catch_4
    move-exception v0

    .line 272
    if-eqz v2, :cond_1c

    :try_start_b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 275
    :cond_1c
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/vladium/emma/data/MergeProcessor;->reset()V

    throw v0

    .line 268
    :cond_1d
    :try_start_c
    new-instance v10, Lcom/vladium/emma/data/SessionData;

    invoke-direct {v10, v8, v7}, Lcom/vladium/emma/data/SessionData;-><init>(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)V

    const/4 v7, 0x0

    invoke-static {v10, v2, v7}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/ISessionData;Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_e

    .line 277
    :catch_5
    move-exception v0

    .line 279
    if-eqz v2, :cond_1e

    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 281
    :cond_1e
    throw v0

    .line 293
    :cond_1f
    invoke-virtual {v9}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "merged/compacted data written to ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] {in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 312
    :cond_20
    invoke-direct {p0}, Lcom/vladium/emma/data/MergeProcessor;->reset()V

    move-object v0, v6

    .line 313
    goto/16 :goto_f

    .line 324
    :cond_21
    throw v0

    .line 186
    :catch_6
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_10

    :cond_22
    move v5, v0

    goto/16 :goto_b

    :cond_23
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public final declared-synchronized setDataPath([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionOutFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_sdataOutFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
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

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_sdataOutFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected validateState()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/vladium/emma/Processor;->validateState()V

    .line 85
    iget-object v0, p0, Lcom/vladium/emma/data/MergeProcessor;->m_dataPath:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data path not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method
