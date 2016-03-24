.class final Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;
.super Ljava/lang/Object;
.source "IInclExclFilter.java"

# interfaces
.implements Lcom/vladium/emma/filter/IInclExclFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/filter/IInclExclFilter$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WCInclExclFilter"
.end annotation


# instance fields
.field private final m_exclusions:[Lcom/vladium/util/WCMatcher;

.field private final m_inclusions:[Lcom/vladium/util/WCMatcher;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    :cond_0
    iput-object v5, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    .line 198
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    :cond_2
    iput-object v5, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    .line 212
    :cond_3
    return-void

    .line 187
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vladium/util/WCMatcher;

    iput-object v0, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    iget-object v4, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    invoke-static {v0}, Lcom/vladium/util/WCMatcher;->compile(Ljava/lang/String;)Lcom/vladium/util/WCMatcher;

    move-result-object v0

    aput-object v0, v4, v1

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vladium/util/WCMatcher;

    iput-object v0, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    .line 205
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    iget-object v3, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    invoke-static {v0}, Lcom/vladium/util/WCMatcher;->compile(Ljava/lang/String;)Lcom/vladium/util/WCMatcher;

    move-result-object v0

    aput-object v0, v3, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_4

    .line 156
    :cond_0
    iput-object v4, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    .line 167
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_5

    .line 168
    :cond_2
    iput-object v4, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    .line 178
    :cond_3
    return-void

    .line 159
    :cond_4
    array-length v0, p1

    new-array v0, v0, [Lcom/vladium/util/WCMatcher;

    iput-object v0, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    move v0, v1

    .line 161
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/vladium/util/WCMatcher;->compile(Ljava/lang/String;)Lcom/vladium/util/WCMatcher;

    move-result-object v3

    aput-object v3, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_5
    array-length v0, p2

    new-array v0, v0, [Lcom/vladium/util/WCMatcher;

    iput-object v0, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    .line 173
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/vladium/util/WCMatcher;->compile(Ljava/lang/String;)Lcom/vladium/util/WCMatcher;

    move-result-object v2

    aput-object v2, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public included(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 121
    iget-object v4, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_inclusions:[Lcom/vladium/util/WCMatcher;

    .line 122
    iget-object v5, p0, Lcom/vladium/emma/filter/IInclExclFilter$Factory$WCInclExclFilter;->m_exclusions:[Lcom/vladium/util/WCMatcher;

    .line 124
    if-eqz v4, :cond_2

    .line 128
    array-length v6, v4

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_5

    .line 130
    aget-object v7, v4, v2

    invoke-virtual {v7, v3}, Lcom/vladium/util/WCMatcher;->matches([C)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 137
    :goto_2
    if-eqz v2, :cond_0

    .line 140
    :cond_2
    if-eqz v5, :cond_4

    .line 142
    array-length v4, v5

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_4

    .line 144
    aget-object v6, v5, v2

    invoke-virtual {v6, v3}, Lcom/vladium/util/WCMatcher;->matches([C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 128
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 148
    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2
.end method
