.class public Lcom/androidplot/xy/RectRegion;
.super Ljava/lang/Object;
.source "RectRegion.java"


# instance fields
.field private a:Lcom/androidplot/LineRegion;

.field private b:Lcom/androidplot/LineRegion;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6

    .prologue
    .line 52
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/androidplot/LineRegion;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/LineRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    .line 46
    new-instance v0, Lcom/androidplot/LineRegion;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/LineRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    .line 47
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/RectRegion;->setLabel(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static regionsWithin(Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/RectRegion;

    .line 134
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    return-object v1
.end method


# virtual methods
.method public containsDomainValue(Ljava/lang/Number;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1}, Lcom/androidplot/LineRegion;->contains(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsRangeValue(Ljava/lang/Number;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1}, Lcom/androidplot/LineRegion;->contains(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getRectF(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 101
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v1}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v1}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v1

    :goto_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidplot/util/ValPixConverter;->valToPix(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/PointF;

    move-result-object v7

    .line 109
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0}, Lcom/androidplot/LineRegion;->getMaxVal()Ljava/lang/Number;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v1}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v1}, Lcom/androidplot/LineRegion;->getMinVal()Ljava/lang/Number;

    move-result-object v1

    :goto_3
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidplot/util/ValPixConverter;->valToPix(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/PointF;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    :cond_0
    move-object v0, p2

    .line 101
    goto :goto_0

    :cond_1
    move-object v1, p5

    goto :goto_1

    :cond_2
    move-object v0, p3

    .line 109
    goto :goto_2

    :cond_3
    move-object v1, p4

    goto :goto_3
.end method

.method public intersects(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->getRectF(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object v0

    .line 97
    invoke-static {v0, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lcom/androidplot/xy/RectRegion;)Z
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/LineRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p3, p4}, Lcom/androidplot/LineRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->c:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setMaxX(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1}, Lcom/androidplot/LineRegion;->setMaxVal(Ljava/lang/Number;)V

    .line 156
    return-void
.end method

.method public setMaxY(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1}, Lcom/androidplot/LineRegion;->setMaxVal(Ljava/lang/Number;)V

    .line 172
    return-void
.end method

.method public setMinX(D)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->a:Lcom/androidplot/LineRegion;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/LineRegion;->setMinVal(Ljava/lang/Number;)V

    .line 148
    return-void
.end method

.method public setMinY(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->b:Lcom/androidplot/LineRegion;

    invoke-virtual {v0, p1}, Lcom/androidplot/LineRegion;->setMinVal(Ljava/lang/Number;)V

    .line 164
    return-void
.end method
