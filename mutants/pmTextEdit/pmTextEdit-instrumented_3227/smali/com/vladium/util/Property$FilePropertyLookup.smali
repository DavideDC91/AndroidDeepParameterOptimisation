.class final Lcom/vladium/util/Property$FilePropertyLookup;
.super Lcom/vladium/util/XProperties;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilePropertyLookup"
.end annotation


# instance fields
.field private m_contents:Ljava/util/Properties;

.field private final m_src:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_src:Ljava/io/File;

    .line 368
    return-void
.end method

.method private declared-synchronized faultContents()V
    .locals 4

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_contents:Ljava/util/Properties;

    .line 376
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_src:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_src:Ljava/io/File;

    invoke-static {v0}, Lcom/vladium/util/Property;->getPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 392
    :cond_0
    if-nez v0, :cond_1

    .line 394
    :try_start_2
    new-instance v0, Lcom/vladium/util/XProperties;

    invoke-direct {v0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 397
    :cond_1
    iput-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_contents:Ljava/util/Properties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 384
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :catch_1
    move-exception v0

    .line 388
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while processing properties file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_src:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/vladium/util/Property$FilePropertyLookup;->faultContents()V

    .line 346
    iget-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_contents:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/vladium/util/Property$FilePropertyLookup;->faultContents()V

    .line 339
    iget-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_contents:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/vladium/util/Property$FilePropertyLookup;->faultContents()V

    .line 356
    iget-object v0, p0, Lcom/vladium/util/Property$FilePropertyLookup;->m_contents:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
