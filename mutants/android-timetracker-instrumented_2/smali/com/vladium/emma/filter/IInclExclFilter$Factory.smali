.class public abstract Lcom/vladium/emma/filter/IInclExclFilter$Factory;
.super Ljava/lang/Object;
.source "IInclExclFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/filter/IInclExclFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;
    .locals 3

    .prologue
    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-static {p2}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create([Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 44
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    if-eqz p2, :cond_2

    .line 48
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 50
    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_2
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Lcom/vladium/emma/filter/IInclExclFilter$Factory;->create([Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Ljava/util/List;Ljava/util/List;)Lcom/vladium/emma/filter/IInclExclFilter;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;

    invoke-direct {v0, p0, p1}, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 69
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v2, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v2

    .line 95
    :goto_0
    return-object v0

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    array-length v4, p0

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_5

    .line 77
    aget-object v5, p0, v0

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3

    .line 82
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4

    .line 88
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_5
    new-instance v0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;

    invoke-direct {v0, v1, v3}, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static create([Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/filter/IInclExclFilter;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;

    invoke-direct {v0, p0, p1}, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
