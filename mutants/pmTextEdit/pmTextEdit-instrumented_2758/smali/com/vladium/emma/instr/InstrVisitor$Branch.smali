.class abstract Lcom/vladium/emma/instr/InstrVisitor$Branch;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch"
.end annotation


# instance fields
.field final m_opcode:B

.field m_parentBlockID:I

.field final m_targets:[I


# direct methods
.method protected constructor <init>(I[I)V
    .locals 1

    .prologue
    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_opcode:B

    .line 1488
    iput-object p2, p0, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_targets:[I

    .line 1489
    return-void
.end method


# virtual methods
.method abstract emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
.end method

.method protected final emitJumpOffset2(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;II)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1501
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1503
    iget v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_parentBlockID:I

    if-gt p3, v0, :cond_0

    .line 1506
    iget-object v0, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_blocks:Lcom/vladium/emma/instr/InstrVisitor$BlockList;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/instr/InstrVisitor$Block;

    iget v0, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    sub-int/2addr v0, p2

    .line 1508
    ushr-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    .line 1521
    :goto_0
    return-void

    .line 1513
    :cond_0
    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    .line 1516
    invoke-virtual {v1, v3, v3}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    .line 1519
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_backpatchQueue:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    aput p2, v2, v4

    const/4 v0, 0x3

    aput p3, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final emitJumpOffset4(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;II)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1525
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1527
    iget v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_parentBlockID:I

    if-gt p3, v0, :cond_0

    .line 1530
    iget-object v0, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_blocks:Lcom/vladium/emma/instr/InstrVisitor$BlockList;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/instr/InstrVisitor$Block;

    iget v0, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    sub-int/2addr v0, p2

    .line 1532
    ushr-int/lit8 v2, v0, 0x18

    ushr-int/lit8 v3, v0, 0x10

    ushr-int/lit8 v4, v0, 0x8

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1549
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    .line 1542
    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1547
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_backpatchQueue:Ljava/util/List;

    new-array v2, v4, [I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x2

    aput p2, v2, v0

    const/4 v0, 0x3

    aput p3, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method maxlength()I
    .locals 1

    .prologue
    .line 1494
    const/4 v0, 0x1

    return v0
.end method
