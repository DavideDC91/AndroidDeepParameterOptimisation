.class final Lcom/vladium/emma/data/CoverageData;
.super Ljava/lang/Object;
.source "CoverageData.java"

# interfaces
.implements Lcom/vladium/emma/data/ICoverageData;
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_coverageMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    .line 160
    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    .line 224
    return-void
.end method

.method static readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/CoverageData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 167
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    move v2, v1

    .line 169
    :goto_0
    if-ge v2, v3, :cond_1

    .line 171
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 174
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 175
    new-array v9, v8, [[Z

    move v0, v1

    .line 176
    :goto_1
    if-ge v0, v8, :cond_0

    .line 178
    invoke-static {p0}, Lcom/vladium/emma/data/DataFactory;->readBooleanArray(Ljava/io/DataInput;)[Z

    move-result-object v10

    aput-object v10, v9, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_0
    new-instance v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    invoke-direct {v0, v9, v6, v7}, Lcom/vladium/emma/data/ICoverageData$DataHolder;-><init>([[ZJ)V

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/vladium/emma/data/CoverageData;

    invoke-direct {v0, v4}, Lcom/vladium/emma/data/CoverageData;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method static writeExternal(Lcom/vladium/emma/data/CoverageData;Ljava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    .line 192
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 193
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    .line 196
    :goto_0
    if-ge v3, v4, :cond_1

    .line 198
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    .line 203
    iget-object v6, v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_coverage:[[Z

    .line 205
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 206
    iget-wide v0, v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_stamp:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 208
    array-length v1, v6

    .line 209
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    move v0, v2

    .line 210
    :goto_1
    if-ge v0, v1, :cond_0

    .line 212
    aget-object v7, v6, v0

    invoke-static {v7, p1}, Lcom/vladium/emma/data/DataFactory;->writeBooleanArray([ZLjava/io/DataOutput;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method public addClass([[ZLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    new-instance v1, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    invoke-direct {v1, p1, p3, p4}, Lcom/vladium/emma/data/ICoverageData$DataHolder;-><init>([[ZJ)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public getCoverage(Lcom/vladium/emma/data/ClassDescriptor;)Lcom/vladium/emma/data/ICoverageData$DataHolder;
    .locals 2

    .prologue
    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: cls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->getClassVMName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/vladium/emma/data/IMergeable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p0, :cond_1

    .line 148
    :cond_0
    return-object p0

    .line 95
    :cond_1
    check-cast p1, Lcom/vladium/emma/data/CoverageData;

    .line 96
    iget-object v0, p1, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    .line 106
    iget-object v2, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vladium/emma/data/ICoverageData$DataHolder;

    .line 108
    if-nez v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_3
    iget-wide v6, v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_stamp:J

    iget-wide v8, v2, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_stamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 113
    iget-object v2, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_4
    iget-object v5, v0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_coverage:[[Z

    .line 117
    iget-object v2, v2, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_coverage:[[Z

    .line 122
    array-length v6, v2

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_2

    .line 124
    aget-object v7, v5, v1

    .line 125
    aget-object v8, v2, v1

    .line 127
    if-nez v8, :cond_6

    .line 122
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 138
    :cond_6
    array-length v9, v8

    move v0, v3

    :goto_2
    if-ge v0, v9, :cond_5

    .line 140
    aget-boolean v10, v7, v0

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    aput-boolean v10, v8, v0

    .line 138
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public shallowCopy()Lcom/vladium/emma/data/ICoverageData;
    .locals 3

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/CoverageData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-virtual {p0}, Lcom/vladium/emma/data/CoverageData;->lock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 52
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iput-object v1, v0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    .line 56
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
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
    .line 61
    iget-object v0, p0, Lcom/vladium/emma/data/CoverageData;->m_coverageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
