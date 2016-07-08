.class final Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;
.super Ljava/lang/Object;
.source "IPathEnumerator.java"

# interfaces
.implements Lcom/vladium/util/IPathEnumerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IPathEnumerator$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathEnumerator"
.end annotation


# static fields
.field private static final IGNORE_INVALID_ENTRIES:Z = true


# instance fields
.field private final m_canonical:Z

.field private m_currentPathDir:Ljava/io/File;

.field private final m_handler:Lcom/vladium/util/IPathEnumerator$IPathHandler;

.field private final m_log:Lcom/vladium/logging/Logger;

.field private final m_path:Ljava/util/ArrayList;

.field private m_pathIndex:I

.field private final m_pathSet:Ljava/util/Set;

.field private final m_processManifest:Z

.field private m_trace1:Z

.field private m_verbose:Z


# direct methods
.method constructor <init>([Ljava/io/File;ZLcom/vladium/util/IPathEnumerator$IPathHandler;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_path:Ljava/util/ArrayList;

    move v0, v1

    .line 127
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_path:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iput-boolean p2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_canonical:Z

    .line 131
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iput-object p3, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_handler:Lcom/vladium/util/IPathEnumerator$IPathHandler;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_processManifest:Z

    .line 136
    iget-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_processManifest:Z

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathSet:Ljava/util/Set;

    .line 139
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathSet:Ljava/util/Set;

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathSet:Ljava/util/Set;

    .line 149
    :cond_3
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    .line 150
    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_verbose:Z

    .line 151
    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_trace1:Z

    .line 152
    return-void
.end method

.method private enumeratePathArchive(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-boolean v1, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_trace1:Z

    .line 204
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_currentPathDir:Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .line 219
    :try_start_0
    new-instance v2, Ljava/util/jar/JarInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const v6, 0x8000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :try_start_1
    iget-object v3, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_handler:Lcom/vladium/util/IPathEnumerator$IPathHandler;

    .line 223
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 224
    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->readManifestViaJarFile(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    .line 226
    :cond_0
    iget-object v5, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_currentPathDir:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v6, v0}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleArchiveStart(Ljava/io/File;Ljava/io/File;Ljava/util/jar/Manifest;)V

    .line 230
    :goto_0
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 234
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v7, "enumeratePathArchive"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processing archive entry ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-interface {v3, v2, v5}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleArchiveEntry(Ljava/util/jar/JarInputStream;Ljava/util/zip/ZipEntry;)V

    .line 236
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 284
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    :cond_2
    :goto_2
    return-void

    .line 241
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_processManifest:Z

    if-eqz v1, :cond_8

    .line 245
    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 246
    :cond_4
    if-eqz v0, :cond_8

    .line 248
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_8

    .line 254
    sget-object v1, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_8

    .line 257
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 260
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 263
    if-eqz v6, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 265
    :goto_4
    iget-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_canonical:Z

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/util/Files;->canonicalizePathname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_5
    iget-object v6, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 269
    iget-boolean v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_verbose:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  added manifest Class-Path entry ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 270
    :cond_5
    iget-object v6, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_path:Ljava/util/ArrayList;

    iget v7, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v7

    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_6
    move v1, v0

    .line 272
    goto :goto_3

    .line 263
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_4

    .line 265
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_5

    .line 284
    :cond_8
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_7
    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_8
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 278
    :catch_4
    move-exception v1

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_6
.end method

.method private enumeratePathDir(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-boolean v4, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_trace1:Z

    .line 160
    iget-object v1, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_currentPathDir:Ljava/io/File;

    .line 161
    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 164
    iget-object v6, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_handler:Lcom/vladium/util/IPathEnumerator$IPathHandler;

    .line 166
    const/4 v2, 0x0

    array-length v7, v5

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_5

    .line 168
    aget-object v8, v5, v3

    .line 170
    if-eqz p1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_2
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    invoke-interface {v6, v1, v2}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleDirStart(Ljava/io/File;Ljava/io/File;)V

    .line 176
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v9, "enumeratePathDir"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recursing into ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->enumeratePathDir(Ljava/lang/String;)V

    .line 178
    invoke-interface {v6, v1, v2}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleDirEnd(Ljava/io/File;Ljava/io/File;)V

    .line 166
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 161
    goto :goto_0

    .line 170
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 192
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v9, "enumeratePathDir"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processing file ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_4
    invoke-interface {v6, v1, v2}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_3

    .line 197
    :cond_5
    return-void
.end method

.method private static readManifestViaJarFile(Ljava/io/File;)Ljava/util/jar/Manifest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 298
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 306
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 306
    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 301
    :catch_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public enumerate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_handler:Lcom/vladium/util/IPathEnumerator$IPathHandler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    :goto_0
    iget v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    iget-object v2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 81
    iget-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_path:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_1
    iget v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_pathIndex:I

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    iget-boolean v2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_verbose:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing dir path entry ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 96
    :cond_2
    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_currentPathDir:Ljava/io/File;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->enumeratePathDir(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :cond_4
    iget-boolean v3, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_verbose:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processing archive path entry ["

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

    invoke-virtual {v3, v4}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 108
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 109
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    iput-object v0, p0, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->m_currentPathDir:Ljava/io/File;

    .line 113
    invoke-direct {p0, v2}, Lcom/vladium/util/IPathEnumerator$Factory$PathEnumerator;->enumeratePathArchive(Ljava/lang/String;)V

    .line 114
    invoke-interface {v1, v0, v3}, Lcom/vladium/util/IPathEnumerator$IPathHandler;->handleArchiveEnd(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_1

    .line 122
    :cond_6
    return-void
.end method
