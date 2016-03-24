.class public final Lcom/vladium/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/vladium/logging/ILogLevels;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/logging/Logger$1;,
        Lcom/vladium/logging/Logger$ThreadLocalStack;
    }
.end annotation


# static fields
.field private static final COMMA_DELIMITERS:Ljava/lang/String; = ", \t\r\n"

.field private static final FLUSH_LOG:Z = true

.field private static final PREFIX_TO_STRIP:Ljava/lang/String; = "com.vladium."

.field private static final PREFIX_TO_STRIP_LENGTH:I

.field private static final STATIC_LOGGER:Lcom/vladium/logging/Logger;

.field private static final THREAD_LOCAL_STACK:Lcom/vladium/logging/Logger$ThreadLocalStack;


# instance fields
.field private final m_classMask:Ljava/util/Set;

.field private final m_level:I

.field private final m_out:Ljava/io/PrintWriter;

.field private final m_prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 554
    const-string v1, "com.vladium."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/vladium/logging/Logger;->PREFIX_TO_STRIP_LENGTH:I

    .line 563
    new-instance v1, Lcom/vladium/logging/Logger$ThreadLocalStack;

    invoke-direct {v1, v0}, Lcom/vladium/logging/Logger$ThreadLocalStack;-><init>(Lcom/vladium/logging/Logger$1;)V

    sput-object v1, Lcom/vladium/logging/Logger;->THREAD_LOCAL_STACK:Lcom/vladium/logging/Logger$ThreadLocalStack;

    .line 569
    const-string v1, "emma"

    const-class v2, Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getAppProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;

    move-result-object v1

    .line 575
    const-string v2, "verbosity.level"

    const-string v3, "info"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-static {v2}, Lcom/vladium/logging/Logger;->stringToLevel(Ljava/lang/String;)I

    move-result v2

    .line 584
    const-string v3, "verbosity.filter"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    if-eqz v1, :cond_0

    .line 589
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ", \t\r\n"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-lez v1, :cond_0

    .line 592
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 593
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_0
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const-string v3, "EMMA"

    invoke-static {v2, v1, v3, v0}, Lcom/vladium/logging/Logger;->create(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)Lcom/vladium/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vladium/logging/Logger;->STATIC_LOGGER:Lcom/vladium/logging/Logger;

    .line 608
    return-void
.end method

.method private constructor <init>(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Lcom/vladium/logging/Logger;->m_level:I

    .line 429
    iput-object p2, p0, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    .line 430
    iput-object p3, p0, Lcom/vladium/logging/Logger;->m_prefix:Ljava/lang/String;

    .line 431
    iput-object p4, p0, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    .line 432
    return-void
.end method

.method private _log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 490
    iget v0, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt p1, v0, :cond_8

    if-ltz p1, :cond_8

    .line 492
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vladium/util/ClassLoaderResolver;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 493
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/vladium/logging/Logger;->m_prefix:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_prefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 495
    if-nez v1, :cond_0

    if-eqz p2, :cond_5

    .line 497
    :cond_0
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    if-eqz v1, :cond_3

    .line 501
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v1, "com.vladium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    sget v1, Lcom/vladium/logging/Logger;->PREFIX_TO_STRIP_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_1
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 509
    if-lez v1, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 511
    :goto_1
    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 512
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :cond_3
    if-eqz p2, :cond_4

    .line 519
    const-string v0, "::"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :cond_4
    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_5
    iget-object v0, p0, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    .line 528
    if-eqz p3, :cond_6

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_6
    if-eqz p4, :cond_7

    .line 532
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 533
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 535
    invoke-virtual {p4, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 536
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 538
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :cond_7
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 544
    :cond_8
    return-void

    .line 493
    :cond_9
    const-string v0, ""

    goto :goto_0

    :cond_a
    move-object v1, v0

    goto :goto_1
.end method

.method private _log(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 442
    iget v0, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt p1, v0, :cond_7

    if-ltz p1, :cond_7

    .line 444
    if-eqz p4, :cond_8

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vladium/util/ClassLoaderResolver;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 445
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/vladium/logging/Logger;->m_prefix:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 447
    if-nez v0, :cond_0

    if-eqz p2, :cond_5

    .line 449
    :cond_0
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 455
    const-string v1, "com.vladium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    sget v1, Lcom/vladium/logging/Logger;->PREFIX_TO_STRIP_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_1
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 461
    if-lez v1, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 463
    :goto_2
    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 464
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_3
    if-eqz p2, :cond_4

    .line 471
    const-string v0, "::"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    :cond_4
    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    .line 480
    if-eqz p3, :cond_6

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    :cond_6
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 485
    :cond_7
    return-void

    .line 444
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    :cond_9
    const-string v1, ""

    goto :goto_1

    :cond_a
    move-object v1, v0

    goto :goto_2
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 437
    return-void
.end method

.method public static create(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)Lcom/vladium/logging/Logger;
    .locals 3

    .prologue
    .line 70
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or corrupt input: out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    new-instance v0, Lcom/vladium/logging/Logger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vladium/logging/Logger;-><init>(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public static create(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;Lcom/vladium/logging/Logger;)Lcom/vladium/logging/Logger;
    .locals 1

    .prologue
    .line 92
    if-nez p4, :cond_0

    .line 94
    invoke-static {p0, p1, p2, p3}, Lcom/vladium/logging/Logger;->create(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)Lcom/vladium/logging/Logger;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const/4 v0, -0x1

    if-lt p0, v0, :cond_1

    .line 102
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    :goto_2
    if-eqz p3, :cond_3

    .line 117
    :goto_3
    new-instance v0, Lcom/vladium/logging/Logger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vladium/logging/Logger;-><init>(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 98
    :cond_1
    iget p0, p4, Lcom/vladium/logging/Logger;->m_level:I

    goto :goto_1

    .line 102
    :cond_2
    iget-object p1, p4, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    goto :goto_2

    .line 112
    :cond_3
    iget-object p3, p4, Lcom/vladium/logging/Logger;->m_classMask:Ljava/util/Set;

    goto :goto_3
.end method

.method public static getLogger()Lcom/vladium/logging/Logger;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/vladium/logging/Logger;->THREAD_LOCAL_STACK:Lcom/vladium/logging/Logger$ThreadLocalStack;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger$ThreadLocalStack;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 321
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    sget-object v0, Lcom/vladium/logging/Logger;->STATIC_LOGGER:Lcom/vladium/logging/Logger;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/logging/Logger;

    goto :goto_0
.end method

.method public static pop(Lcom/vladium/logging/Logger;)V
    .locals 4

    .prologue
    .line 355
    sget-object v0, Lcom/vladium/logging/Logger;->THREAD_LOCAL_STACK:Lcom/vladium/logging/Logger$ThreadLocalStack;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger$ThreadLocalStack;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 359
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/logging/Logger;

    .line 360
    if-eq v1, p0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid context being popped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty logger context stack on thread ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 364
    invoke-direct {v1}, Lcom/vladium/logging/Logger;->cleanup()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    return-void
.end method

.method public static push(Lcom/vladium/logging/Logger;)V
    .locals 2

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    sget-object v0, Lcom/vladium/logging/Logger;->THREAD_LOCAL_STACK:Lcom/vladium/logging/Logger$ThreadLocalStack;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger$ThreadLocalStack;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 341
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public static stringToLevel(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 375
    const-string v3, "severe"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "silent"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 405
    :cond_1
    :goto_0
    return v0

    .line 377
    :cond_2
    const-string v3, "warning"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "quiet"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 378
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :cond_4
    const-string v3, "info"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 381
    const-string v3, "verbose"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    const/4 v0, 0x3

    goto :goto_0

    .line 383
    :cond_5
    const-string v3, "trace1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    const/4 v0, 0x4

    goto :goto_0

    .line 385
    :cond_6
    const-string v3, "trace2"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 386
    const/4 v0, 0x5

    goto :goto_0

    .line 387
    :cond_7
    const-string v3, "trace3"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 388
    const/4 v0, 0x6

    goto :goto_0

    .line 389
    :cond_8
    const-string v3, "none"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    .line 390
    goto :goto_0

    .line 391
    :cond_9
    const-string v3, "all"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v2

    .line 392
    goto :goto_0

    .line 395
    :cond_a
    const/high16 v3, -0x80000000

    .line 398
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 402
    :goto_1
    if-lt v3, v1, :cond_1

    if-gt v3, v2, :cond_1

    move v0, v3

    .line 403
    goto :goto_0

    .line 400
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public final atINFO()Z
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x2

    iget v1, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final atTRACE1()Z
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x4

    iget v1, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final atTRACE2()Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x5

    iget v1, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final atTRACE3()Z
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x6

    iget v1, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final atVERBOSE()Z
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x3

    iget v1, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vladium/logging/Logger;->m_out:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 196
    return-void
.end method

.method public final isLoggable(I)Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/vladium/logging/Logger;->m_level:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    return-void
.end method

.method public final log(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 253
    return-void
.end method

.method public final trace1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method public final trace2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method public final trace3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 207
    return-void
.end method

.method public final warning(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/vladium/logging/Logger;->_log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method
