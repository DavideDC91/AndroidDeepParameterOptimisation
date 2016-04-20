.class public final Lcom/vladium/emma/report/lcov/ReportGenerator;
.super Lcom/vladium/emma/report/AbstractReportGenerator;
.source "ReportGenerator.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# static fields
.field private static final IO_BUF_SIZE:I = 0x8000

.field private static final TYPE:Ljava/lang/String; = "lcov"


# instance fields
.field private m_out:Ljava/io/BufferedWriter;

.field private m_queue:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;-><init>()V

    return-void
.end method

.method private close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 360
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iput-object v3, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    .line 371
    :cond_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 364
    :try_start_1
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    throw v0
.end method

.method private emitFileCoverage(Lcom/vladium/emma/report/SrcFileItem;)V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getFullVMName()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getParent()Lcom/vladium/emma/report/IItem;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/PackageItem;

    invoke-virtual {v0}, Lcom/vladium/emma/report/PackageItem;->getVMName()Ljava/lang/String;

    move-result-object v6

    .line 189
    iget-boolean v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_hasLineNumberInfo:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6, v5}, Lcom/vladium/util/Descriptors;->combineVMName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has no line number information"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 208
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v3

    aget-object v0, v0, v3

    .line 211
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/SrcFileItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    .line 212
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/ClassItem;

    .line 217
    invoke-virtual {v0}, Lcom/vladium/emma/report/ClassItem;->getName()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v0}, Lcom/vladium/emma/report/ClassItem;->getClassDescriptor()Lcom/vladium/emma/data/ClassDescriptor;

    .line 222
    invoke-virtual {v0}, Lcom/vladium/emma/report/ClassItem;->getCoverage()[[Z

    move-result-object v9

    .line 224
    iget-object v3, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v10

    invoke-interface {v10}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v10

    aget-object v3, v3, v10

    .line 226
    invoke-virtual {v0, v3}, Lcom/vladium/emma/report/ClassItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/MethodItem;

    .line 229
    invoke-virtual {v0}, Lcom/vladium/emma/report/MethodItem;->getName()Ljava/lang/String;

    move-result-object v11

    .line 230
    invoke-virtual {v0}, Lcom/vladium/emma/report/MethodItem;->getID()I

    move-result v3

    .line 233
    if-eqz v9, :cond_7

    .line 241
    aget-object v3, v9, v3

    const/4 v12, 0x0

    aget-boolean v3, v3, v12

    .line 244
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FN:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/vladium/emma/report/MethodItem;->getFirstLine()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "::"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FNDA:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v3, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    .line 300
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move v0, v2

    .line 304
    :goto_4
    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[source file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v5}, Lcom/vladium/util/Descriptors;->combineVMName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found in sourcepath]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 310
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 245
    goto :goto_3

    .line 213
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 253
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    .line 258
    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getLineCoverage()Lcom/vladium/util/IntObjectMap;

    move-result-object v4

    .line 259
    if-eqz v4, :cond_5

    move v0, v1

    :goto_5
    const-string v3, "null: lineCoverageMap"

    invoke-static {v0, v3}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 260
    invoke-virtual {v4}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v7

    .line 261
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    move v3, v2

    .line 263
    :goto_6
    array-length v0, v7

    if-ge v3, v0, :cond_6

    .line 265
    aget v8, v7, v3

    .line 266
    invoke-virtual {v4, v8}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;

    .line 273
    iget v9, v0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageStatus:I

    packed-switch v9, :pswitch_data_0

    .line 289
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid line coverage status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageStatus:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 263
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_5
    move v0, v2

    .line 259
    goto :goto_5

    .line 276
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DA:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V

    goto :goto_7

    .line 281
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DA:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",1"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V

    goto :goto_7

    .line 285
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DA:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",1"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_6
    move v0, v1

    .line 302
    goto/16 :goto_4

    :cond_7
    move v3, v2

    goto/16 :goto_2

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private openOutFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 377
    if-eqz p3, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 386
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    :catch_0
    move-exception v0

    .line 396
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    return-void

    .line 398
    :catch_1
    move-exception v0

    .line 402
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private row(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private row(Ljava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 97
    invoke-direct {p0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->close()V

    .line 98
    invoke-super {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->cleanup()V

    .line 99
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "lcov"

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
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vladium/emma/report/lcov/ReportGenerator;->initialize(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V

    .line 69
    const-wide/16 v0, 0x0

    .line 71
    iget-object v2, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 78
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 79
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    invoke-interface {v1}, Lcom/vladium/emma/report/IReportDataView;->getRoot()Lcom/vladium/emma/report/IItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/vladium/emma/report/IItem;->accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->close()V

    .line 86
    if-eqz v4, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v4, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->getType()Ljava/lang/String;

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

    .line 92
    :cond_1
    return-void

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method

.method public visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutFile()Ljava/io/File;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "coverage.lcov"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutFile(Ljava/io/File;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writing ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->getType()Ljava/lang/String;

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

    .line 119
    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vladium/emma/report/lcov/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 124
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/AllItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 127
    iget-object v2, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_1
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 314
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_verbose:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

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

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    aget-object v0, v1, v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/PackageItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v1

    .line 149
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 153
    iget-object v2, p0, Lcom/vladium/emma/report/lcov/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    goto :goto_0

    .line 156
    :cond_2
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 165
    const-string v0, "SF:"

    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getFullVMName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/lcov/ReportGenerator;->emitFileCoverage(Lcom/vladium/emma/report/SrcFileItem;)V

    .line 171
    const-string v0, "end_of_record"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;->row(Ljava/lang/String;)V

    .line 172
    return-object p2
.end method
