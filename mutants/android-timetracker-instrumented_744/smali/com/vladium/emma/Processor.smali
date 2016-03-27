.class public abstract Lcom/vladium/emma/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# instance fields
.field protected m_appName:Ljava/lang/String;

.field protected m_log:Lcom/vladium/logging/Logger;

.field protected m_propertyOverrides:Lcom/vladium/util/IProperties;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method protected abstract _run(Lcom/vladium/util/IProperties;)V
.end method

.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vladium/emma/Processor;->validateState()V

    .line 34
    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getAppProperties()Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/vladium/emma/Processor;->m_propertyOverrides:Lcom/vladium/util/IProperties;

    invoke-static {v1, v0}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/vladium/emma/Processor;->m_appName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/vladium/emma/AppLoggers;->create(Ljava/lang/String;Lcom/vladium/util/IProperties;Lcom/vladium/logging/Logger;)Lcom/vladium/logging/Logger;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "run"

    const-string v3, "complete tool properties:"

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vladium/util/IProperties;->list(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/vladium/logging/Logger;->push(Lcom/vladium/logging/Logger;)V

    .line 52
    iput-object v1, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    .line 54
    invoke-virtual {p0, v0}, Lcom/vladium/emma/Processor;->_run(Lcom/vladium/util/IProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    invoke-static {v0}, Lcom/vladium/logging/Logger;->pop(Lcom/vladium/logging/Logger;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    invoke-static {v1}, Lcom/vladium/logging/Logger;->pop(Lcom/vladium/logging/Logger;)V

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vladium/emma/Processor;->m_log:Lcom/vladium/logging/Logger;

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAppName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vladium/emma/Processor;->m_appName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setPropertyOverrides(Lcom/vladium/util/IProperties;)V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vladium/emma/Processor;->m_propertyOverrides:Lcom/vladium/util/IProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setPropertyOverrides(Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/Processor;->m_propertyOverrides:Lcom/vladium/util/IProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateState()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
