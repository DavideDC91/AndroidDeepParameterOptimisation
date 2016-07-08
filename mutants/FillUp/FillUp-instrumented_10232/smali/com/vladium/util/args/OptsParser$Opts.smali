.class final Lcom/vladium/util/args/OptsParser$Opts;
.super Ljava/lang/Object;
.source "OptsParser.java"

# interfaces
.implements Lcom/vladium/util/args/IOptsParser$IOpts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Opts"
.end annotation


# static fields
.field private static final DEFAULT_ERROR_WIDTH:I = 0x50

.field private static final EMPTY_OPT_ARRAY:[Lcom/vladium/util/args/IOptsParser$IOpt;


# instance fields
.field private m_errors:Ljava/util/List;

.field private m_freeArgs:[Ljava/lang/String;

.field private final m_nameMap:Ljava/util/Map;

.field private final m_opts:Ljava/util/List;

.field private final m_patternMap:Ljava/util/Map;

.field private m_usageRequestLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vladium/util/args/IOptsParser$IOpt;

    sput-object v0, Lcom/vladium/util/args/OptsParser$Opts;->EMPTY_OPT_ARRAY:[Lcom/vladium/util/args/IOptsParser$IOpt;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_opts:Ljava/util/List;

    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_nameMap:Ljava/util/Map;

    .line 655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_patternMap:Ljava/util/Map;

    .line 656
    return-void
.end method


# virtual methods
.method addError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 728
    if-eqz p1, :cond_1

    .line 730
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_1
    return-void
.end method

.method addOpt(Lcom/vladium/util/args/OptsParser$Opt;Lcom/vladium/util/args/OptsParser$OptDef;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 660
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: opt"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: optdef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: occuranceName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_opts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {p2}, Lcom/vladium/util/args/OptsParser$OptDef;->getNames()[Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$Opt;->getPatternPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 671
    :goto_0
    if-eqz v0, :cond_7

    .line 673
    invoke-virtual {p1}, Lcom/vladium/util/args/OptsParser$Opt;->getPatternPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 675
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 677
    iget-object v4, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_nameMap:Ljava/util/Map;

    aget-object v5, v2, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 669
    goto :goto_0

    .line 681
    :cond_4
    invoke-virtual {p2}, Lcom/vladium/util/args/OptsParser$OptDef;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 683
    iget-object v3, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_patternMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 684
    if-nez v0, :cond_5

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 689
    iget-object v3, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_patternMap:Ljava/util/Map;

    aget-object v4, v2, v1

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 693
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_6
    return-void

    .line 698
    :cond_7
    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_nameMap:Ljava/util/Map;

    aget-object v3, v2, v1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public error(Ljava/io/PrintWriter;I)V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method errorsToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<no errors>"

    .line 751
    :goto_0
    return-object v0

    .line 745
    :cond_0
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 746
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 748
    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2}, Lcom/vladium/util/args/OptsParser$Opts;->error(Ljava/io/PrintWriter;I)V

    .line 749
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 751
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFreeArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->errorsToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_freeArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getOpt(Ljava/lang/String;)Lcom/vladium/util/args/OptsParser$Opt;
    .locals 2

    .prologue
    .line 707
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: occuranceName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$Opt;

    return-object v0
.end method

.method public getOpts()[Lcom/vladium/util/args/IOptsParser$IOpt;
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_opts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    sget-object v0, Lcom/vladium/util/args/OptsParser$Opts;->EMPTY_OPT_ARRAY:[Lcom/vladium/util/args/IOptsParser$IOpt;

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_opts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vladium/util/args/IOptsParser$IOpt;

    .line 619
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_opts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getOpts(Ljava/lang/String;)[Lcom/vladium/util/args/IOptsParser$IOpt;
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_patternMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 631
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    :cond_1
    sget-object v0, Lcom/vladium/util/args/OptsParser$Opts;->EMPTY_OPT_ARRAY:[Lcom/vladium/util/args/IOptsParser$IOpt;

    goto :goto_0

    .line 635
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/vladium/util/args/IOptsParser$IOpt;

    .line 636
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v1

    .line 638
    goto :goto_0
.end method

.method public hasArg(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$Opts;->errorsToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasErrors()Z
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFreeArgs([Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 714
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: args"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid start index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_freeArgs:[Ljava/lang/String;

    .line 718
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_freeArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_freeArgs:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    return-void
.end method

.method setUsageRequested(I)V
    .locals 0

    .prologue
    .line 723
    iput p1, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_usageRequestLevel:I

    .line 724
    return-void
.end method

.method public usageRequestLevel()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/vladium/util/args/OptsParser$Opts;->m_usageRequestLevel:I

    return v0
.end method
