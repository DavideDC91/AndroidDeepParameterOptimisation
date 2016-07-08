.class public abstract Lcom/vladium/emma/report/ItemComparator$Factory;
.super Ljava/lang/Object;
.source "ItemComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ItemComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;,
        Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;,
        Lcom/vladium/emma/report/ItemComparator$Factory$NullComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static create([II)Lcom/vladium/emma/report/ItemComparator;
    .locals 5

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: attributeIDsWithDir"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/vladium/emma/report/ItemComparator;->NULL_COMPARATOR:Lcom/vladium/emma/report/ItemComparator;

    .line 49
    :goto_0
    return-object v0

    .line 40
    :cond_1
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/util/Comparator;

    .line 41
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 43
    aget v1, p0, v0

    .line 45
    invoke-static {v1, p1}, Lcom/vladium/emma/report/IItemAttribute$Factory;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemAttribute;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 46
    shr-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gez v1, :cond_2

    new-instance v1, Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;

    invoke-direct {v1, v2}, Lcom/vladium/emma/report/ItemComparator$Factory$ReverseComparator;-><init>(Ljava/util/Comparator;)V

    :goto_2
    aput-object v1, v3, v4

    .line 41
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 46
    goto :goto_2

    .line 49
    :cond_3
    new-instance v0, Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;

    invoke-direct {v0, v3}, Lcom/vladium/emma/report/ItemComparator$Factory$CompositeComparator;-><init>([Ljava/util/Comparator;)V

    goto :goto_0
.end method
