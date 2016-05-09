.class final Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;
.super Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "clinitHeader"
.end annotation


# static fields
.field private static final CLINIT_HEADER_INIT_CAPACITY:I = 0x20


# instance fields
.field private final m_buf:Lcom/vladium/util/ByteArrayOStream;


# direct methods
.method constructor <init>(Lcom/vladium/emma/instr/InstrVisitor;I)V
    .locals 5

    .prologue
    .line 1806
    invoke-direct {p0, p1}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;-><init>(Lcom/vladium/emma/instr/InstrVisitor;)V

    .line 1807
    new-instance v0, Lcom/vladium/util/ByteArrayOStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 1808
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    .line 1810
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 1812
    iget-object v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    .line 1813
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_classInstrMethodCount:I

    .line 1817
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    .line 1818
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_preclinitMethodrefIndex:I

    .line 1819
    iget v3, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_classNameConstantIndex:I

    .line 1829
    const/16 v3, 0xb8

    ushr-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v3, v4, v2}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    .line 1841
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    invoke-static {v0, v1, v2}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 1846
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1851
    invoke-static {v0, p2}, Lcom/vladium/jcd/compiler/CodeGen;->store_local_object_var(Lcom/vladium/util/ByteArrayOStream;I)V

    .line 1854
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 2

    .prologue
    .line 1864
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method length()I
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    return v0
.end method

.method maxstack()I
    .locals 1

    .prologue
    .line 1857
    const/4 v0, 0x2

    return v0
.end method
