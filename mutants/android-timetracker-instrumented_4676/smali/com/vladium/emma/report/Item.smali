.class abstract Lcom/vladium/emma/report/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/vladium/emma/report/IItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/Item$ItemMetadata;
    }
.end annotation


# instance fields
.field protected final m_aggregates:[I

.field private final m_children:Ljava/util/List;

.field protected final m_parent:Lcom/vladium/emma/report/IItem;


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/IItem;)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/vladium/emma/report/Item;->m_parent:Lcom/vladium/emma/report/IItem;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    .line 152
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vladium/emma/report/Item;->m_aggregates:[I

    .line 153
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vladium/emma/report/Item;->m_aggregates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vladium/emma/report/Item;->m_aggregates:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected addChild(Lcom/vladium/emma/report/IItem;)V
    .locals 2

    .prologue
    .line 135
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public getAggregate(I)I
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/vladium/emma/report/Item;->m_aggregates:[I

    .line 74
    aget v1, v2, p1

    .line 76
    if-gez v1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    invoke-interface {v0, p1}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    aput v1, v2, p1

    .line 91
    :cond_1
    return v1
.end method

.method public final getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/vladium/emma/report/Item;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getAttributeIDs()J

    move-result-wide v0

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/vladium/emma/report/IItemAttribute$Factory;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v0

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getChildren()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/vladium/emma/report/Item;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vladium/emma/report/IItem;

    .line 53
    iget-object v1, p0, Lcom/vladium/emma/report/Item;->m_children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParent()Lcom/vladium/emma/report/IItem;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vladium/emma/report/Item;->m_parent:Lcom/vladium/emma/report/IItem;

    return-object v0
.end method
