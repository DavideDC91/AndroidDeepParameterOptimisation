.class abstract Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CodeSegment"
.end annotation


# instance fields
.field final m_visitor:Lcom/vladium/emma/instr/InstrVisitor;


# direct methods
.method constructor <init>(Lcom/vladium/emma/instr/InstrVisitor;)V
    .locals 0

    .prologue
    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;->m_visitor:Lcom/vladium/emma/instr/InstrVisitor;

    .line 1790
    return-void
.end method


# virtual methods
.method abstract emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
.end method

.method abstract length()I
.end method

.method abstract maxstack()I
.end method
