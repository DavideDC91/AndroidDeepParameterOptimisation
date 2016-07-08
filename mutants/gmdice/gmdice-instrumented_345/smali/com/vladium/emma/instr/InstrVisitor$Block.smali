.class final Lcom/vladium/emma/instr/InstrVisitor$Block;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Block"
.end annotation


# instance fields
.field public m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

.field m_first:I

.field public m_insertion:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

.field m_instrCount:I

.field m_length:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/instr/InstrVisitor$1;)V
    .locals 0

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrVisitor$Block;-><init>()V

    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;[B)V
    .locals 5

    .prologue
    .line 1438
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    .line 1439
    iget v2, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    .line 1441
    invoke-virtual {v1}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    .line 1443
    const/4 v0, 0x0

    iget v3, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_length:I

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1445
    add-int v4, v2, v0

    aget-byte v4, p2, v4

    invoke-virtual {v1, v4}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_insertion:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    if-eqz v0, :cond_1

    .line 1449
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_insertion:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;->emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/instr/InstrVisitor$Branch;->emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V

    .line 1453
    :cond_2
    return-void
.end method
