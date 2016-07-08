.class public final Lcom/vladium/util/ByteArrayIStream;
.super Ljava/io/InputStream;
.source "ByteArrayIStream.java"


# static fields
.field private static final NATIVE_COPY_THRESHOLD:I = 0x9


# instance fields
.field private final m_buf:[B

.field private final m_max:I

.field private m_pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 31
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/vladium/util/ByteArrayIStream;-><init>([BI)V

    .line 32
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vladium/util/ByteArrayIStream;->m_buf:[B

    .line 40
    iput p2, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    .line 41
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    iget v1, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vladium/util/ByteArrayIStream;->reset()V

    .line 109
    return-void
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    iget v1, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    if-lt v0, v1, :cond_0

    .line 48
    const/4 v0, -0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_buf:[B

    iget v1, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    iget v2, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    .line 61
    iget v1, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    .line 63
    if-lt v2, v1, :cond_1

    const/4 v0, -0x1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    add-int v3, v2, p3

    if-le v3, v1, :cond_4

    sub-int/2addr v1, v2

    .line 65
    :goto_1
    if-lez v1, :cond_0

    .line 67
    iget-object v3, p0, Lcom/vladium/util/ByteArrayIStream;->m_buf:[B

    .line 69
    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    .line 70
    :goto_2
    if-ge v0, v1, :cond_3

    add-int v4, p2, v0

    add-int v5, v2, v0

    aget-byte v5, v3, v5

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_2
    invoke-static {v3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :cond_3
    iget v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    move v0, v1

    .line 76
    goto :goto_0

    :cond_4
    move v1, p3

    goto :goto_1
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    .line 101
    return-void
.end method

.method public final skip(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    iget v2, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Lcom/vladium/util/ByteArrayIStream;->m_max:I

    iget v3, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 88
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 91
    :goto_1
    return-wide v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vladium/util/ByteArrayIStream;->m_pos:I

    move-wide v0, v2

    .line 91
    goto :goto_1

    :cond_1
    move-wide v2, p1

    goto :goto_0
.end method
