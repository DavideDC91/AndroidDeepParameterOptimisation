.class final Lcom/vladium/util/args/OptsParser;
.super Ljava/lang/Object;
.source "OptsParser.java"

# interfaces
.implements Lcom/vladium/util/args/IOptsParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/args/OptsParser$Token;,
        Lcom/vladium/util/args/OptsParser$MetadataParser;,
        Lcom/vladium/util/args/OptsParser$OptDefMetadata;,
        Lcom/vladium/util/args/OptsParser$OptDef;,
        Lcom/vladium/util/args/OptsParser$Opts;,
        Lcom/vladium/util/args/OptsParser$Opt;
    }
.end annotation


# static fields
.field private static final CANONICAL_OPT_PREFIX:I = 0x1

.field private static final OPT_PREFIXES:[Ljava/lang/String;

.field private static final OPT_VALUE_SEPARATORS:[C

.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_FREE_ARGS:I = 0x2

.field private static final STATE_OPT:I = 0x0

.field private static final STATE_OPT_VALUE:I = 0x1


# instance fields
.field private final m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

.field private final m_msgPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1592
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    .line 1593
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vladium/util/args/OptsParser;->OPT_VALUE_SEPARATORS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3as
        0x3ds
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: metadataResourceName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_0
    iput-object p3, p0, Lcom/vladium/util/args/OptsParser;->m_msgPrefix:Ljava/lang/String;

    .line 1411
    const/4 v1, 0x0

    .line 1414
    :try_start_0
    invoke-static {p1, p2}, Lcom/vladium/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v1

    .line 1415
    if-nez v1, :cond_2

    .line 1416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] could not be loaded via ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    throw v0

    .line 1419
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1421
    invoke-static {v0, p4}, Lcom/vladium/util/args/OptsParser;->parseOptDefMetadata(Ljava/io/Reader;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1425
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1427
    :cond_3
    :goto_1
    return-void

    .line 1425
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/vladium/util/args/OptsParser;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method private formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_msgPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1583
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_msgPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getOptCanonicalName(Ljava/lang/String;Lcom/vladium/util/args/OptsParser$OptDef;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v2

    .line 410
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 412
    aget-object v3, v2, v0

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_1
    return-object v0

    .line 410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to detect pattern prefix for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getOptNameAndValue(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 464
    aput-object v0, p1, v1

    .line 465
    aput-object v0, p1, v6

    move v0, v1

    .line 467
    :goto_0
    sget-object v2, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 469
    sget-object v2, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 471
    sget-object v2, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 474
    const v0, 0x7fffffff

    move v2, v0

    move v3, v1

    move v0, v1

    .line 476
    :goto_1
    sget-object v4, Lcom/vladium/util/args/OptsParser;->OPT_VALUE_SEPARATORS:[C

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 478
    sget-object v4, Lcom/vladium/util/args/OptsParser;->OPT_VALUE_SEPARATORS:[C

    aget-char v4, v4, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 479
    if-lez v4, :cond_0

    if-ge v4, v2, :cond_0

    .line 481
    sget-object v2, Lcom/vladium/util/args/OptsParser;->OPT_VALUE_SEPARATORS:[C

    aget-char v3, v2, v0

    move v2, v4

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_1
    if-eqz v3, :cond_3

    .line 488
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 489
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 499
    :cond_2
    :goto_2
    return-void

    .line 493
    :cond_3
    aput-object v5, p1, v1

    goto :goto_2

    .line 467
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isOpt(Ljava/lang/String;ILcom/vladium/util/args/OptsParser$OptDef;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 437
    if-eqz p2, :cond_1

    .line 442
    invoke-virtual {p2}, Lcom/vladium/util/args/OptsParser$OptDef;->getValueCardinality()[I

    move-result-object v0

    .line 444
    aget v0, v0, v2

    if-ge p1, v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 449
    :goto_1
    sget-object v3, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 451
    sget-object v3, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v3, v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static parseOptDefMetadata(Ljava/io/Reader;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDefMetadata;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1499
    new-instance v0, Lcom/vladium/util/args/OptsParser$MetadataParser;

    invoke-direct {v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;-><init>()V

    .line 1500
    invoke-virtual {v0, p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->parse(Ljava/io/Reader;)[Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v3

    .line 1516
    new-instance v4, Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-direct {v4}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;-><init>()V

    move v0, v1

    .line 1517
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 1519
    aget-object v2, v3, v0

    invoke-virtual {v4, v2}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->addOptDef(Lcom/vladium/util/args/OptsParser$OptDef;)V

    .line 1517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1523
    :cond_0
    if-eqz p1, :cond_1

    .line 1525
    new-instance v0, Lcom/vladium/util/args/OptsParser$OptDef;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/vladium/util/args/OptsParser$OptDef;-><init>(Z)V

    .line 1527
    invoke-virtual {v0, p1}, Lcom/vladium/util/args/OptsParser$OptDef;->setNames([Ljava/lang/String;)V

    .line 1528
    const-string v2, "display usage information"

    invoke-virtual {v0, v2}, Lcom/vladium/util/args/OptsParser$OptDef;->setDescription(Ljava/lang/String;)V

    .line 1529
    sget-object v2, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO:[I

    invoke-virtual {v0, v2}, Lcom/vladium/util/args/OptsParser$OptDef;->setValueCardinality([I)V

    .line 1530
    invoke-virtual {v0, v1}, Lcom/vladium/util/args/OptsParser$OptDef;->setRequired(Z)V

    .line 1531
    invoke-virtual {v0, v1}, Lcom/vladium/util/args/OptsParser$OptDef;->setDetailedOnly(Z)V

    .line 1532
    invoke-virtual {v0, v1}, Lcom/vladium/util/args/OptsParser$OptDef;->setMergeable(Z)V

    .line 1534
    invoke-virtual {v4, v0}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->addOptDef(Lcom/vladium/util/args/OptsParser$OptDef;)V

    :cond_1
    move v0, v1

    .line 1539
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_9

    .line 1541
    aget-object v5, v3, v0

    .line 1543
    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getRequiresSet()[Ljava/lang/String;

    move-result-object v6

    .line 1544
    if-eqz v6, :cond_4

    move v2, v1

    .line 1546
    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 1548
    aget-object v7, v6, v2

    invoke-virtual {v4, v7, v9}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getOptDef(Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v7

    .line 1549
    if-nez v7, :cond_2

    .line 1550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] specifies an unknown option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in its \'requires\' set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1552
    :cond_2
    if-ne v7, v5, :cond_3

    .line 1553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] specifies itself in its \'requires\' set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1557
    :cond_4
    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getExcludesSet()[Ljava/lang/String;

    move-result-object v6

    .line 1558
    if-eqz v6, :cond_8

    move v2, v1

    .line 1560
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 1562
    aget-object v7, v6, v2

    invoke-virtual {v4, v7, v9}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getOptDef(Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v7

    .line 1563
    if-nez v7, :cond_5

    .line 1564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] specifies an unknown option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in its \'excludes\' set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    :cond_5
    invoke-virtual {v7}, Lcom/vladium/util/args/OptsParser$OptDef;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] specifies a required option ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in its \'excludes\' set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1569
    :cond_6
    if-ne v7, v5, :cond_7

    .line 1570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] specifies itself in its \'excludes\' set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1539
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1575
    :cond_9
    return-object v4
.end method


# virtual methods
.method public declared-synchronized parse([Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser$IOpts;
    .locals 12

    .prologue
    .line 120
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: args"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_0
    :try_start_1
    new-instance v6, Lcom/vladium/util/args/OptsParser$Opts;

    invoke-direct {v6}, Lcom/vladium/util/args/OptsParser$Opts;-><init>()V

    .line 125
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    const/4 v3, 0x0

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v9, p1

    if-ge v0, v9, :cond_e

    .line 138
    aget-object v9, p1, v0

    .line 139
    if-nez v9, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null input: args["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    packed-switch v5, :pswitch_data_0

    move v11, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v11

    :goto_1
    move v11, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v11

    .line 310
    goto :goto_0

    .line 147
    :pswitch_0
    invoke-static {v9, v3, v4}, Lcom/vladium/util/args/OptsParser;->isOpt(Ljava/lang/String;ILcom/vladium/util/args/OptsParser$OptDef;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 152
    const/4 v4, 0x0

    .line 154
    invoke-static {v9, v7}, Lcom/vladium/util/args/OptsParser;->getOptNameAndValue(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x0

    aget-object v3, v7, v3

    .line 159
    iget-object v5, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-virtual {v5, v3, v8}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getOptDef(Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v5

    .line 161
    if-nez v5, :cond_2

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown option \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 168
    const/4 v3, 0x3

    :goto_2
    move v11, v4

    move-object v4, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v11

    .line 207
    goto :goto_1

    .line 174
    :cond_2
    invoke-static {v3, v5}, Lcom/vladium/util/args/OptsParser;->getOptCanonicalName(Ljava/lang/String;Lcom/vladium/util/args/OptsParser$OptDef;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const/4 v2, 0x0

    aget-object v9, v8, v2

    .line 177
    invoke-virtual {v6, v1}, Lcom/vladium/util/args/OptsParser$Opts;->getOpt(Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$Opt;

    move-result-object v2

    .line 179
    invoke-virtual {v5}, Lcom/vladium/util/args/OptsParser$OptDef;->isMergeable()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 181
    if-nez v2, :cond_3

    .line 183
    new-instance v2, Lcom/vladium/util/args/OptsParser$Opt;

    invoke-direct {v2, v3, v1, v9}, Lcom/vladium/util/args/OptsParser$Opt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v6, v2, v5, v3}, Lcom/vladium/util/args/OptsParser$Opts;->addOpt(Lcom/vladium/util/args/OptsParser$Opt;Lcom/vladium/util/args/OptsParser$OptDef;Ljava/lang/String;)V

    .line 202
    :cond_3
    :goto_3
    const/4 v1, 0x1

    aget-object v1, v7, v1

    .line 204
    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 189
    :cond_5
    if-nez v2, :cond_6

    .line 191
    new-instance v2, Lcom/vladium/util/args/OptsParser$Opt;

    invoke-direct {v2, v3, v1, v9}, Lcom/vladium/util/args/OptsParser$Opt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6, v2, v5, v3}, Lcom/vladium/util/args/OptsParser$Opts;->addOpt(Lcom/vladium/util/args/OptsParser$Opt;Lcom/vladium/util/args/OptsParser$OptDef;Ljava/lang/String;)V

    goto :goto_3

    .line 196
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "option \'"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' cannot be specified more than once"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    goto :goto_3

    .line 213
    :cond_7
    const/4 v5, 0x2

    move v11, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v11

    .line 216
    goto/16 :goto_1

    .line 223
    :pswitch_1
    if-eqz v1, :cond_9

    .line 228
    const/4 v3, 0x1

    .line 230
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->getValueCardinality()[I

    move-result-object v9

    .line 232
    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ge v9, v10, :cond_8

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "option \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vladium/util/args/OptsParser$Opt;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\' does not accept values: \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 236
    const/4 v5, 0x3

    :goto_4
    move v1, v3

    .line 284
    :goto_5
    const/4 v3, 0x0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    .line 286
    goto/16 :goto_1

    .line 240
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 241
    invoke-virtual {v2, v1}, Lcom/vladium/util/args/OptsParser$Opt;->addValue(Ljava/lang/String;)V

    goto :goto_4

    .line 246
    :cond_9
    aget-object v1, p1, v0

    .line 248
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->getValueCardinality()[I

    move-result-object v9

    .line 250
    invoke-static {v1, v3, v4}, Lcom/vladium/util/args/OptsParser;->isOpt(Ljava/lang/String;ILcom/vladium/util/args/OptsParser$OptDef;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 252
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ge v3, v1, :cond_a

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "option \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/vladium/util/args/OptsParser$Opt;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\' does not accept fewer than "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x0

    aget v5, v9, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " value(s)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 256
    const/4 v5, 0x3

    move v1, v3

    goto :goto_5

    .line 259
    :cond_a
    const/4 v5, 0x0

    move v1, v3

    goto :goto_5

    .line 263
    :cond_b
    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v3, v9, :cond_c

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 267
    invoke-virtual {v2, v1}, Lcom/vladium/util/args/OptsParser$Opt;->addValue(Ljava/lang/String;)V

    move v1, v3

    goto :goto_5

    .line 279
    :cond_c
    const/4 v5, 0x2

    move v1, v3

    goto :goto_5

    .line 291
    :pswitch_2
    aget-object v5, p1, v0

    invoke-static {v5, v3, v4}, Lcom/vladium/util/args/OptsParser;->isOpt(Ljava/lang/String;ILcom/vladium/util/args/OptsParser$OptDef;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 293
    const/4 v5, 0x0

    move v11, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v11

    goto/16 :goto_1

    .line 297
    :cond_d
    invoke-virtual {v6, p1, v0}, Lcom/vladium/util/args/OptsParser$Opts;->setFreeArgs([Ljava/lang/String;I)V

    .line 312
    :cond_e
    :pswitch_3
    array-length v1, p1

    if-ne v0, v1, :cond_f

    .line 314
    if-eqz v2, :cond_10

    .line 316
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->getValueCardinality()[I

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    aget v1, v0, v1

    if-ge v3, v1, :cond_f

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/vladium/util/args/OptsParser$Opt;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not accept fewer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 332
    :cond_f
    :goto_6
    invoke-virtual {v6}, Lcom/vladium/util/args/OptsParser$Opts;->getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_19

    .line 337
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 338
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getRequiredOpts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 340
    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 342
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 325
    :cond_10
    invoke-virtual {v6, p1, v0}, Lcom/vladium/util/args/OptsParser$Opts;->setFreeArgs([Ljava/lang/String;I)V

    goto :goto_6

    .line 345
    :cond_11
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 347
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing required option \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    goto :goto_8

    .line 353
    :cond_12
    const/4 v0, 0x0

    :goto_9
    array-length v1, v2

    if-ge v0, v1, :cond_19

    .line 355
    aget-object v3, v2, v0

    .line 356
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getOptDef(Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v4

    .line 368
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->getRequiresSet()[Ljava/lang/String;

    move-result-object v5

    .line 369
    if-eqz v5, :cond_14

    .line 371
    const/4 v1, 0x0

    :goto_a
    array-length v7, v5

    if-ge v1, v7, :cond_14

    .line 373
    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Lcom/vladium/util/args/OptsParser$Opts;->getOpt(Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$Opt;

    move-result-object v7

    if-nez v7, :cond_13

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "option \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' requires option \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 371
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 380
    :cond_14
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->getExcludesSet()[Ljava/lang/String;

    move-result-object v5

    .line 381
    if-eqz v5, :cond_16

    .line 383
    const/4 v1, 0x0

    :goto_b
    array-length v7, v5

    if-ge v1, v7, :cond_16

    .line 385
    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Lcom/vladium/util/args/OptsParser$Opts;->getOpt(Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$Opt;

    move-result-object v7

    .line 386
    if-eqz v7, :cond_15

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "option \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' cannot be used with option \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/vladium/util/args/OptsParser$Opt;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vladium/util/args/OptsParser;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vladium/util/args/OptsParser$Opts;->addError(Ljava/lang/String;)V

    .line 383
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 393
    :cond_16
    invoke-virtual {v4}, Lcom/vladium/util/args/OptsParser$OptDef;->isUsage()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 395
    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v6, v1}, Lcom/vladium/util/args/OptsParser$Opts;->setUsageRequested(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 395
    :cond_18
    const/4 v1, 0x2

    goto :goto_c

    .line 400
    :cond_19
    monitor-exit p0

    return-object v6

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized usage(Ljava/io/PrintWriter;II)V
    .locals 10

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vladium/util/args/OptsParser;->OPT_PREFIXES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getOptDefs()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$OptDef;

    .line 53
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->isDetailedOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v1, "  "

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->isPattern()Z

    move-result v6

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    if-eqz v6, :cond_2

    const/16 v1, 0x2a

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v7

    .line 66
    const/4 v1, 0x0

    :goto_1
    array-length v8, v7

    if-ge v1, v8, :cond_4

    .line 68
    aget-object v8, v7, v1

    .line 69
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 71
    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    if-eqz v6, :cond_3

    const/16 v8, 0x2a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getValueMnemonic()Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_5

    .line 82
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rsub-int/lit8 v5, v1, 0x10

    .line 88
    const/4 v1, 0x2

    if-ge v5, v1, :cond_6

    .line 91
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 94
    const/4 v1, 0x0

    :goto_2
    const/16 v5, 0x10

    if-ge v1, v5, :cond_7

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_7

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 101
    :cond_7
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "{required} "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_8
    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_9
    const/4 v0, 0x2

    if-ge p2, v0, :cond_a

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser;->m_metadata:Lcom/vladium/util/args/OptsParser$OptDefMetadata;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->getUsageOptDef()Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 112
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  {use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' option to see detailed usage help}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_a
    monitor-exit p0

    return-void
.end method
