.class public abstract Lcom/vladium/emma/instr/InstrProcessor;
.super Lcom/vladium/emma/Processor;
.source "InstrProcessor.java"

# interfaces
.implements Lcom/vladium/util/IPathEnumerator$IPathHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/instr/InstrProcessor$OutMode;
    }
.end annotation


# static fields
.field protected static final CLASSES:Ljava/lang/String; = "classes"

.field public static final DEFAULT_DO_SUID_COMPENSATION:Ljava/lang/String; = "true"

.field public static final DEFAULT_EXCLUDE_BRIDGE_METHODS:Ljava/lang/String; = "true"

.field public static final DEFAULT_EXCLUDE_SYNTHETIC_METHODS:Ljava/lang/String; = "true"

.field protected static final IN_CLASSES:Z = true

.field protected static final IN_LIB:Z = false

.field protected static final LIB:Ljava/lang/String; = "lib"

.field public static final PROPERTY_DO_SUID_COMPENSATION:Ljava/lang/String; = "instr.do_suid_compensation"

.field public static final PROPERTY_EXCLUDE_BRIDGE_METHODS:Ljava/lang/String; = "instr.exclude_bridge_methods"

.field public static final PROPERTY_EXCLUDE_SYNTHETIC_METHODS:Ljava/lang/String; = "instr.exclude_synthetic_methods"


# instance fields
.field protected m_canonical:Z

.field protected m_classCopies:I

.field protected m_classInstrs:I

.field protected m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;

.field protected m_dependsMode:Z

.field protected m_instrPath:[Ljava/io/File;

.field protected m_mdataOutFile:Ljava/io/File;

.field protected m_mdataOutMerge:Ljava/lang/Boolean;

.field protected m_outDir:Ljava/io/File;

.field protected m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/vladium/emma/Processor;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_dependsMode:Z

    .line 146
    return-void
.end method

.method public static create()Lcom/vladium/emma/instr/InstrProcessor;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/vladium/emma/instr/InstrProcessorST;

    invoke-direct {v0}, Lcom/vladium/emma/instr/InstrProcessorST;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final createDir(Ljava/io/File;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 220
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    const-string v1, "OUT_MKDIR_FAILURE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    const-string v1, "OUT_MKDIR_FAILURE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 230
    :cond_1
    return-void
.end method

.method protected final getFullOutDir(Ljava/io/File;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v1, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v1, :cond_0

    .line 244
    :goto_0
    return-object p1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v1, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v1, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-ne v0, v1, :cond_3

    .line 244
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;

    const-string v1, "classes"

    invoke-static {v0, v1}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;

    const-string v1, "lib"

    invoke-static {v0, v1}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid out mode state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getFullOutFile(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0, p1, p3}, Lcom/vladium/emma/instr/InstrProcessor;->getFullOutDir(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_classInstrs:I

    iput v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_classCopies:I

    .line 215
    return-void
.end method

.method public final declared-synchronized setDependsMode(Z)V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_dependsMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setInclExclFilter([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create([Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_coverageFilter:Lcom/vladium/emma/filter/IInclExclFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setInstrOutDir(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a directory: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized setInstrPath([Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 58
    :cond_0
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    .line 62
    :goto_0
    iput-boolean p2, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_canonical:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/vladium/util/Files;->pathToFiles([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setMetaOutFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_mdataOutFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a file: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_mdataOutFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized setMetaOutMerge(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_mdataOutMerge:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOutMode(Lcom/vladium/emma/instr/InstrProcessor$OutMode;)V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    if-nez p1, :cond_0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void
.end method

.method protected validateState()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Lcom/vladium/emma/Processor;->validateState()V

    .line 153
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instrumentation path not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outMode:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    sget-object v2, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    if-eq v0, v2, :cond_7

    .line 163
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output directory not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_outDir:Ljava/io/File;

    invoke-static {v0}, Lcom/vladium/util/Files;->canonicalizeFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 182
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_canonical:Z

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    .line 197
    :goto_0
    array-length v5, v0

    move-object v3, v4

    .line 198
    :goto_1
    if-eqz v3, :cond_7

    move v2, v1

    .line 200
    :goto_2
    if-ge v2, v5, :cond_6

    .line 202
    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output directory ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] cannot be one of the instrumentation path directories (or a child thereof)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    array-length v0, v0

    new-array v2, v0, [Ljava/io/File;

    move v0, v1

    .line 188
    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 190
    iget-object v3, p0, Lcom/vladium/emma/instr/InstrProcessor;->m_instrPath:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/vladium/util/Files;->canonicalizeFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    aput-object v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 200
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 210
    :cond_7
    return-void

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method
