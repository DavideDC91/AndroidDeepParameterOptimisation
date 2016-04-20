.class final Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;
.super Ljava/lang/Object;
.source "SourcePathCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/SourcePathCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileExtensionFilter"
.end annotation


# instance fields
.field private final m_extension:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty input: extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;->m_extension:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 182
    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_0
    return-object p0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 152
    if-lez v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;->m_extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extension = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/report/SourcePathCache$FileExtensionFilter;->m_extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
