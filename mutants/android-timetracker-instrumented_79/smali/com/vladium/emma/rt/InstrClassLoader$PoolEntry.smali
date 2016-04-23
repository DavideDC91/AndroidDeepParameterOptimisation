.class final Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;
.super Ljava/lang/Object;
.source "InstrClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/rt/InstrClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PoolEntry"
.end annotation


# instance fields
.field m_baos:Lcom/vladium/util/ByteArrayOStream;

.field final m_buf:[B


# direct methods
.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Lcom/vladium/util/ByteArrayOStream;

    invoke-direct {v0, p1}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 322
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_buf:[B

    .line 323
    return-void
.end method


# virtual methods
.method trim(II)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->capacity()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 329
    new-instance v0, Lcom/vladium/util/ByteArrayOStream;

    invoke-direct {v0, p1}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoader$PoolEntry;->m_baos:Lcom/vladium/util/ByteArrayOStream;

    .line 331
    :cond_0
    return-void
.end method
