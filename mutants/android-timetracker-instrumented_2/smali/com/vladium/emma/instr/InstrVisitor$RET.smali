.class final Lcom/vladium/emma/instr/InstrVisitor$RET;
.super Lcom/vladium/emma/instr/InstrVisitor$Branch;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RET"
.end annotation


# instance fields
.field final m_varindex:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 1581
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/instr/InstrVisitor$Branch;-><init>(I[I)V

    .line 1582
    iput p2, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    .line 1583
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 5

    .prologue
    .line 1589
    iget-object v0, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1591
    iget v1, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 1593
    iget-byte v1, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_opcode:B

    iget v2, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    .line 1603
    :goto_0
    return-void

    .line 1598
    :cond_0
    const/16 v1, 0xc4

    iget-byte v2, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_opcode:B

    iget v3, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    ushr-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    goto :goto_0
.end method

.method length()I
    .locals 2

    .prologue
    .line 1585
    iget v0, p0, Lcom/vladium/emma/instr/InstrVisitor$RET;->m_varindex:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
