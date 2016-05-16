.class public interface abstract Lcom/vladium/util/IPathEnumerator$IPathHandler;
.super Ljava/lang/Object;
.source "IPathEnumerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IPathEnumerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPathHandler"
.end annotation


# virtual methods
.method public abstract handleArchiveEnd(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract handleArchiveEntry(Ljava/util/jar/JarInputStream;Ljava/util/zip/ZipEntry;)V
.end method

.method public abstract handleArchiveStart(Ljava/io/File;Ljava/io/File;Ljava/util/jar/Manifest;)V
.end method

.method public abstract handleDirEnd(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract handleDirStart(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract handleFile(Ljava/io/File;Ljava/io/File;)V
.end method
