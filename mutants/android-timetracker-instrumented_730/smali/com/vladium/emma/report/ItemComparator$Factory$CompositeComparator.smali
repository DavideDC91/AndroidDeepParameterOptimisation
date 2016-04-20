.class final Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;
.super Ljava/lang/Object;
.source "ItemComparator.java"

# interfaces
.implements Lcom/vladium/emma/report/ItemComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ItemComparator$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositeComparator"
.end annotation


# instance fields
.field private final m_comparators:[Ljava/util/Comparator;


# direct methods
.method constructor <init>([Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;->m_comparators:[Ljava/util/Comparator;

    .line 100
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;->m_comparators:[Ljava/util/Comparator;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;->m_comparators:[Ljava/util/Comparator;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 90
    if-eqz v2, :cond_1

    move v1, v2

    .line 93
    :cond_0
    return v1

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
