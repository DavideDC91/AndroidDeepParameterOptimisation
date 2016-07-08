.class final Lcom/vladium/emma/instr/InstrVisitor$methodHeader;
.super Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "methodHeader"
.end annotation


# static fields
.field private static final HEADER_INIT_CAPACITY:I = 0x10


# instance fields
.field private final m_buf:Lcom/vladium/util/ByteArrayOStream;


# direct methods
.method constructor <init>(Lcom/vladium/emma/instr/InstrVisitor;I)V
    .locals 7

    .prologue
    .line 1884
    invoke-direct {p0, p1}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;-><init>(Lcom/vladium/emma/instr/InstrVisitor;)V

    .line 1885
    new-instance v0, Lcom/vladium/util/ByteArrayOStream;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 1886
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$methodHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    .line 1888
    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 1889
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    .line 1890
    iget v3, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_preclinitMethodrefIndex:I

    .line 1896
    const/16 v4, 0xb2

    ushr-int/lit8 v5, v2, 0x8

    const/16 v6, 0x59

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1907
    const/16 v2, 0xc7

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v0, v2, v4, v5}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    .line 1915
    const/16 v2, 0x57

    const/16 v4, 0xb8

    ushr-int/lit8 v5, v3, 0x8

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 1924
    iget v2, p1, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    invoke-static {v0, v1, v2}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 1929
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 1934
    invoke-static {v0, p2}, Lcom/vladium/jcd/compiler/CodeGen;->store_local_object_var(Lcom/vladium/util/ByteArrayOStream;I)V

    .line 1937
    return-void
.end method


# virtual methods
.method emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V
    .locals 2

    .prologue
    .line 1947
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$methodHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    iget-object v1, p1, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0, v1}, Lcom/vladium/util/ByteArrayOStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :goto_0
    return-void

    .line 1949
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method length()I
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor$methodHeader;->m_buf:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v0}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v0

    return v0
.end method

.method maxstack()I
    .locals 1

    .prologue
    .line 1940
    const/4 v0, 0x2

    return v0
.end method
