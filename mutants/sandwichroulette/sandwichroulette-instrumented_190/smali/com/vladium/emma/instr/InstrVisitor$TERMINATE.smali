.class final Lcom/vladium/emma/instr/InstrVisitor$TERMINATE;
.super Lcom/vladium/emma/instr/InstrVisitor$Branch;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TERMINATE"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/instr/InstrVisitor$Branch;-><init>(I[I)V

    .line 1565
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    iget-byte v1, p0, Lcom/vladium/emma/instr/InstrVisitor$TERMINATE;->m_opcode:B

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1572
    return-void
.end method

.method length()I
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x1

    return v0
.end method
