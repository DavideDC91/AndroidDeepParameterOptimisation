.class final Lcom/vladium/util/Property$SystemRedirectsLookup;
.super Lcom/vladium/util/XProperties;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemRedirectsLookup"
.end annotation


# instance fields
.field private final m_systemRedirects:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/vladium/util/Property$SystemRedirectsLookup;->m_systemRedirects:Ljava/util/Map;

    .line 545
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 518
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    invoke-super {p0, p1}, Lcom/vladium/util/XProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    if-nez v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/vladium/util/Property$SystemRedirectsLookup;->m_systemRedirects:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/vladium/util/Property$SystemRedirectsLookup;->m_systemRedirects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    if-eqz v1, :cond_0

    .line 513
    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/vladium/util/Property$SystemRedirectsLookup;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/vladium/util/Property$SystemRedirectsLookup;->m_systemRedirects:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/vladium/util/Property$SystemRedirectsLookup;->m_systemRedirects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 531
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 534
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method
