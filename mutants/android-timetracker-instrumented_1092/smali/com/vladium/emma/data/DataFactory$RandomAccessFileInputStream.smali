.class final Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/data/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomAccessFileInputStream"
.end annotation


# instance fields
.field private m_count:J


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/vladium/emma/data/DataFactory$UCFileInputStream;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/data/DataFactory$UCFileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 336
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method final getCount()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    return-wide v0
.end method

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 305
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    .line 307
    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 322
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    .line 324
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 314
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;->m_count:J

    .line 316
    :cond_0
    return v0
.end method
