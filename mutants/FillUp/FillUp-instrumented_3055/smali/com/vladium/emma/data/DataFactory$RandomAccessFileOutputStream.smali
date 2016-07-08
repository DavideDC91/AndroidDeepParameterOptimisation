.class final Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/data/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomAccessFileOutputStream"
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
    .line 375
    new-instance v0, Lcom/vladium/emma/data/DataFactory$UCFileOutputStream;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/data/DataFactory$UCFileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 376
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method final getCount()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    return-wide v0
.end method

.method public final write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 364
    iget-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    .line 365
    return-void
.end method

.method public final write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 358
    iget-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    .line 359
    return-void
.end method

.method public final write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 352
    iget-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->m_count:J

    .line 353
    return-void
.end method
