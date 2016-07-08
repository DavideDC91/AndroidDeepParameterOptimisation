.class public abstract Lcom/vladium/emma/report/ReportProperties;
.super Ljava/lang/Object;
.source "ReportProperties.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/ReportProperties$1;,
        Lcom/vladium/emma/report/ReportProperties$ReportPropertyMapper;,
        Lcom/vladium/emma/report/ReportProperties$ParsedProperties;
    }
.end annotation


# static fields
.field private static final COLUMNS:Lcom/vladium/util/ObjectIntMap;

.field private static final REMOVE_DUPLICATE_COLUMNS:Z = true

.field public static final REPORT_PROPERTY_MAPPER:Lcom/vladium/util/IProperties$IMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 562
    new-instance v0, Lcom/vladium/emma/report/ReportProperties$ReportPropertyMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/ReportProperties$ReportPropertyMapper;-><init>(Lcom/vladium/emma/report/ReportProperties$1;)V

    sput-object v0, Lcom/vladium/emma/report/ReportProperties;->REPORT_PROPERTY_MAPPER:Lcom/vladium/util/IProperties$IMapper;

    .line 564
    new-instance v0, Lcom/vladium/util/ObjectIntMap;

    invoke-direct {v0}, Lcom/vladium/util/ObjectIntMap;-><init>()V

    .line 566
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 567
    const-string v1, "class"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 568
    const-string v1, "method"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 569
    const-string v1, "block"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 570
    const-string v1, "line"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 572
    sput-object v0, Lcom/vladium/emma/report/ReportProperties;->COLUMNS:Lcom/vladium/util/ObjectIntMap;

    .line 573
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    const-string v0, "report."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p4}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 553
    :goto_0
    return-object p4

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method

.method public static parseProperties(Lcom/vladium/util/IProperties;Ljava/lang/String;)Lcom/vladium/emma/report/ReportProperties$ParsedProperties;
    .locals 14

    .prologue
    const/4 v5, 0x2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 246
    new-instance v4, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-direct {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;-><init>()V

    .line 248
    const-string v0, "out.encoding"

    invoke-static {p0, p1, v0, v1}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutEncoding(Ljava/lang/String;)V

    .line 254
    const-string v0, "out.dir"

    invoke-static {p0, p1, v0, v2}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v3, "out.file"

    invoke-static {p0, p1, v3, v1}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_5

    .line 261
    invoke-static {v0, v3}, Lcom/vladium/util/Files;->newFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 264
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutDir(Ljava/io/File;)V

    .line 266
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutFile(Ljava/io/File;)V

    .line 275
    :cond_1
    :goto_0
    const-string v0, "units"

    const-string v3, "instr"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v3, "count"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setUnitsType(I)V

    .line 287
    invoke-virtual {v4, v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setViewType(I)V

    .line 291
    const-string v0, "hideclasses"

    const-string v3, "true"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setHideClasses(Z)V

    .line 295
    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getViewType()I

    move-result v0

    if-nez v0, :cond_2

    .line 296
    invoke-virtual {v4, v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setHideClasses(Z)V

    .line 299
    :cond_2
    const-string v0, "depth"

    const-string v3, "package"

    invoke-static {p0, p1, v0, v1, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 302
    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    .line 316
    :goto_2
    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getHideClasses()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getViewType()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 320
    invoke-virtual {v4, v5}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    .line 323
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 325
    const-string v0, "columns"

    const-string v3, "class,method,block,line,name"

    invoke-static {p0, p1, v0, v1, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v3, Lcom/vladium/util/IntVector;

    invoke-direct {v3}, Lcom/vladium/util/IntVector;-><init>()V

    .line 328
    new-array v6, v2, [I

    .line 330
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v7, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 333
    sget-object v8, Lcom/vladium/emma/report/ReportProperties;->COLUMNS:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v8, v0, v6}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 336
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    const-string v4, "INVALID_COLUMN_NAME"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-direct {v3, v4, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 268
    :cond_5
    if-eqz v0, :cond_1

    .line 270
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutDir(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 276
    goto/16 :goto_1

    .line 303
    :cond_7
    const-string v3, "package"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 304
    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    goto :goto_2

    .line 305
    :cond_8
    const-string v3, "source"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 306
    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    goto/16 :goto_2

    .line 307
    :cond_9
    const-string v3, "class"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 308
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    goto/16 :goto_2

    .line 309
    :cond_a
    const-string v3, "method"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 310
    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setDepth(I)V

    goto/16 :goto_2

    .line 313
    :cond_b
    new-instance v3, Lcom/vladium/emma/EMMARuntimeException;

    const-string v4, "INVALID_PARAMETER_VALUE"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "depth"

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 339
    :cond_c
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 341
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    aget v0, v6, v1

    invoke-virtual {v3, v0}, Lcom/vladium/util/IntVector;->add(I)V

    goto/16 :goto_3

    .line 346
    :cond_d
    invoke-virtual {v3}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setColumnOrder([I)V

    .line 353
    const-string v0, "sort"

    const-string v3, "+block,+name"

    invoke-static {p0, p1, v0, v1, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v6, Lcom/vladium/util/IntVector;

    invoke-direct {v6}, Lcom/vladium/util/IntVector;-><init>()V

    .line 356
    new-array v7, v2, [I

    .line 358
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v8, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 390
    :goto_5
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 392
    sget-object v9, Lcom/vladium/emma/report/ReportProperties;->COLUMNS:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v9, v3, v7}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    .line 394
    aget v3, v7, v1

    invoke-virtual {v6, v3}, Lcom/vladium/util/IntVector;->add(I)V

    .line 395
    invoke-virtual {v6, v0}, Lcom/vladium/util/IntVector;->add(I)V

    .line 398
    :cond_e
    invoke-virtual {v6}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setSortOrder([I)V

    goto :goto_4

    .line 369
    :pswitch_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 371
    goto :goto_5

    .line 375
    :pswitch_2
    const/4 v0, -0x1

    .line 376
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 402
    :cond_f
    const-string v0, "metrics"

    const-string v3, "method:70,block:80,line:80,class:100"

    invoke-static {p0, p1, v0, v2, v3}, Lcom/vladium/emma/report/ReportProperties;->getReportProperty(Lcom/vladium/util/IProperties;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v3, Lcom/vladium/util/IntIntMap;

    invoke-direct {v3}, Lcom/vladium/util/IntIntMap;-><init>()V

    .line 405
    new-array v2, v2, [I

    .line 408
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 410
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 414
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 415
    if-lez v7, :cond_10

    .line 420
    add-int/lit8 v8, v7, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 421
    const-wide/16 v10, 0x0

    cmpg-double v10, v8, v10

    if-ltz v10, :cond_10

    const-wide v10, 0x4059400000000000L    # 101.0

    cmpl-double v10, v8, v10

    if-gtz v10, :cond_10

    .line 429
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 434
    sget-object v7, Lcom/vladium/emma/report/ReportProperties;->COLUMNS:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v7, v0, v2}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    .line 436
    aget v0, v2, v1

    mul-double/2addr v8, v12

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v3, v0, v7}, Lcom/vladium/util/IntIntMap;->put(II)V

    goto :goto_6

    .line 423
    :catch_0
    move-exception v0

    .line 425
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_6

    .line 441
    :cond_11
    invoke-virtual {v4, v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setMetrics(Lcom/vladium/util/IntIntMap;)V

    .line 444
    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->validate()V

    .line 446
    return-object v4

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
