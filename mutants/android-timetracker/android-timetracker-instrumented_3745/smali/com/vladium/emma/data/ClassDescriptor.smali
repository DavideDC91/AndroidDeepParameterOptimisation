.class public final Lcom/vladium/emma/data/ClassDescriptor;
.super Ljava/lang/Object;
.source "ClassDescriptor.java"

# interfaces
.implements Lcom/vladium/util/IConstants;
.implements Ljava/io/Serializable;


# instance fields
.field private final m_hasCompleteLineNumberInfo:Z

.field private transient m_hash:I

.field private final m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

.field private final m_name:Ljava/lang/String;

.field private final m_packageVMName:Ljava/lang/String;

.field private final m_srcFileName:Ljava/lang/String;

.field private final m_stamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Lcom/vladium/emma/data/MethodDescriptor;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: packageVMName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    if-nez p6, :cond_2

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iput-object p1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_stamp:J

    .line 51
    iput-object p5, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_srcFileName:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    .line 54
    const/4 v2, 0x1

    move v0, v1

    .line 55
    :goto_0
    iget-object v3, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 57
    aget-object v3, p6, v0

    .line 59
    invoke-virtual {v3}, Lcom/vladium/emma/data/MethodDescriptor;->getStatus()I

    move-result v3

    and-int/lit8 v3, v3, 0xe

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vladium/emma/data/MethodDescriptor;->hasLineNumberInfo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    :goto_1
    iput-boolean v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_hasCompleteLineNumberInfo:Z

    .line 67
    return-void

    .line 55
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/ClassDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    .line 176
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 177
    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 179
    :goto_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 180
    new-array v7, v1, [Lcom/vladium/emma/data/MethodDescriptor;

    .line 181
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 183
    invoke-static {p0}, Lcom/vladium/emma/data/MethodDescriptor;->readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v8

    aput-object v8, v7, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 186
    :cond_1
    new-instance v1, Lcom/vladium/emma/data/ClassDescriptor;

    invoke-direct/range {v1 .. v7}, Lcom/vladium/emma/data/ClassDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Lcom/vladium/emma/data/MethodDescriptor;)V

    return-object v1
.end method

.method static writeExternal(Lcom/vladium/emma/data/ClassDescriptor;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 195
    iget-wide v2, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_stamp:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 197
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_srcFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 200
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_srcFileName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    .line 208
    array-length v2, v1

    .line 209
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 210
    :goto_1
    if-ge v0, v2, :cond_1

    .line 212
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Lcom/vladium/emma/data/MethodDescriptor;->writeExternal(Lcom/vladium/emma/data/MethodDescriptor;Ljava/io/DataOutput;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    instance-of v1, p1, Lcom/vladium/emma/data/ClassDescriptor;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    check-cast p1, Lcom/vladium/emma/data/ClassDescriptor;

    .line 78
    invoke-virtual {p0}, Lcom/vladium/emma/data/ClassDescriptor;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vladium/emma/data/ClassDescriptor;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    iget-object v2, p1, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getClassVMName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMethods()[Lcom/vladium/emma/data/MethodDescriptor;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageVMName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSrcFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_srcFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStamp()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_stamp:J

    return-wide v0
.end method

.method public final hasCompleteLineNumberInfo()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_hasCompleteLineNumberInfo:Z

    return v0
.end method

.method public final hasSrcFileInfo()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_srcFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_hash:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x4115

    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_hash:I

    .line 96
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_hash:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/vladium/emma/data/ClassDescriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "class ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_packageVMName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] descriptor:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 156
    sget-object v2, Lcom/vladium/emma/data/ClassDescriptor;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v2, p0, Lcom/vladium/emma/data/ClassDescriptor;->m_methods:[Lcom/vladium/emma/data/MethodDescriptor;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/emma/data/MethodDescriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
