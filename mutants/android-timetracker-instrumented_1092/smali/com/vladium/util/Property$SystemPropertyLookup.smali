.class final Lcom/vladium/util/Property$SystemPropertyLookup;
.super Lcom/vladium/util/XProperties;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemPropertyLookup"
.end annotation


# instance fields
.field private final m_systemPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 476
    if-eqz p1, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    :cond_0
    iput-object p1, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;

    .line 480
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 421
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    invoke-super {p0, p1}, Lcom/vladium/util/XProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    if-nez v0, :cond_0

    .line 426
    iget-object v2, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 428
    iget-object v0, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/vladium/util/Property$SystemPropertyLookup;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 443
    iget-object v0, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 447
    :try_start_1
    iget-object v0, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 449
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 450
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    iget-object v4, p0, Lcom/vladium/util/Property$SystemPropertyLookup;->m_systemPrefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 470
    :cond_1
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
