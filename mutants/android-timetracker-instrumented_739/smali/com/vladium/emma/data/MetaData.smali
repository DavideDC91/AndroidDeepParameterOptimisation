.class final Lcom/vladium/emma/data/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"

# interfaces
.implements Lcom/vladium/emma/data/IMetaData;
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_classMap:Ljava/util/HashMap;

.field private m_hasLineNumberInfo:Z

.field private m_hasSrcFileInfo:Z

.field private final m_options:Lcom/vladium/emma/data/CoverageOptions;

.field private transient m_packagesWarned:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/vladium/emma/data/CoverageOptions;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/vladium/emma/data/MetaData;->m_options:Lcom/vladium/emma/data/CoverageOptions;

    .line 206
    iput-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    .line 207
    iput-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_packagesWarned:Ljava/util/HashSet;

    .line 211
    return-void
.end method

.method private constructor <init>(Lcom/vladium/emma/data/CoverageOptions;Ljava/util/HashMap;ZZ)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/vladium/emma/data/MetaData;->m_options:Lcom/vladium/emma/data/CoverageOptions;

    .line 275
    iput-boolean p3, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    .line 276
    iput-boolean p4, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    .line 278
    iput-object p2, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    .line 279
    return-void
.end method

.method static readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/MetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0}, Lcom/vladium/emma/data/CoverageOptions;->readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/CoverageOptions;

    move-result-object v1

    .line 219
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    .line 220
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    .line 222
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 223
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 225
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 227
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {p0}, Lcom/vladium/emma/data/ClassDescriptor;->readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/ClassDescriptor;

    move-result-object v7

    .line 230
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Lcom/vladium/emma/data/MetaData;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vladium/emma/data/MetaData;-><init>(Lcom/vladium/emma/data/CoverageOptions;Ljava/util/HashMap;ZZ)V

    return-object v0
.end method

.method static writeExternal(Lcom/vladium/emma/data/MetaData;Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_options:Lcom/vladium/emma/data/CoverageOptions;

    invoke-static {v0, p1}, Lcom/vladium/emma/data/CoverageOptions;->writeExternal(Lcom/vladium/emma/data/CoverageOptions;Ljava/io/DataOutput;)V

    .line 243
    iget-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 244
    iget-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 246
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    .line 248
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    .line 249
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 251
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 252
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 254
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ClassDescriptor;

    .line 259
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 260
    invoke-static {v0, p1}, Lcom/vladium/emma/data/ClassDescriptor;->writeExternal(Lcom/vladium/emma/data/ClassDescriptor;Ljava/io/DataOutput;)V

    .line 252
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->getClassVMName()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->hasSrcFileInfo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    iput-boolean v2, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    move v0, v1

    .line 126
    :goto_0
    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->hasCompleteLineNumberInfo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    iput-boolean v2, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    move v0, v1

    .line 135
    :cond_1
    if-eqz v0, :cond_2

    .line 137
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->getPackageVMName()Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/vladium/emma/data/MetaData;->m_packagesWarned:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] contains classes ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] without full debug info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    move v2, v1

    .line 153
    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public getOptions()Lcom/vladium/emma/data/CoverageOptions;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_options:Lcom/vladium/emma/data/CoverageOptions;

    return-object v0
.end method

.method public hasDescriptor(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLineNumberData()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    return v0
.end method

.method public hasSrcFileData()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/vladium/emma/data/IMergeable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object p0

    .line 172
    :cond_1
    check-cast p1, Lcom/vladium/emma/data/MetaData;

    .line 173
    iget-object v0, p1, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    .line 177
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/vladium/emma/data/MetaData;->hasSrcFileData()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/vladium/emma/data/MetaData;->m_hasSrcFileInfo:Z

    .line 190
    :cond_3
    invoke-virtual {p1}, Lcom/vladium/emma/data/MetaData;->hasLineNumberData()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/vladium/emma/data/MetaData;->m_hasLineNumberInfo:Z

    goto :goto_0
.end method

.method public shallowCopy()Lcom/vladium/emma/data/IMetaData;
    .locals 3

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/MetaData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-virtual {p0}, Lcom/vladium/emma/data/MetaData;->lock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iput-object v1, v0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    .line 61
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vladium/emma/data/MetaData;->m_classMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
