.class public final Lcom/vladium/jcd/lib/UDataInputStream;
.super Ljava/io/DataInputStream;
.source "UDataInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final readU2()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/UDataInputStream;->readShort()S

    move-result v0

    .line 40
    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final readU4()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/UDataInputStream;->readInt()I

    move-result v0

    .line 48
    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
