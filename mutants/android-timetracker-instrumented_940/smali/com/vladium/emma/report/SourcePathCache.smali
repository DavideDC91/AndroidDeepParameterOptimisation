.class public final Lcom/vladium/emma/report/SourcePathCache;
.super Ljava/lang/Object;
.source "SourcePathCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;,
        Lcom/vladium/emma/report/SourcePathCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final FILE_EXTENSION_FILTER:Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;


# instance fields
.field private final m_packageCache:Ljava/util/Map;

.field private final m_sourcepath:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;

    const-string v1, ".java"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/SourcePathCache;->FILE_EXTENSION_FILTER:Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;

    .line 225
    return-void
.end method

.method public constructor <init>([Ljava/io/File;Z)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: sourcepath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 66
    aget-object v2, p1, v0

    .line 68
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    .line 73
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_packageCache:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: sourcepath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 44
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    .line 51
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_packageCache:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private faultListing(Ljava/io/File;Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/vladium/emma/report/SourcePathCache;->FILE_EXTENSION_FILTER:Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 203
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 212
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v2

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 207
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 209
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 212
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized find(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: packageVMName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 115
    :goto_0
    monitor-exit p0

    return-object v0

    .line 88
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_packageCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/SourcePathCache$CacheEntry;

    .line 90
    if-nez v0, :cond_3

    .line 92
    new-instance v0, Lcom/vladium/emma/report/SourcePathCache$CacheEntry;

    iget-object v2, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/vladium/emma/report/SourcePathCache$CacheEntry;-><init>(I)V

    .line 93
    iget-object v2, p0, Lcom/vladium/emma/report/SourcePathCache;->m_packageCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    iget-object v3, v0, Lcom/vladium/emma/report/SourcePathCache$CacheEntry;->m_listings:[Ljava/util/Set;

    .line 97
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_6

    .line 99
    aget-object v0, v3, v2

    .line 100
    if-nez v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Lcom/vladium/emma/report/SourcePathCache;->faultListing(Ljava/io/File;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 103
    aput-object v0, v3, v2

    .line 107
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    new-instance v0, Ljava/io/File;

    const/16 v1, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/vladium/emma/report/SourcePathCache;->m_sourcepath:[Ljava/io/File;

    aget-object v2, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 115
    goto :goto_0
.end method
