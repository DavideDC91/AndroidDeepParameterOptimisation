.class public final Lcom/vladium/util/ByteArrayOStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOStream.java"


# static fields
.field private static final NATIVE_COPY_THRESHOLD:I = 0x9


# instance fields
.field private m_buf:[B

.field private m_pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 42
    return-void
.end method


# virtual methods
.method public final capacity()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    array-length v0, v0

    return v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/vladium/util/ByteArrayOStream;->reset()V

    .line 304
    return-void
.end method

.method public final copyByteArray()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 208
    iget v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 210
    new-array v2, v1, [B

    .line 211
    iget-object v3, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 213
    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    .line 214
    :goto_0
    if-ge v0, v1, :cond_1

    aget-byte v4, v3, v0

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    :cond_1
    return-object v2
.end method

.method public final getByteArray()[B
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 237
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    return v0
.end method

.method public final toByteIStream()Lcom/vladium/util/ByteArrayIStream;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/vladium/util/ByteArrayIStream;

    iget-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    iget v2, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/ByteArrayIStream;-><init>([BI)V

    return-object v0
.end method

.method public final write(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 243
    iget v3, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 244
    add-int/lit8 v4, v3, 0x1

    .line 245
    iget-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 246
    array-length v0, v1

    .line 248
    if-ge v0, v4, :cond_2

    .line 250
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 252
    const/16 v5, 0x9

    if-ge v3, v5, :cond_0

    .line 253
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v5, v1, v2

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_1
    iput-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 260
    :goto_1
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 261
    iput v4, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 262
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final write([BII)V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v0, 0x0

    .line 272
    iget v4, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 273
    add-int v5, v4, p3

    .line 274
    iget-object v2, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 275
    array-length v1, v2

    .line 277
    if-ge v1, v5, :cond_4

    .line 279
    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 281
    if-ge v4, v7, :cond_0

    move v3, v0

    .line 282
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v6, v2, v3

    aput-byte v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    :cond_1
    iput-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 289
    :goto_1
    if-ge p3, v7, :cond_2

    .line 290
    :goto_2
    if-ge v0, p3, :cond_3

    add-int v2, v4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 292
    :cond_2
    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_3
    iput v5, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 295
    return-void

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public final write2(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 51
    iget v3, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 52
    add-int/lit8 v4, v3, 0x2

    .line 53
    iget-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 54
    array-length v0, v1

    .line 56
    if-ge v0, v4, :cond_2

    .line 58
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 60
    const/16 v5, 0x9

    if-ge v3, v5, :cond_0

    .line 61
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v5, v1, v2

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_1
    iput-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 68
    :goto_1
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 69
    add-int/lit8 v1, v3, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 70
    iput v4, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 71
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final write3(III)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 75
    iget v3, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 76
    add-int/lit8 v4, v3, 0x3

    .line 77
    iget-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 78
    array-length v0, v1

    .line 80
    if-ge v0, v4, :cond_2

    .line 82
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 84
    const/16 v5, 0x9

    if-ge v3, v5, :cond_0

    .line 85
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v5, v1, v2

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_1
    iput-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 92
    :goto_1
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 93
    add-int/lit8 v1, v3, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 94
    add-int/lit8 v1, v3, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 95
    iput v4, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 96
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final write4(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v3, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 101
    add-int/lit8 v4, v3, 0x4

    .line 102
    iget-object v1, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 103
    array-length v0, v1

    .line 105
    if-ge v0, v4, :cond_2

    .line 107
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 109
    const/16 v5, 0x9

    if-ge v3, v5, :cond_0

    .line 110
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v5, v1, v2

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_1
    iput-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    .line 117
    :goto_1
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 118
    add-int/lit8 v1, v3, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 119
    add-int/lit8 v1, v3, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 120
    add-int/lit8 v1, v3, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 121
    iput v4, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    .line 122
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vladium/util/ByteArrayOStream;->m_buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/vladium/util/ByteArrayOStream;->m_pos:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    return-void
.end method
