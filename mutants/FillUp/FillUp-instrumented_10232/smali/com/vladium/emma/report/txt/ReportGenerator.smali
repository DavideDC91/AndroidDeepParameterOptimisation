.class public final Lcom/vladium/emma/report/txt/ReportGenerator;
.super Lcom/vladium/emma/report/AbstractReportGenerator;
.source "ReportGenerator.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# static fields
.field private static final IO_BUF_SIZE:I = 0x8000

.field private static final LINE:Ljava/lang/String; = "-------------------------------------------------------------------------------"

.field private static final TYPE:Ljava/lang/String; = "txt"


# instance fields
.field private m_out:Ljava/io/BufferedWriter;

.field private m_queue:Ljava/util/LinkedList;

.field private m_separator:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;-><init>()V

    .line 517
    const/16 v0, 0x9

    iput-char v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    return-void
.end method

.method private addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V
    .locals 5

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    const/4 v0, 0x0

    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 357
    aget v3, p2, v0

    .line 358
    iget-object v4, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v3

    .line 360
    if-eqz v3, :cond_0

    .line 362
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    invoke-interface {v3}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_1

    iget-char v3, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_2
    invoke-direct {p0, v1}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/StringBuffer;)V

    .line 370
    return-void
.end method

.method private addItemRow(Lcom/vladium/emma/report/IItem;[I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 384
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0xb

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 386
    array-length v4, p2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    .line 388
    aget v0, p2, v2

    .line 389
    iget-object v5, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v5}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v5

    invoke-interface {p1, v0, v5}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v5

    .line 391
    if-eqz v5, :cond_0

    .line 393
    iget-object v6, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_metrics:[I

    aget v6, v6, v0

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_metrics:[I

    aget v0, v6, v0

    invoke-interface {v5, p1, v0}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 395
    :goto_1
    if-eqz v0, :cond_3

    .line 399
    invoke-interface {v5, p1, v3}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 400
    const/16 v0, 0x21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 408
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, -0x1

    if-eq v2, v0, :cond_1

    iget-char v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 393
    goto :goto_1

    .line 405
    :cond_3
    invoke-interface {v5, p1, v3}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 411
    :cond_4
    invoke-direct {p0, v3}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/StringBuffer;)V

    .line 412
    return-void
.end method

.method private addTitleRow(Ljava/lang/String;II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 339
    :goto_0
    if-ge v1, p2, :cond_0

    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->eol()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/StringBuffer;)V

    .line 341
    :goto_1
    if-ge v0, p3, :cond_1

    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->eol()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_1
    return-void
.end method

.method private close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 472
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 477
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iput-object v3, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    .line 488
    :cond_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 481
    :try_start_1
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    throw v0
.end method

.method private eol()V
    .locals 3

    .prologue
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private line()V
    .locals 3

    .prologue
    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    const-string v1, "-------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 454
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private openOutFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 494
    if-eqz p3, :cond_0

    .line 496
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 500
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 505
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 509
    :catch_1
    move-exception v0

    .line 512
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private row(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 441
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private row(Ljava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 95
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->close()V

    .line 97
    invoke-super {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->cleanup()V

    .line 98
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "txt"

    return-object v0
.end method

.method public process(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vladium/emma/report/txt/ReportGenerator;->initialize(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v4

    .line 69
    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 72
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 73
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    invoke-interface {v1}, Lcom/vladium/emma/report/IReportDataView;->getRoot()Lcom/vladium/emma/report/IItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 77
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/vladium/emma/report/IItem;->accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->line()V

    .line 81
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->close()V

    .line 84
    if-eqz v4, :cond_1

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-object v4, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] report generated in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method

.method public visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutFile()Ljava/io/File;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "coverage.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutFile(Ljava/io/File;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writing ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] report to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 123
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "EMMA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0.0.0 (unsupported private build)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, " report, generated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 133
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v4

    .line 142
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->line()V

    .line 145
    const-string v0, "OVERALL COVERAGE SUMMARY"

    invoke-direct {p0, v0, v3, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 148
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 151
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 155
    const-string v0, "OVERALL STATS SUMMARY"

    invoke-direct {p0, v0, v2, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total packages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vladium/emma/report/AllItem;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total classes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total methods:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_hasSrcFileInfo:Z

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total executable files:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_hasLineNumberInfo:Z

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total executable lines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/txt/ReportGenerator;->row(Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/vladium/emma/report/AllItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    if-le v0, v1, :cond_4

    move v1, v2

    .line 173
    :goto_0
    const-string v0, "COVERAGE BREAKDOWN BY PACKAGE"

    invoke-direct {p0, v0, v2, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 176
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v5

    invoke-interface {v5}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v5

    aget-object v0, v0, v5

    .line 177
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/AllItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 181
    if-nez v3, :cond_3

    .line 184
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    move v3, v2

    .line 189
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 191
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v1, v3

    .line 170
    goto :goto_0

    .line 195
    :cond_5
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v1

    .line 302
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->line()V

    .line 305
    const-string v0, "COVERAGE SUMMARY FOR CLASS ["

    invoke-virtual {p1}, Lcom/vladium/emma/report/ClassItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 311
    invoke-direct {p0, p1, v1}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 315
    const-string v0, "COVERAGE BREAKDOWN BY METHOD"

    invoke-direct {p0, v0, v3, v3}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 317
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v2

    aget-object v0, v0, v2

    .line 318
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/ClassItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    goto :goto_0

    .line 327
    :cond_0
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 200
    iget-boolean v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_verbose:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  report: processing package ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v4

    .line 204
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->line()V

    .line 207
    const-string v1, "COVERAGE SUMMARY FOR PACKAGE ["

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 210
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 213
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 217
    iget-object v1, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v3

    if-le v1, v3, :cond_3

    move v1, v2

    .line 221
    :goto_0
    iget-boolean v3, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_srcView:Z

    if-eqz v3, :cond_4

    const-string v3, "COVERAGE BREAKDOWN BY SOURCE FILE"

    .line 222
    :goto_1
    invoke-direct {p0, v3, v2, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 225
    iget-object v5, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    iget-boolean v3, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_srcView:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v3

    :goto_2
    aget-object v3, v5, v3

    .line 226
    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/PackageItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 230
    if-nez v3, :cond_2

    .line 233
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    move v3, v2

    .line 238
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 240
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v1, v0

    .line 217
    goto :goto_0

    .line 221
    :cond_4
    const-string v3, "COVERAGE BREAKDOWN BY CLASS"

    goto :goto_1

    .line 225
    :cond_5
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v3

    goto :goto_2

    .line 244
    :cond_6
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v4

    .line 251
    invoke-direct {p0}, Lcom/vladium/emma/report/txt/ReportGenerator;->line()V

    .line 254
    const-string v0, "COVERAGE SUMMARY FOR SOURCE FILE ["

    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 257
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 260
    invoke-direct {p0, p1, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    .line 264
    const-string v0, "COVERAGE BREAKDOWN BY CLASS AND METHOD"

    invoke-direct {p0, v0, v3, v3}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 267
    iget-object v0, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 268
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/SrcFileItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 272
    if-nez v1, :cond_1

    .line 275
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;[I)V

    move v1, v3

    .line 282
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] methods"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2, v2}, Lcom/vladium/emma/report/txt/ReportGenerator;->addTitleRow(Ljava/lang/String;II)V

    .line 285
    iget-object v6, p0, Lcom/vladium/emma/report/txt/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v7

    invoke-interface {v7}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v7

    aget-object v6, v6, v7

    .line 286
    invoke-interface {v0, v6}, Lcom/vladium/emma/report/IItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/MethodItem;

    .line 290
    invoke-direct {p0, v0, v4}, Lcom/vladium/emma/report/txt/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;[I)V

    goto :goto_0

    .line 295
    :cond_2
    return-object p2
.end method
