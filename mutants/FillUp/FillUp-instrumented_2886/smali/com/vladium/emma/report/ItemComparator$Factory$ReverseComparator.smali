.class final Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;
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
    name = "ReverseComparator"
.end annotation


# instance fields
.field private final m_comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;->m_comparator:Ljava/util/Comparator;

    .line 73
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;->m_comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
