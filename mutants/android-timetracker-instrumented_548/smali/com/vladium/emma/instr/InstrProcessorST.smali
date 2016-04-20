.class final Lcom/vladium/emma/instr/InstrProcessorST;
.super Lcom/vladium/emma/instr/InstrProcessor;
.source "InstrProcessorST.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/instr/InstrProcessorST$1;,
        Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;,
        Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;,
        Lcom/vladium/emma/instr/InstrProcessorST$Job;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field private static final CLEANUP_TEMP_ARCHIVE_ON_ERRORS:Z = true

.field private static final DO_DEPENDS_CHECKING:Z = true

.field private static final DO_RAF_EXTENSION:Z = true

.field private static final EXPECTED_FAILURES:[Ljava/lang/Class;

.field private static final JOB_QUEUE_SIZE:I = 0x80


# instance fields
.field private m_archiveOut:Ljava/util/jar/JarOutputStream;

.field private m_baos:Lcom/vladium/util/ByteArrayOStream;

.field private m_currentArchiveTS:J

.field private final m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

.field private m_jobPos:I

.field private final m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

.field private m_mdata:Lcom/vladium/emma/data/IMetaData;

.field private m_origArchiveFile:Ljava/io/File;

.field private m_readbuf:[B

.field private m_readpos:I

.field private m_tempArchiveFile:Ljava/io/File;

.field private m_timeStamp:J

.field private m_visitor:Lcom/vladium/emma/instr/InstrVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1045
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

    sput-object v0, Lcom/vladium/emma/instr/InstrProcessorST;->EXPECTED_FAILURES:[Ljava/lang/Class;

    .line 1051
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessor;-><init>()V

    .line 798
    const/16 v0, 0x80

    new-array v0, v0, [Lcom/vladium/emma/instr/InstrProcessorST$Job;

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    .line 799
    new-instance v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-direct {v0}, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    .line 800
    return-void
.end method

.method private addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    iget v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->drainJobQueue()V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    iget v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    aput-object p1, v0, v1

    .line 932
    return-void
.end method

.method private drainJobQueue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 937
    :goto_0
    iget v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    if-ge v0, v2, :cond_1

    .line 939
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    aget-object v2, v2, v0

    .line 940
    if-eqz v2, :cond_0

    .line 942
    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 943
    invoke-virtual {v2}, Lcom/vladium/emma/instr/InstrProcessorST$Job;->run()V

    .line 937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    :cond_1
    iput v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    .line 948
    return-void
.end method

.method private ensureReadCapacity(I)V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    array-length v0, v0

    .line 1012
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    .line 1013
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    .line 1015
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
    .line 956
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v3, v0

    .line 958
    invoke-direct {p0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->ensureReadCapacity(I)V

    .line 960
    const/4 v2, 0x0

    .line 963
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    const/4 v0, 0x0

    .line 967
    :goto_0
    if-ge v0, v3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    sub-int v4, v3, v0

    invoke-virtual {v1, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 968
    add-int/2addr v0, v2

    goto :goto_0

    .line 969
    :cond_0
    iput v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 973
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 975
    :cond_1
    :goto_1
    return-void

    .line 973
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

    .line 983
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v1, v2

    .line 985
    if-ltz v1, :cond_1

    .line 987
    invoke-direct {p0, v1}, Lcom/vladium/emma/instr/InstrProcessorST;->ensureReadCapacity(I)V

    .line 991
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    sub-int v3, v1, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 992
    add-int/2addr v0, v2

    goto :goto_0

    .line 993
    :cond_0
    iput v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    .line 1005
    :goto_1
    return-void

    .line 997
    :cond_1
    const v1, 0x8000

    invoke-direct {p0, v1}, Lcom/vladium/emma/instr/InstrProcessorST;->ensureReadCapacity(I)V

    .line 999
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 1000
    :goto_2
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    invoke-virtual {v2, v3, v0, v1}, Lcom/vladium/util/ByteArrayOStream;->write([BII)V

    goto :goto_2

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->copyByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    .line 1003
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    array-length v0, v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    goto :goto_1
.end method

.method static writeFile([BLjava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    const/4 v1, 0x0

    .line 809
    if-eqz p2, :cond_0

    .line 811
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 815
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    array-length v0, p0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 818
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 822
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 824
    :cond_1
    return-void

    .line 822
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method static writeZipEntry([BLjava/util/zip/ZipOutputStream;Ljava/util/zip/ZipEntry;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    if-eqz p3, :cond_0

    .line 831
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 834
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 866
    :goto_0
    return-void

    .line 838
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v0

    .line 845
    :cond_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 849
    array-length v1, p0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 850
    array-length v1, p0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 852
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 853
    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 854
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 856
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 859
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v0
.end method


# virtual methods
.method protected _run(Lcom/vladium/util/IProperties;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 623
    iget-object v4, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 625
    invoke-virtual {v4}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v5

    .line 626
    if-eqz v5, :cond_a

    .line 628
    const-string v0, "[EMMA v0.0, build 0 (unsupported private build) (unknown)]"

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 631
    const-string v0, "instrumentation path:"

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 632
    const-string v0, "{"

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    move v0, v1

    .line 633
    :goto_0
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrPath:[Ljava/io/File;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 635
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrPath:[Ljava/io/File;

    aget-object v3, v2, v0

    .line 636
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 638
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_0
    const-string v2, "{nonexistent} "

    goto :goto_1

    .line 640
    :cond_1
    const-string v0, "}"

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instrumentation output mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 650
    :goto_2
    const/4 v2, 0x0

    .line 653
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 654
    iput-wide v6, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_timeStamp:J

    .line 657
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrPath:[Ljava/io/File;

    iget-boolean v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_canonical:Z

    invoke-static {v0, v3, p0}, Lcom/vladium/util/IPathEnumerator$Factory;->create([Ljava/io/File;ZLcom/vladium/util/IPathEnumerator$IPathHandler;)Lcom/vladium/util/IPathEnumerator;

    move-result-object v8

    .line 661
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v3, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outDir:Ljava/io/File;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->createDir(Ljava/io/File;Z)V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v3, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v3, :cond_3

    .line 665
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outDir:Ljava/io/File;

    const-string v3, "classes"

    invoke-static {v0, v3}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 666
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->createDir(Ljava/io/File;Z)V

    .line 668
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outDir:Ljava/io/File;

    const-string v3, "lib"

    invoke-static {v0, v3}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 669
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->createDir(Ljava/io/File;Z)V

    .line 674
    :cond_3
    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdataOutFile:Ljava/io/File;

    .line 675
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdataOutMerge:Ljava/lang/Boolean;

    .line 677
    if-nez v3, :cond_4

    .line 678
    new-instance v3, Ljava/io/File;

    const-string v9, "metadata.out.file"

    const-string v10, "coverage.em"

    invoke-interface {p1, v9, v10}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    :cond_4
    if-nez v0, :cond_5

    .line 683
    const-string v0, "metadata.out.merge"

    sget-object v9, Lcom/vladium/emma/EMMAProperties;->DEFAULT_META_DATA_OUT_MERGE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v9}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 689
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 691
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metadata output file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 692
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metadata output merge mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 698
    :cond_6
    const v9, 0x8000

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    .line 699
    const/4 v9, 0x0

    iput v9, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    .line 700
    new-instance v9, Lcom/vladium/util/ByteArrayOStream;

    const v10, 0x8000

    invoke-direct {v9, v10}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    iput-object v9, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 703
    const/4 v9, 0x0

    iput v9, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobPos:I

    .line 705
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_currentArchiveTS:J

    .line 707
    invoke-static {p1}, Lcom/vladium/emma/data/CoverageOptionsFactory;->create(Lcom/vladium/util/IProperties;)Lcom/vladium/emma/data/CoverageOptions;

    move-result-object v9

    .line 708
    new-instance v10, Lcom/vladium/emma/instr/InstrVisitor;

    invoke-direct {v10, v9}, Lcom/vladium/emma/instr/InstrVisitor;-><init>(Lcom/vladium/emma/data/CoverageOptions;)V

    iput-object v10, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    .line 710
    invoke-static {v9}, Lcom/vladium/emma/data/DataFactory;->newMetaData(Lcom/vladium/emma/data/CoverageOptions;)Lcom/vladium/emma/data/IMetaData;

    move-result-object v9

    iput-object v9, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    invoke-interface {v8}, Lcom/vladium/util/IPathEnumerator;->enumerate()V

    .line 716
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->drainJobQueue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :try_start_2
    invoke-virtual {v4}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 727
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "instrumentation path processed in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v6, v8, v6

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classInstrs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " class(es) instrumented, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resource(s) copied]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :cond_7
    if-eqz v5, :cond_8

    .line 740
    :try_start_3
    iget-object v5, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    if-eqz v5, :cond_8

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "metadata contains "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v6}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 746
    :cond_8
    iget-object v5, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v5}, Lcom/vladium/emma/data/IMetaData;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 748
    const-string v0, "no output created: metadata is empty"

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->reset()V

    move-object v0, v2

    .line 780
    :goto_5
    if-eqz v0, :cond_f

    .line 782
    sget-object v2, Lcom/vladium/emma/instr/InstrProcessorST;->EXPECTED_FAILURES:[Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/vladium/util/exception/Exceptions;->unexpectedFailure(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 784
    new-instance v2, Lcom/vladium/emma/EMMARuntimeException;

    const-string v3, "UNEXPECTED_FAILURE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "this private build is unsupported"

    aput-object v1, v4, v12

    invoke-direct {v2, v3, v4, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    .line 647
    :cond_a
    const-string v0, "processing instrumentation path ..."

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 685
    :cond_b
    :try_start_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 718
    :catch_0
    move-exception v0

    .line 720
    new-instance v2, Lcom/vladium/emma/EMMARuntimeException;

    const-string v3, "INSTR_IO_FAILURE"

    invoke-direct {v2, v3, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 767
    :catch_1
    move-exception v0

    .line 769
    :try_start_5
    new-instance v2, Lcom/vladium/emma/EMMARuntimeException;

    const-string v3, "SECURITY_RESTRICTION:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EMMA"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 777
    invoke-virtual {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->reset()V

    move-object v0, v2

    .line 778
    goto :goto_5

    .line 752
    :cond_c
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 753
    iget-object v5, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v5, v3, v8}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMetaData;Ljava/io/File;Z)V

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 756
    invoke-virtual {v4}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metadata "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "merged into"

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] {in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v8, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ms}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 762
    :catch_2
    move-exception v0

    .line 764
    :try_start_7
    new-instance v2, Lcom/vladium/emma/EMMARuntimeException;

    const-string v4, "OUT_IO_FAILURE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-direct {v2, v4, v5, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 771
    :catch_3
    move-exception v0

    .line 777
    invoke-virtual {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->reset()V

    goto/16 :goto_5

    .line 758
    :cond_d
    :try_start_8
    const-string v0, "written to"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 777
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->reset()V

    throw v0

    .line 789
    :cond_e
    throw v0

    .line 791
    :cond_f
    return-void
.end method

.method public final handleArchiveEnd(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 345
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handleArchiveEnd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_currentArchiveTS:J

    .line 349
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v1, v2, :cond_4

    .line 353
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->drainJobQueue()V

    .line 355
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 356
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v1, v2, :cond_4

    .line 369
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/vladium/util/Files;->renameFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not rename temporary file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: make sure the original file is not locked and can be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 379
    :cond_2
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "handleArchiveEnd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renamed temp archive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_3
    iput-object v4, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    iput-object v4, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    .line 384
    :cond_4
    return-void
.end method

.method public final handleArchiveEntry(Ljava/util/jar/JarInputStream;Ljava/util/zip/ZipEntry;)V
    .locals 16

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 153
    invoke-virtual {v3}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "handleArchiveEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v6, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v2, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v6, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v2, v6, :cond_4

    :cond_1
    const/4 v2, 0x1

    move v8, v2

    .line 160
    :goto_0
    const/4 v9, 0x0

    .line 162
    const-string v2, ".class"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v2, v4}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 178
    :cond_2
    const/4 v11, 0x0

    .line 182
    const/4 v2, 0x0

    .line 188
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v6, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v5, v6, :cond_12

    .line 190
    new-instance v6, Ljava/io/File;

    const/16 v2, 0x2e

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v5, ".class"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v5}, Lcom/vladium/emma/instr/InstrProcessorST;->getFullOutFile(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-static {v4}, Lcom/vladium/util/Descriptors;->javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/vladium/emma/data/IMetaData;->hasDescriptor(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 287
    if-eqz v11, :cond_3

    .line 290
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :cond_3
    :goto_1
    return-void

    .line 158
    :cond_4
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 295
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 201
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 203
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_8

    .line 205
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    .line 206
    const-wide/16 v14, 0x0

    cmp-long v7, v4, v14

    if-gez v7, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_currentArchiveTS:J

    .line 210
    :cond_6
    cmp-long v4, v4, v12

    if-gtz v4, :cond_8

    .line 212
    invoke-virtual {v3}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination file ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] skipped: more recent than the source"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :cond_7
    if-eqz v11, :cond_3

    .line 290
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 292
    :catch_1
    move-exception v2

    .line 295
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_8
    move-object v10, v2

    .line 219
    :goto_2
    :try_start_4
    invoke-direct/range {p0 .. p2}, Lcom/vladium/emma/instr/InstrProcessorST;->readZipEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    invoke-static {v2, v3}, Lcom/vladium/jcd/parser/ClassDefParser;->parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v3

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v5, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    :goto_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-virtual/range {v2 .. v7}, Lcom/vladium/emma/instr/InstrVisitor;->process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-boolean v2, v2, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_instrumented:Z

    if-eqz v2, :cond_e

    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classInstrs:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classInstrs:I

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v4, v4, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/vladium/emma/data/IMetaData;->add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v2}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-static {v3, v2}, Lcom/vladium/jcd/compiler/ClassWriter;->writeClassTable(Lcom/vladium/jcd/cls/ClassDef;Ljava/io/OutputStream;)V

    .line 239
    if-eqz v8, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_timeStamp:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 244
    new-instance v2, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v4}, Lcom/vladium/util/ByteArrayOStream;->copyByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;-><init>(Ljava/util/zip/ZipOutputStream;[BLjava/util/zip/ZipEntry;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    :cond_9
    :goto_4
    if-eqz v11, :cond_a

    .line 290
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_a
    :goto_5
    move v8, v9

    .line 321
    :cond_b
    :goto_6
    if-eqz v8, :cond_3

    .line 325
    :try_start_6
    invoke-direct/range {p0 .. p2}, Lcom/vladium/emma/instr/InstrProcessorST;->readZipEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    new-array v2, v2, [B

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    .line 331
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_timeStamp:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 332
    new-instance v3, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;-><init>(Ljava/util/zip/ZipOutputStream;[BLjava/util/zip/ZipEntry;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 334
    :catch_2
    move-exception v2

    .line 337
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 223
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 256
    :cond_d
    :try_start_7
    new-instance v2, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v3}, Lcom/vladium/util/ByteArrayOStream;->copyByteArray()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v10, v3, v4}, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;-><init>(Ljava/io/File;[BZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 272
    :catch_3
    move-exception v2

    .line 287
    if-eqz v11, :cond_a

    .line 290
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 292
    :catch_4
    move-exception v2

    .line 295
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 259
    :cond_e
    if-eqz v8, :cond_9

    .line 264
    :try_start_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    new-array v2, v2, [B

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    .line 268
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_timeStamp:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 269
    new-instance v3, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;-><init>(Ljava/util/zip/ZipOutputStream;[BLjava/util/zip/ZipEntry;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 280
    :catch_5
    move-exception v2

    .line 283
    :try_start_a
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 287
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_f

    .line 290
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 295
    :cond_f
    throw v2

    .line 292
    :catch_6
    move-exception v2

    .line 295
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 292
    :catch_7
    move-exception v2

    .line 295
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v3, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 313
    :cond_10
    if-eqz v8, :cond_11

    const-string v2, "META-INF/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 314
    const/4 v8, 0x0

    .line 315
    :cond_11
    if-eqz v8, :cond_b

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 316
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_12
    move-object v10, v2

    goto/16 :goto_2
.end method

.method public final handleArchiveStart(Ljava/io/File;Ljava/io/File;Ljava/util/jar/Manifest;)V
    .locals 8

    .prologue
    .line 71
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 72
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleArchiveStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {p1, p2}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_currentArchiveTS:J

    .line 85
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v2, :cond_3

    .line 87
    :cond_1
    if-eqz p3, :cond_4

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p3}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    .line 93
    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 94
    if-nez p3, :cond_2

    sget-object v3, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    new-instance v3, Ljava/util/jar/Attributes$Name;

    const-string v4, "Created-By"

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    const-string v4, "EMMA v0.0.0 (unsupported private build)"

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v3, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instrumented version of ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v3, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instrumented on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_timeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/vladium/util/Property;->getSystemFingerprint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v3, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v2, v3, :cond_6

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/vladium/emma/instr/InstrProcessorST;->getFullOutFile(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, v2, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_3
    :goto_2
    return-void

    .line 87
    :cond_4
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    goto/16 :goto_0

    .line 113
    :cond_5
    :try_start_1
    new-instance v0, Ljava/util/jar/JarOutputStream;

    invoke-direct {v0, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :cond_6
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v3, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v2, v3, :cond_3

    .line 126
    invoke-static {p1, p2}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/vladium/util/Files;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "emma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, ".et"

    .line 134
    :try_start_2
    const-string v3, ".et"

    invoke-static {p1, v2, v3}, Lcom/vladium/util/Files;->createTempFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    .line 135
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "handleArchiveStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created temp archive ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_7
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, v2, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 141
    :catch_1
    move-exception v0

    .line 144
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_8
    :try_start_3
    new-instance v0, Ljava/util/jar/JarOutputStream;

    invoke-direct {v0, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public final handleDirEnd(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 575
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handleDirEnd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v1, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v1, :cond_1

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessorST;->drainJobQueue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_1
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final handleDirStart(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 389
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 390
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handleDirStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v1, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v1, :cond_1

    .line 397
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, v4}, Lcom/vladium/emma/instr/InstrProcessorST;->getFullOutDir(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, v0, v4}, Lcom/vladium/emma/instr/InstrProcessorST;->createDir(Ljava/io/File;Z)V

    .line 400
    :cond_1
    return-void
.end method

.method public final handleFile(Ljava/io/File;Ljava/io/File;)V
    .locals 18

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_log:Lcom/vladium/logging/Logger;

    .line 405
    invoke-virtual {v5}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "handleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v8, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v4, v8, :cond_3

    const/4 v4, 0x1

    move v10, v4

    .line 411
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v8, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v4, v8, :cond_4

    const/4 v4, 0x1

    move v11, v4

    .line 414
    :goto_1
    const/4 v12, 0x0

    .line 416
    const-string v4, ".class"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 418
    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x6

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2e

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 430
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v6, v4}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 432
    :cond_1
    const/4 v13, 0x0

    .line 435
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 436
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/vladium/emma/instr/InstrProcessorST;->getFullOutFile(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v14

    .line 440
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v8, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v7, v8, :cond_7

    .line 445
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-static {v4}, Lcom/vladium/util/Descriptors;->javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/vladium/emma/data/IMetaData;->hasDescriptor(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 525
    if-eqz v13, :cond_2

    .line 528
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    :cond_2
    :goto_2
    return-void

    .line 410
    :cond_3
    const/4 v4, 0x0

    move v10, v4

    goto :goto_0

    .line 411
    :cond_4
    const/4 v4, 0x0

    move v11, v4

    goto :goto_1

    .line 530
    :catch_0
    move-exception v4

    .line 533
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 451
    :cond_5
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 453
    const-wide/16 v16, 0x0

    cmp-long v4, v8, v16

    if-lez v4, :cond_7

    .line 455
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    .line 457
    cmp-long v4, v16, v8

    if-gtz v4, :cond_7

    .line 459
    invoke-virtual {v5}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destination file ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] skipped: more recent that the source file"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    :cond_6
    if-eqz v13, :cond_2

    .line 528
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 530
    :catch_1
    move-exception v4

    .line 533
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 466
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vladium/emma/instr/InstrProcessorST;->readFile(Ljava/io/File;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    invoke-static {v4, v5}, Lcom/vladium/jcd/parser/ClassDefParser;->parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v5

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v7, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-virtual/range {v4 .. v9}, Lcom/vladium/emma/instr/InstrVisitor;->process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-boolean v4, v4, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_instrumented:Z

    if-eqz v4, :cond_c

    .line 476
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classInstrs:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classInstrs:I

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v6, v6, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/vladium/emma/data/IMetaData;->add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v4}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-static {v5, v4}, Lcom/vladium/jcd/compiler/ClassWriter;->writeClassTable(Lcom/vladium/jcd/cls/ClassDef;Ljava/io/OutputStream;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v4}, Lcom/vladium/util/ByteArrayOStream;->copyByteArray()[B

    move-result-object v4

    .line 494
    new-instance v5, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;

    invoke-direct {v5, v14, v4, v11}, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;-><init>(Ljava/io/File;[BZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 525
    :cond_8
    :goto_4
    if-eqz v13, :cond_9

    .line 528
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_9
    :goto_5
    move v10, v12

    .line 549
    :cond_a
    if-eqz v10, :cond_2

    .line 553
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 554
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vladium/emma/instr/InstrProcessorST;->readFile(Ljava/io/File;)V

    .line 556
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    new-array v4, v4, [B

    .line 557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    .line 560
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/vladium/emma/instr/InstrProcessorST;->getFullOutFile(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v5

    .line 562
    new-instance v6, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;

    invoke-direct {v6, v5, v4, v11}, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;-><init>(Ljava/io/File;[BZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 564
    :catch_2
    move-exception v4

    .line 567
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 471
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 496
    :cond_c
    if-eqz v10, :cond_8

    .line 503
    :try_start_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    new-array v4, v4, [B

    .line 504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readpos:I

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/vladium/emma/instr/InstrProcessorST;->m_classCopies:I

    .line 507
    new-instance v5, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;

    invoke-direct {v5, v14, v4, v11}, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;-><init>(Ljava/io/File;[BZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vladium/emma/instr/InstrProcessorST;->addJob(Lcom/vladium/emma/instr/InstrProcessorST$Job;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 510
    :catch_3
    move-exception v4

    .line 525
    if-eqz v13, :cond_9

    .line 528
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 530
    :catch_4
    move-exception v4

    .line 533
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 530
    :catch_5
    move-exception v4

    .line 533
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 518
    :catch_6
    move-exception v4

    .line 521
    :try_start_9
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 525
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_d

    .line 528
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 533
    :cond_d
    throw v4

    .line 530
    :catch_7
    move-exception v4

    .line 533
    new-instance v5, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v5, v4}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    .line 599
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 600
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_readbuf:[B

    .line 601
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 603
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_jobs:[Lcom/vladium/emma/instr/InstrProcessorST$Job;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    if-eqz v0, :cond_1

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 614
    :cond_2
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_archiveOut:Ljava/util/jar/JarOutputStream;

    .line 615
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_origArchiveFile:Ljava/io/File;

    .line 616
    iput-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST;->m_tempArchiveFile:Ljava/io/File;

    .line 618
    invoke-super {p0}, Lcom/vladium/emma/instr/InstrProcessor;->reset()V

    .line 619
    return-void

    .line 608
    :catch_0
    move-exception v0

    goto :goto_1
.end method
