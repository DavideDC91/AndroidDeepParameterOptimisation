.class final Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;
.super Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockSegment"
.end annotation


# static fields
.field private static final BLOCK_INIT_CAPACITY:I = 0x10


# instance fields
.field private final m_buf:Lcom/vladium/util/ByteArrayOStream;


# direct methods
.method public constructor <init>(Lcom/vladium/emma/instr/InstrVisitor;II)V
    .locals 3

    .prologue
    .line 1967
    invoke-direct {p0, p1}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;-><init>(Lcom/vladium/emma/instr/InstrVisitor;)V

    .line 1968
    new-instance v0, Lcom/vladium/util/ByteArrayOStream;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 1969
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    .line 1971
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 1974
    invoke-static {v0, p2}, Lcom/vladium/jcd/compiler/CodeGen;->load_local_object_var(Lcom/vladium/util/ByteArrayOStream;I)V

    .line 1979
    invoke-static {v0, v1, p3}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 1984
    const/4 v1, 0x4

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    .line 1992
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 2

    .prologue
    .line 2002
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    :goto_0
    return-void

    .line 2004
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method length()I
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    return v0
.end method

.method maxstack()I
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x3

    return v0
.end method
