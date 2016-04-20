.class public final Lcom/vladium/emma/rt/InstrClassLoadHook;
.super Ljava/lang/Object;
.source "InstrClassLoadHook.java"

# interfaces
.implements Lcom/vladium/emma/rt/IClassLoadHook;


# instance fields
.field private final m_classDefProcessor:Lcom/vladium/emma/instr/InstrVisitor;

.field private final m_filter:Lcom/vladium/emma/filter/IInclExclFilter;

.field private final m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

.field private final m_metadata:Lcom/vladium/emma/data/IMetaData;


# direct methods
.method public constructor <init>(Lcom/vladium/emma/filter/IInclExclFilter;Lcom/vladium/emma/data/IMetaData;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_filter:Lcom/vladium/emma/filter/IInclExclFilter;

    .line 43
    iput-object p2, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_metadata:Lcom/vladium/emma/data/IMetaData;

    .line 46
    invoke-interface {p2}, Lcom/vladium/emma/data/IMetaData;->getOptions()Lcom/vladium/emma/data/CoverageOptions;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/vladium/emma/instr/InstrVisitor;

    invoke-direct {v1, v0}, Lcom/vladium/emma/instr/InstrVisitor;-><init>(Lcom/vladium/emma/data/CoverageOptions;)V

    iput-object v1, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_classDefProcessor:Lcom/vladium/emma/instr/InstrVisitor;

    .line 49
    new-instance v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-direct {v0}, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    .line 50
    return-void
.end method


# virtual methods
.method public processClassDef(Ljava/lang/String;[BILcom/vladium/util/ByteArrayOStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_filter:Lcom/vladium/emma/filter/IInclExclFilter;

    .line 66
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vladium/emma/filter/IInclExclFilter;->included(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :cond_0
    invoke-static {p2, p3}, Lcom/vladium/jcd/parser/ClassDefParser;->parseClass([BI)Lcom/vladium/jcd/cls/ClassDef;

    move-result-object v1

    .line 69
    invoke-static {p1}, Lcom/vladium/util/Descriptors;->javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_metadata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v4}, Lcom/vladium/emma/data/IMetaData;->lock()Ljava/lang/Object;

    move-result-object v6

    .line 74
    monitor-enter v6

    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_metadata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v4, v0}, Lcom/vladium/emma/data/IMetaData;->hasDescriptor(Ljava/lang/String;)Z

    move-result v4

    .line 77
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_classDefProcessor:Lcom/vladium/emma/instr/InstrVisitor;

    if-nez v4, :cond_3

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    invoke-virtual/range {v0 .. v5}, Lcom/vladium/emma/instr/InstrVisitor;->process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V

    .line 89
    iget-object v0, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-boolean v0, v0, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_instrumented:Z

    .line 91
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v4, v4, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    if-eqz v4, :cond_2

    .line 98
    monitor-enter v6

    .line 108
    :try_start_1
    iget-object v4, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_metadata:Lcom/vladium/emma/data/IMetaData;

    iget-object v5, p0, Lcom/vladium/emma/rt/InstrClassLoadHook;->m_instrResult:Lcom/vladium/emma/instr/InstrVisitor$InstrResult;

    iget-object v5, v5, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Lcom/vladium/emma/data/IMetaData;->add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 110
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :cond_2
    if-eqz v0, :cond_4

    .line 115
    invoke-static {v1, p4}, Lcom/vladium/jcd/compiler/ClassWriter;->writeClassTable(Lcom/vladium/jcd/cls/ClassDef;Ljava/io/OutputStream;)V

    .line 120
    :goto_1
    return v3

    .line 77
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v4, v2

    .line 87
    goto :goto_0

    .line 110
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    move v3, v2

    .line 120
    goto :goto_1
.end method
