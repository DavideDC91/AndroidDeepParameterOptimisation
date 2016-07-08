.class final Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmitCtx"
.end annotation


# instance fields
.field final m_backpatchQueue:Ljava/util/List;

.field final m_blocks:Lcom/vladium/emma/instr/InstrVisitor$BlockList;

.field final m_out:Lcom/vladium/util/ByteArrayOStream;


# direct methods
.method constructor <init>(Lcom/vladium/emma/instr/InstrVisitor$BlockList;Lcom/vladium/util/ByteArrayOStream;)V
    .locals 1

    .prologue
    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_blocks:Lcom/vladium/emma/instr/InstrVisitor$BlockList;

    .line 1468
    iput-object p2, p0, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_backpatchQueue:Ljava/util/List;

    .line 1471
    return-void
.end method
