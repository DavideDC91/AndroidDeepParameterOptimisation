.class final Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;
.super Lcom/vladium/emma/instr/InstrVisitor$Branch;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LOOKUPSWITCH"
.end annotation


# instance fields
.field final m_keys:[I


# direct methods
.method constructor <init>([I[I)V
    .locals 1

    .prologue
    .line 1684
    const/16 v0, 0xab

    invoke-direct {p0, v0, p2}, Lcom/vladium/emma/instr/InstrVisitor$Branch;-><init>(I[I)V

    .line 1685
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_keys:[I

    .line 1686
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1692
    iget-object v2, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1693
    invoke-virtual {v2}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v3

    .line 1695
    iget-byte v0, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_opcode:B

    invoke-virtual {v2, v0}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1698
    and-int/lit8 v0, v3, 0x3

    rsub-int/lit8 v4, v0, 0x3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v1}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_targets:[I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v3, v0}, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->emitJumpOffset4(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;II)V

    .line 1704
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_keys:[I

    array-length v0, v0

    .line 1705
    ushr-int/lit8 v1, v0, 0x18

    ushr-int/lit8 v4, v0, 0x10

    ushr-int/lit8 v5, v0, 0x8

    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1711
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_targets:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_keys:[I

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    .line 1714
    ushr-int/lit8 v4, v1, 0x18

    ushr-int/lit8 v5, v1, 0x10

    ushr-int/lit8 v6, v1, 0x8

    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1720
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_targets:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v3, v1}, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->emitJumpOffset4(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;II)V

    .line 1711
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1722
    :cond_1
    return-void
.end method

.method maxlength()I
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;->m_keys:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xc

    return v0
.end method
