.class public final Lcom/vladium/emma/rt/ClassPathProcessorST;
.super Ljava/lang/Object;
.source "ClassPathProcessorST.java"

# interfaces
.implements Lcom/vladium/util/IPathEnumerator$IPathHandler;
.implements Lcom/vladium/emma/IAppErrorCodes;


# static fields
.field private static final BUF_SIZE:I = 0x8000


# instance fields
.field private m_archiveFile:Ljava/io/File;

.field private m_baos:Lcom/vladium/util/ByteArrayOStream;

.field private final m_cache:Ljava/util/Map;

.field private final m_canonical:Z

.field private m_classCount:I

.field private final m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

.field private final m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

.field private final m_log:Lcom/vladium/logging/Logger;

.field private final m_mdata:Lcom/vladium/emma/data/IMetaData;

.field private final m_path:[Ljava/io/File;

.field private m_readbuf:[B

.field private m_readpos:I

.field private final m_visitor:Lcom/vladium/emma/instr/InstrVisitor;


# direct methods
.method constructor <init>([Ljava/io/File;ZLcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/filter/IInclExclFilter;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    iput-object p1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_path:[Ljava/io/File;

    .line 295
    iput-boolean p2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_canonical:Z

    .line 296
    iput-object p3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 297
    iput-object p4, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    .line 298
    iput-object p5, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_cache:Ljava/util/Map;

    .line 299
    new-instance v0, Lcom/vladium/emma/instr/InstrVisitor;

    invoke-interface {p3}, Lcom/vladium/emma/data/IMetaData;->getOptions()Lcom/vladium/emma/data/CoverageOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/instr/InstrVisitor;-><init>(Lcom/vladium/emma/data/CoverageOptions;)V

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    .line 300
    new-instance v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-direct {v0}, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    .line 302
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 303
    return-void
.end method

.method private ensureReadCapacity(I)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    array-length v0, v0

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    .line 371
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    .line 373
    :cond_0
    return-void
.end method

.method private readFile(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v3, v0

    .line 316
    invoke-direct {p0, v3}, Lcom/vladium/emma/rt/ClassPathProcessorST;->ensureReadCapacity(I)V

    .line 318
    const/4 v2, 0x0

    .line 321
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    if-ge v0, v3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    sub-int v4, v3, v0

    invoke-virtual {v1, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 326
    add-int/2addr v0, v2

    goto :goto_0

    .line 327
    :cond_0
    iput v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 333
    :cond_1
    :goto_1
    return-void

    .line 331
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private readZipEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v1, v2

    .line 343
    if-ltz v1, :cond_1

    .line 345
    invoke-direct {p0, v1}, Lcom/vladium/emma/rt/ClassPathProcessorST;->ensureReadCapacity(I)V

    .line 349
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    sub-int v3, v1, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 350
    add-int/2addr v0, v2

    goto :goto_0

    .line 351
    :cond_0
    iput v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    .line 363
    :goto_1
    return-void

    .line 355
    :cond_1
    const v1, 0x8000

    invoke-direct {p0, v1}, Lcom/vladium/emma/rt/ClassPathProcessorST;->ensureReadCapacity(I)V

    .line 357
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 358
    :goto_2
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    iget-object v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    invoke-virtual {v2, v3, v0, v1}, Lcom/vladium/util/ByteArrayOStream;->write([BII)V

    goto :goto_2

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->copyByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    .line 361
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    array-length v0, v0

    iput v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    goto :goto_1
.end method


# virtual methods
.method public handleArchiveEnd(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_archiveFile:Ljava/io/File;

    .line 176
    return-void
.end method

.method public handleArchiveEntry(Ljava/util/jar/JarInputStream;Ljava/util/zip/ZipEntry;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "handleArchiveEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 97
    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v2, v9}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    :cond_1
    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/vladium/emma/rt/ClassPathProcessorST;->readZipEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    .line 105
    const-string v3, "jar:"

    iget-object v4, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_archiveFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    if-eqz v1, :cond_7

    .line 125
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 139
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    iget v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    invoke-static {v0, v1}, Lcom/vladium/jcd/parser/ClassDefParser;->parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/vladium/jcd/cls/ClassDef;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_classCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_classCount:I

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-virtual/range {v0 .. v5}, Lcom/vladium/emma/instr/InstrVisitor;->process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V

    .line 147
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v1, v1, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vladium/emma/data/IMetaData;->add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    .line 156
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 158
    iget v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    new-array v0, v0, [B

    .line 159
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_cache:Ljava/util/Map;

    new-instance v2, Lcom/vladium/emma/rt/ClassPathCacheEntry;

    invoke-direct {v2, v0, v8}, Lcom/vladium/emma/rt/ClassPathCacheEntry;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 171
    :cond_3
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :catch_1
    move-exception v0

    .line 122
    if-eqz v1, :cond_6

    .line 125
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v1

    .line 132
    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    .line 131
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :catch_3
    move-exception v0

    .line 118
    :try_start_4
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 125
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 131
    :cond_4
    throw v0

    .line 128
    :catch_4
    move-exception v0

    .line 131
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 164
    :catch_5
    move-exception v0

    .line 167
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    move-object v8, v1

    goto/16 :goto_0

    :cond_7
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public handleArchiveStart(Ljava/io/File;Ljava/io/File;Ljava/util/jar/Manifest;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_archiveFile:Ljava/io/File;

    .line 84
    return-void
.end method

.method public handleDirEnd(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public handleDirStart(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public handleFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "handleFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 195
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v0, v9}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    :cond_1
    const/4 v2, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Lcom/vladium/emma/rt/ClassPathProcessorST;->readFile(Ljava/io/File;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 221
    if-eqz v1, :cond_7

    .line 224
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 238
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    iget v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    invoke-static {v0, v1}, Lcom/vladium/jcd/parser/ClassDefParser;->parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/vladium/jcd/cls/ClassDef;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_classCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_classCount:I

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-virtual/range {v0 .. v5}, Lcom/vladium/emma/instr/InstrVisitor;->process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V

    .line 247
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v1, v1, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vladium/emma/data/IMetaData;->add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    .line 256
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 258
    iget v0, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    new-array v0, v0, [B

    .line 259
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v1, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_cache:Ljava/util/Map;

    new-instance v2, Lcom/vladium/emma/rt/ClassPathCacheEntry;

    invoke-direct {v2, v0, v8}, Lcom/vladium/emma/rt/ClassPathCacheEntry;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 271
    :cond_3
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :catch_1
    move-exception v0

    .line 221
    if-eqz v1, :cond_6

    .line 224
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v1

    .line 231
    goto :goto_0

    .line 227
    :catch_2
    move-exception v0

    .line 230
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :catch_3
    move-exception v0

    .line 217
    :try_start_4
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 224
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 230
    :cond_4
    throw v0

    .line 227
    :catch_4
    move-exception v0

    .line 230
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :catch_5
    move-exception v0

    .line 267
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    move-object v8, v1

    goto/16 :goto_0

    :cond_7
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const v4, 0x8000

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_path:[Ljava/io/File;

    iget-boolean v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_canonical:Z

    invoke-static {v2, v3, p0}, Lcom/vladium/util/IPathEnumerator$Factory;->create([Ljava/io/File;ZLcom/vladium/util/IPathEnumerator$IPathHandler;)Lcom/vladium/util/IPathEnumerator;

    move-result-object v2

    .line 52
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readbuf:[B

    .line 53
    const/4 v3, 0x0

    iput v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_readpos:I

    .line 54
    new-instance v3, Lcom/vladium/util/ByteArrayOStream;

    invoke-direct {v3, v4}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    iput-object v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 56
    iget-object v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v3}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "processing classpath ..."

    invoke-virtual {v3, v4}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 64
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/vladium/util/IPathEnumerator;->enumerate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v2, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    iget-object v4, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_log:Lcom/vladium/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vladium/emma/rt/ClassPathProcessorST;->m_classCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " class(es) processed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "INSTR_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
