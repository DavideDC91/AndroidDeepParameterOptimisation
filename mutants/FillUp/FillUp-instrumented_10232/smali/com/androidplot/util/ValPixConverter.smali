.class public Lcom/androidplot/util/ValPixConverter;
.super Ljava/lang/Object;
.source "ValPixConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pixToVal(FDDFZ)D
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 65
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pixel values cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmpg-float v0, p5, v1

    if-gtz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length in pixels must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-eqz p6, :cond_2

    .line 74
    sub-float p0, p5, p0

    .line 76
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/androidplot/util/ValPixConverter;->range(DD)D

    move-result-wide v0

    .line 77
    float-to-double v2, p5

    div-double/2addr v0, v2

    float-to-double v2, p0

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public static range(DD)D
    .locals 2

    .prologue
    .line 45
    sub-double v0, p2, p0

    return-wide v0
.end method

.method public static valPerPix(DDF)D
    .locals 4

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/androidplot/util/ValPixConverter;->range(DD)D

    move-result-wide v0

    .line 51
    float-to-double v2, p4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static valToPix(DDDFZ)F
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length in pixels must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/androidplot/util/ValPixConverter;->range(DD)D

    move-result-wide v0

    .line 34
    float-to-double v2, p6

    div-double v0, v2, v0

    .line 35
    sub-double v2, p0, p2

    .line 36
    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 38
    if-eqz p7, :cond_1

    .line 39
    sub-float v0, p6, v0

    .line 41
    :cond_1
    return v0
.end method

.method public static valToPix(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float v8, v0, v1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 94
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v8, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
