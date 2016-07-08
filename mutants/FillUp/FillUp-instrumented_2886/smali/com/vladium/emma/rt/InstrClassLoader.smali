.class public final Lcom/vladium/emma/rt/InstrClassLoader;
.super Ljava/net/URLClassLoader;
.source "InstrClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;
    }
.end annotation


# static fields
.field private static final BAOS_INIT_SIZE:I = 0x8000

.field private static final BAOS_MAX_SIZE:I = 0x100000

.field private static final BAOS_POOL_SIZE:I = 0x8

.field private static final EMPTY_URL_ARRAY:[Ljava/net/URL;

.field public static final PROPERTY_FORCED_DELEGATION_FILTER:Ljava/lang/String; = "clsload.forced_delegation_filter"

.field public static final PROPERTY_THROUGH_DELEGATION_FILTER:Ljava/lang/String; = "clsload.through_delegation_filter"


# instance fields
.field private final m_bufPool:[Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

.field private final m_cache:Ljava/util/Map;

.field private m_cacheHits:I

.field private m_cacheMisses:I

.field private final m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

.field private final m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

.field private final m_log:Lcom/vladium/logging/Logger;

.field private m_nestLevel:I

.field private final m_parent:Ljava/lang/ClassLoader;

.field private final m_throughDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    sput-object v0, Lcom/vladium/emma/rt/InstrClassLoader;->EMPTY_URL_ARRAY:[Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;[Ljava/io/File;Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/rt/IClassLoadHook;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p2}, Lcom/vladium/emma/rt/InstrClassLoader;->filesToURLs([Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 59
    iput-object p5, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

    .line 60
    iput-object p6, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cache:Ljava/util/Map;

    .line 62
    iput-object p3, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    .line 63
    iput-object p4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_throughDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    .line 65
    iput-object p1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_parent:Ljava/lang/ClassLoader;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_bufPool:[Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    .line 68
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    .line 69
    return-void
.end method

.method private acquirePoolEntry()Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;
    .locals 3

    .prologue
    const v2, 0x8000

    .line 407
    iget v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 409
    new-instance v0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    invoke-direct {v0, v2, v2}, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;-><init>(II)V

    .line 425
    :goto_0
    iget v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    .line 427
    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_bufPool:[Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    iget v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    aget-object v0, v0, v1

    .line 414
    if-nez v0, :cond_1

    .line 416
    new-instance v0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    invoke-direct {v0, v2, v2}, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;-><init>(II)V

    .line 417
    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_bufPool:[Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    iget v2, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    aput-object v0, v1, v2

    goto :goto_0

    .line 421
    :cond_1
    iget-object v1, v0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    goto :goto_0
.end method

.method private defineClass(Ljava/lang/String;[BILjava/net/URL;)Ljava/lang/Class;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 347
    new-instance v9, Ljava/security/CodeSource;

    const/4 v0, 0x0

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v9, p4, v0}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 353
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 354
    if-ltz v0, :cond_0

    .line 356
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p0, v1}, Lcom/vladium/emma/rt/InstrClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 359
    if-nez v0, :cond_0

    .line 361
    const-string v2, "EMMA"

    const-string v3, "0.0"

    const-string v4, "(C) Vladimir Roubtsov"

    const-string v5, "EMMA"

    const-string v6, "0.0"

    const-string v7, "(C) Vladimir Roubtsov"

    move-object v0, p0

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/vladium/emma/rt/InstrClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move v4, p3

    move-object v5, v9

    .line 368
    invoke-virtual/range {v0 .. v5}, Lcom/vladium/emma/rt/InstrClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static filesToURLs([Ljava/io/File;)[Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    sget-object v0, Lcom/vladium/emma/rt/InstrClassLoader;->EMPTY_URL_ARRAY:[Ljava/net/URL;

    .line 385
    :goto_0
    return-object v0

    .line 378
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/net/URL;

    .line 380
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 382
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v1, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 385
    goto :goto_0
.end method

.method private static readFully(Ljava/io/InputStream;Lcom/vladium/util/ByteArrayOStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    .line 396
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/vladium/util/ByteArrayOStream;->write([BII)V

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method private releasePoolEntry(Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;)V
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 437
    const v0, 0x8000

    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->trim(II)V

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method public debugDump(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheHits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class cache hits, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheMisses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " misses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v4

    .line 179
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "findClass"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): nest level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 182
    :goto_0
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/rt/ClassPathCacheEntry;

    move-object v2, v0

    .line 188
    :goto_1
    if-eqz v2, :cond_7

    .line 190
    iget v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheHits:I

    .line 196
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v2, Lcom/vladium/emma/rt/ClassPathCacheEntry;->m_srcURL:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_2
    :try_start_1
    invoke-direct {p0}, Lcom/vladium/emma/rt/InstrClassLoader;->acquirePoolEntry()Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;

    move-result-object v1

    .line 210
    iget-object v5, v1, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 213
    iget-object v3, v2, Lcom/vladium/emma/rt/ClassPathCacheEntry;->m_bytes:[B

    .line 214
    array-length v2, v3

    .line 216
    iget-object v6, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

    invoke-interface {v6, p1, v3, v2, v5}, Lcom/vladium/emma/rt/IClassLoadHook;->processClassDef(Ljava/lang/String;[BILcom/vladium/util/ByteArrayOStream;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-virtual {v5}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v3

    .line 220
    invoke-virtual {v5}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v2

    .line 222
    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "findClass"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defining [cached] instrumented ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    :goto_3
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/vladium/emma/rt/InstrClassLoader;->defineClass(Ljava/lang/String;[BILjava/net/URL;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 237
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/vladium/emma/rt/InstrClassLoader;->releasePoolEntry(Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;)V

    .line 298
    :cond_2
    :goto_4
    return-object v0

    .line 181
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 182
    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 226
    :cond_5
    if-eqz v4, :cond_1

    :try_start_2
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "findClass"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defining [cached] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 231
    :catch_1
    move-exception v0

    .line 233
    :try_start_3
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/vladium/emma/rt/InstrClassLoader;->releasePoolEntry(Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;)V

    :cond_6
    throw v0

    .line 242
    :cond_7
    if-eqz v3, :cond_8

    iget v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheMisses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_cacheMisses:I

    .line 246
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/vladium/emma/rt/InstrClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 251
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "findClass"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] found in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_9
    if-nez v5, :cond_a

    .line 254
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_a
    :try_start_4
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 263
    :try_start_5
    invoke-direct {p0}, Lcom/vladium/emma/rt/InstrClassLoader;->acquirePoolEntry()Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v2

    .line 264
    :try_start_6
    iget-object v6, v2, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 266
    iget-object v3, v2, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_buf:[B

    invoke-static {v0, v6, v3}, Lcom/vladium/emma/rt/InstrClassLoader;->readFully(Ljava/io/InputStream;Lcom/vladium/util/ByteArrayOStream;[B)V

    .line 267
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 268
    const/4 v7, 0x0

    .line 271
    :try_start_7
    invoke-virtual {v6}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v3

    .line 272
    invoke-virtual {v6}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    .line 274
    invoke-virtual {v6}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 276
    iget-object v8, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_hook:Lcom/vladium/emma/rt/IClassLoadHook;

    invoke-interface {v8, p1, v3, v0, v6}, Lcom/vladium/emma/rt/IClassLoadHook;->processClassDef(Ljava/lang/String;[BILcom/vladium/util/ByteArrayOStream;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 279
    invoke-virtual {v6}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v3

    .line 280
    invoke-virtual {v6}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    .line 282
    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v6, "findClass"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defining instrumented ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes }"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_b
    :goto_5
    invoke-direct {p0, p1, v3, v0, v5}, Lcom/vladium/emma/rt/InstrClassLoader;->defineClass(Ljava/lang/String;[BILjava/net/URL;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result-object v0

    .line 297
    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Lcom/vladium/emma/rt/InstrClassLoader;->releasePoolEntry(Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;)V

    .line 298
    :cond_c
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_4

    .line 286
    :cond_d
    if-eqz v4, :cond_b

    :try_start_9
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v6, "findClass"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defining ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes }"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    .line 291
    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 293
    :goto_6
    :try_start_a
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-direct {v2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 297
    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lcom/vladium/emma/rt/InstrClassLoader;->releasePoolEntry(Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;)V

    .line 298
    :cond_e
    if-eqz v1, :cond_f

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_f
    :goto_8
    throw v0

    :catch_4
    move-exception v1

    goto :goto_8

    .line 297
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :catchall_4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    .line 291
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_6
    move-exception v2

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v1, v2

    goto :goto_6
.end method

.method public final getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v0

    .line 163
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "getResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): nest level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 166
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "loadClass"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-object v1
.end method

.method public final declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v3

    .line 82
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "loadClass"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): nest level "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_nestLevel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vladium/emma/rt/InstrClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    if-nez v0, :cond_4

    .line 92
    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_parent:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_e

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 99
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_parent:Ljava/lang/ClassLoader;

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v2, p1}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "loadClass"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using parent\'s version for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 116
    :goto_0
    if-nez v1, :cond_c

    .line 123
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/vladium/emma/rt/InstrClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 151
    :cond_4
    :goto_1
    if-nez v0, :cond_a

    :try_start_5
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 111
    :goto_2
    :try_start_6
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_forcedDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v4, p1}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 112
    :cond_5
    throw v0

    .line 125
    :catch_1
    move-exception v2

    .line 133
    if-eqz v0, :cond_9

    .line 135
    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_throughDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_throughDelegationFilter:Lcom/vladium/emma/filter/IInclExclFilter;

    invoke-interface {v1, p1}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 137
    :goto_3
    if-eqz v1, :cond_8

    .line 140
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoader;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "loadClass"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[delegation filter] using parent\'s version for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 143
    :cond_8
    throw v2

    .line 146
    :cond_9
    throw v2

    .line 153
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p0, v0}, Lcom/vladium/emma/rt/InstrClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    :cond_b
    monitor-exit p0

    return-object v0

    .line 108
    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_c
    move-object v0, v1

    goto :goto_1

    :cond_d
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_e
    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method
