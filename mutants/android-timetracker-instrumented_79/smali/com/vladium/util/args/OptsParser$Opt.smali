.class final Lcom/vladium/util/args/OptsParser$Opt;
.super Ljava/lang/Object;
.source "OptsParser.java"

# interfaces
.implements Lcom/vladium/util/args/IOptsParser$IOpt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Opt"
.end annotation


# instance fields
.field private final m_canonicalName:Ljava/lang/String;

.field private final m_name:Ljava/lang/String;

.field private final m_patternPrefix:Ljava/lang/String;

.field private m_values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_name:Ljava/lang/String;

    .line 564
    iput-object p2, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_canonicalName:Ljava/lang/String;

    .line 565
    iput-object p3, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_patternPrefix:Ljava/lang/String;

    .line 566
    return-void
.end method


# virtual methods
.method addValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 570
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    return-void
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 529
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_patternPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 539
    :goto_0
    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 537
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_canonicalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_canonicalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 554
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opt;->m_values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 558
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
