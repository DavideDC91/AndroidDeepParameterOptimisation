.class final Lcom/vladium/emma/instr/InstrVisitor$BlockList;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockList"
.end annotation


# instance fields
.field final m_blocks:Ljava/util/List;

.field m_header:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    .line 1402
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    .line 1407
    return-void
.end method
