.class public final Lcom/vladium/jcd/lib/UDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "UDataOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final writeU2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeShort(I)V

    .line 39
    return-void
.end method

.method public final writeU4(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeInt(I)V

    .line 45
    return-void
.end method
