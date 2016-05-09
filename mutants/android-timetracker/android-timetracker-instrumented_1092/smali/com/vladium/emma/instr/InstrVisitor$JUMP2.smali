.class final Lcom/vladium/emma/instr/InstrVisitor$JUMP2;
.super Lcom/vladium/emma/instr/InstrVisitor$Branch;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JUMP2"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 2

    .prologue
    .line 1614
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/instr/InstrVisitor$Branch;-><init>(I[I)V

    .line 1615
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 4

    .prologue
    .line 1621
    iget-object v0, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1622
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor$JUMP2;->m_targets:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 1623
    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v2

    .line 1627
    iget-byte v3, p0, Lcom/vladium/emma/instr/InstrVisitor$JUMP2;->m_opcode:B

    invoke-virtual {v0, v3}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1628
    invoke-virtual {p0, p1, v2, v1}, Lcom/vladium/emma/instr/InstrVisitor$JUMP2;->emitJumpOffset2(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;II)V

    .line 1629
    return-void
.end method

.method maxlength()I
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x5

    return v0
.end method
