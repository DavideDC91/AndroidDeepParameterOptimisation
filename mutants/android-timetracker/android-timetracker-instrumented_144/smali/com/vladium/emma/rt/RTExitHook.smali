.class final Lcom/vladium/emma/rt/RTExitHook;
.super Ljava/lang/Object;
.source "RTExitHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CLOSURE_RESOURCE:Ljava/lang/String; = "RTExitHook.closure"


# instance fields
.field private m_RT:Ljava/lang/Class;

.field private m_cdata:Lcom/vladium/emma/data/ICoverageData;

.field private final m_merge:Z

.field private final m_outFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/vladium/emma/data/ICoverageData;Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/vladium/emma/rt/RTExitHook;->m_RT:Ljava/lang/Class;

    .line 108
    iput-object p2, p0, Lcom/vladium/emma/rt/RTExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 110
    iput-object p3, p0, Lcom/vladium/emma/rt/RTExitHook;->m_outFile:Ljava/io/File;

    .line 111
    iput-boolean p4, p0, Lcom/vladium/emma/rt/RTExitHook;->m_merge:Z

    .line 112
    return-void
.end method

.method public static createClassLoaderClosure()V
    .locals 5

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 50
    :try_start_0
    const-class v0, Lcom/vladium/emma/rt/RTExitHook;

    const-string v2, "RTExitHook.closure"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 53
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_0
    :goto_0
    const-string v1, "closure"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_3

    .line 76
    new-instance v0, Ljava/lang/Error;

    const-string v1, "packaging failure: no closure mapping"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Error;

    const-string v2, "packaging failure: closure resource not found"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :try_start_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packaging failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    :cond_3
    const-class v1, Lcom/vladium/emma/rt/RTExitHook;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/4 v3, 0x1

    :try_start_5
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 93
    :catch_3
    move-exception v1

    .line 95
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packaging failure: class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] not found {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/rt/RTExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/vladium/emma/rt/RTExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vladium/emma/rt/RTExitHook;->m_outFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/vladium/emma/rt/RTExitHook;->m_merge:Z

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RTCoverageDataPersister;->dumpCoverageData(Lcom/vladium/emma/data/ICoverageData;ZLjava/io/File;Z)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/RTExitHook;->m_RT:Ljava/lang/Class;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/rt/RTExitHook;->m_cdata:Lcom/vladium/emma/data/ICoverageData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
