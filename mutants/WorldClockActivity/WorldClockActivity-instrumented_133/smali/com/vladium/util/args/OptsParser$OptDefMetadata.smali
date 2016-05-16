.class final Lcom/vladium/util/args/OptsParser$OptDefMetadata;
.super Ljava/lang/Object;
.source "OptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptDefMetadata"
.end annotation


# instance fields
.field final m_optdefMap:Ljava/util/Map;

.field final m_optdefs:Ljava/util/List;

.field final m_patternOptDefMap:Ljava/util/Map;

.field final m_requiredOpts:Ljava/util/Set;

.field private m_usageOptDef:Lcom/vladium/util/args/OptsParser$OptDef;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefs:Ljava/util/List;

    .line 924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefMap:Ljava/util/Map;

    .line 925
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_requiredOpts:Ljava/util/Set;

    .line 926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_patternOptDefMap:Ljava/util/Map;

    .line 927
    return-void
.end method


# virtual methods
.method addOptDef(Lcom/vladium/util/args/OptsParser$OptDef;)V
    .locals 5

    .prologue
    .line 983
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: optdef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_0
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_patternOptDefMap:Ljava/util/Map;

    .line 986
    :goto_0
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v2

    .line 988
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 990
    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 991
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate option name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefMap:Ljava/util/Map;

    goto :goto_0

    .line 993
    :cond_2
    aget-object v3, v2, v1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_requiredOpts:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_4
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$OptDef;->isUsage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1003
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_usageOptDef:Lcom/vladium/util/args/OptsParser$OptDef;

    if-eqz v0, :cond_5

    .line 1004
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "usage optdef set already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_5
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_usageOptDef:Lcom/vladium/util/args/OptsParser$OptDef;

    .line 1008
    :cond_6
    return-void
.end method

.method getOptDef(Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 931
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    aput-object v0, p2, v5

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$OptDef;

    .line 939
    if-nez v0, :cond_4

    .line 941
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_patternOptDefMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 942
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 944
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 945
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 947
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    if-eqz p2, :cond_3

    aput-object v2, p2, v5

    .line 950
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$OptDef;

    .line 956
    :cond_4
    return-object v0
.end method

.method getOptDefs()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_optdefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method getPatternOptDefs(Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$OptDef;
    .locals 2

    .prologue
    .line 966
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_patternOptDefMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$OptDef;

    return-object v0
.end method

.method getRequiredOpts()Ljava/util/Set;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_requiredOpts:Ljava/util/Set;

    return-object v0
.end method

.method getUsageOptDef()Lcom/vladium/util/args/OptsParser$OptDef;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDefMetadata;->m_usageOptDef:Lcom/vladium/util/args/OptsParser$OptDef;

    return-object v0
.end method
