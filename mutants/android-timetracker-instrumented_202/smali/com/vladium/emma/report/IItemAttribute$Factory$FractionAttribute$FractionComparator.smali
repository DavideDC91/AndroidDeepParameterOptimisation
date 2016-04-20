.class final Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;
.super Ljava/lang/Object;
.source "IItemAttribute.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FractionComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;


# direct methods
.method private constructor <init>(Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;->this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;Lcom/vladium/emma/report/IItemAttribute$1;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;-><init>(Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 177
    check-cast p1, Lcom/vladium/emma/report/IItem;

    .line 178
    check-cast p2, Lcom/vladium/emma/report/IItem;

    .line 180
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;->this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    iget v0, v0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_numeratorAggregateID:I

    invoke-interface {p1, v0}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v0

    int-to-double v0, v0

    .line 181
    iget-object v2, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;->this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    iget v2, v2, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_denominatorAggregateID:I

    invoke-interface {p1, v2}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v2

    int-to-double v2, v2

    .line 183
    iget-object v4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;->this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    iget v4, v4, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_numeratorAggregateID:I

    invoke-interface {p2, v4}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v4

    int-to-double v4, v4

    .line 184
    iget-object v6, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;->this$0:Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    iget v6, v6, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_denominatorAggregateID:I

    invoke-interface {p2, v6}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v6

    int-to-double v6, v6

    .line 186
    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 188
    cmpl-double v2, v0, v8

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
