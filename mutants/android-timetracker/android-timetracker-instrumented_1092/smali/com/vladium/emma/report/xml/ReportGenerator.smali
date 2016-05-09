.class public final Lcom/vladium/emma/report/xml/ReportGenerator;
.super Lcom/vladium/emma/report/AbstractReportGenerator;
.source "ReportGenerator.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;
    }
.end annotation


# static fields
.field private static final IO_BUF_SIZE:I = 0x10000

.field private static final TYPE:Ljava/lang/String; = "xml"


# instance fields
.field private m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;-><init>()V

    .line 258
    return-void
.end method

.method private close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    if-eqz v0, :cond_0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->flush()V

    .line 492
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iput-object v3, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    .line 503
    :cond_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 496
    :try_start_1
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    throw v0
.end method

.method private closeElementTag(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    goto :goto_0
.end method

.method private emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v2

    .line 377
    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 383
    invoke-direct {p0, v3}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 385
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const-string v5, " name=\""

    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 386
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    .line 389
    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 392
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 394
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v4}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->incIndent()V

    .line 396
    invoke-direct {p0, p1, v2}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItemCoverage(Lcom/vladium/emma/report/IItem;[I)V

    .line 398
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v2

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    if-le v2, v1, :cond_0

    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 400
    :cond_0
    if-eqz v0, :cond_2

    .line 402
    invoke-interface {p1, p2}, Lcom/vladium/emma/report/IItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/vladium/emma/report/IItem;->accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->decIndent()V

    .line 414
    invoke-direct {p0, v3}, Lcom/vladium/emma/report/xml/ReportGenerator;->endElement(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private emitItemCoverage(Lcom/vladium/emma/report/IItem;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 424
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 426
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 428
    aget v4, p2, v0

    .line 430
    if-eqz v4, :cond_0

    .line 432
    iget-object v5, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v5}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v4

    .line 434
    if-eqz v4, :cond_0

    .line 436
    const-string v5, "coverage"

    invoke-direct {p0, v5}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 438
    iget-object v5, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const-string v6, " type=\""

    invoke-virtual {v5, v6}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-interface {v4}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 440
    iget-object v5, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const-string v6, "\" value=\""

    invoke-virtual {v5, v6}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 441
    invoke-interface {v4, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 442
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    .line 444
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 446
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 448
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    return-void
.end method

.method private emitStatsCount(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 366
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    .line 369
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 370
    return-void
.end method

.method private endElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    .line 477
    return-void
.end method

.method private eol()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->newLine()V

    .line 483
    return-void
.end method

.method private openElementTag(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(I)V

    .line 459
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private openOutFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 509
    if-eqz p3, :cond_0

    .line 511
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 515
    :cond_0
    new-instance v0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;-><init>(Ljava/io/Writer;II)V

    iput-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 529
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 524
    :catch_1
    move-exception v0

    .line 527
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->close()V

    .line 88
    invoke-super {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->cleanup()V

    .line 89
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "xml"

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vladium/emma/report/xml/ReportGenerator;->initialize(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v2

    .line 69
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    invoke-interface {v3}, Lcom/vladium/emma/report/IReportDataView;->getRoot()Lcom/vladium/emma/report/IItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Lcom/vladium/emma/report/IItem;->accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->close()V

    .line 76
    if-eqz v2, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    iget-object v4, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] report generated in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v2, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method

.method public visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutFile()Ljava/io/File;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "coverage.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutFile(Ljava/io/File;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writing ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] report to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vladium/emma/report/xml/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 119
    const-string v1, "<!-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, "EMMA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0.0.0 (unsupported private build)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, " report, generated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, " -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->write(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->newLine()V

    .line 129
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :try_start_2
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 137
    const-string v0, "report"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 139
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->incIndent()V

    .line 142
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 143
    const-string v0, "stats"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 145
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->incIndent()V

    .line 147
    const-string v0, "packages"

    invoke-virtual {p1}, Lcom/vladium/emma/report/AllItem;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitStatsCount(Ljava/lang/String;I)V

    .line 148
    const-string v0, "classes"

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitStatsCount(Ljava/lang/String;I)V

    .line 149
    const-string v0, "methods"

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitStatsCount(Ljava/lang/String;I)V

    .line 151
    iget-boolean v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_hasSrcFileInfo:Z

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "srcfiles"

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitStatsCount(Ljava/lang/String;I)V

    .line 155
    iget-boolean v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_hasLineNumberInfo:Z

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "srclines"

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitStatsCount(Ljava/lang/String;I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->decIndent()V

    .line 160
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 161
    const-string v0, "stats"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->endElement(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 165
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->openElementTag(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->closeElementTag(Z)V

    .line 167
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->incIndent()V

    .line 169
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V

    .line 172
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->decIndent()V

    .line 173
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 174
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->endElement(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_out:Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;

    invoke-virtual {v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->decIndent()V

    .line 177
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator;->eol()V

    .line 178
    const-string v0, "report"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->endElement(Ljava/lang/String;)V

    .line 185
    return-object p2

    .line 131
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 180
    :catch_1
    move-exception v0

    .line 182
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-object p2

    .line 229
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visit(Lcom/vladium/emma/report/MethodItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-object p2

    .line 243
    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  report: processing package ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 195
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    iget-boolean v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    :goto_0
    aget-object v0, v1, v0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V

    .line 203
    return-object p2

    .line 195
    :cond_1
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/xml/ReportGenerator;->emitItem(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/ItemComparator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-object p2

    .line 214
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
