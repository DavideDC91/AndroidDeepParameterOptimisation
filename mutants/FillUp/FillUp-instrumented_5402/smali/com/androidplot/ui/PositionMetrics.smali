.class public Lcom/androidplot/ui/PositionMetrics;
.super Ljava/lang/Object;
.source "PositionMetrics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/androidplot/ui/PositionMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/ui/XPositionMetric;

.field private b:Lcom/androidplot/ui/YPositionMetric;

.field private c:Lcom/androidplot/ui/AnchorPosition;


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/androidplot/ui/XPositionMetric;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/ui/XPositionMetric;-><init>(FLcom/androidplot/ui/XLayoutStyle;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/PositionMetrics;->setXPositionMetric(Lcom/androidplot/ui/XPositionMetric;)V

    .line 28
    new-instance v0, Lcom/androidplot/ui/YPositionMetric;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/ui/YPositionMetric;-><init>(FLcom/androidplot/ui/YLayoutStyle;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/PositionMetrics;->setYPositionMetric(Lcom/androidplot/ui/YPositionMetric;)V

    .line 29
    invoke-virtual {p0, p5}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/AnchorPosition;)V

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/androidplot/ui/PositionMetrics;)I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/androidplot/ui/PositionMetrics;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/PositionMetrics;->compareTo(Lcom/androidplot/ui/PositionMetrics;)I

    move-result v0

    return v0
.end method

.method public getAnchor()Lcom/androidplot/ui/AnchorPosition;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->c:Lcom/androidplot/ui/AnchorPosition;

    return-object v0
.end method

.method public getXPositionMetric()Lcom/androidplot/ui/XPositionMetric;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->a:Lcom/androidplot/ui/XPositionMetric;

    return-object v0
.end method

.method public getYPositionMetric()Lcom/androidplot/ui/YPositionMetric;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->b:Lcom/androidplot/ui/YPositionMetric;

    return-object v0
.end method

.method public setAnchor(Lcom/androidplot/ui/AnchorPosition;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->c:Lcom/androidplot/ui/AnchorPosition;

    .line 47
    return-void
.end method

.method public setXPositionMetric(Lcom/androidplot/ui/XPositionMetric;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->a:Lcom/androidplot/ui/XPositionMetric;

    .line 66
    return-void
.end method

.method public setYPositionMetric(Lcom/androidplot/ui/YPositionMetric;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->b:Lcom/androidplot/ui/YPositionMetric;

    .line 39
    return-void
.end method
