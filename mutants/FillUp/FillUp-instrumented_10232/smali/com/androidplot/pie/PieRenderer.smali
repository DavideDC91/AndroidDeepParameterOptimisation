.class public Lcom/androidplot/pie/PieRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/pie/PieRenderer$a;,
        Lcom/androidplot/pie/PieRenderer$DonutMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/SeriesRenderer",
        "<",
        "Lcom/androidplot/pie/PieChart;",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/androidplot/pie/PieRenderer$DonutMode;


# direct methods
.method public constructor <init>(Lcom/androidplot/pie/PieChart;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidplot/pie/PieRenderer;->a:F

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/androidplot/pie/PieRenderer;->b:F

    .line 35
    sget-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

    iput-object v0, p0, Lcom/androidplot/pie/PieRenderer;->c:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 45
    return-void
.end method

.method private static a([D)D
    .locals 6

    .prologue
    .line 177
    const-wide/16 v2, 0x0

    .line 178
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 179
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private a(FFFF)Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    float-to-double v2, p4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    float-to-double v4, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    new-instance v1, Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    double-to-float v4, v4

    add-float/2addr v4, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    double-to-float v2, v2

    add-float/2addr v0, v2

    invoke-direct {v1, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private a()[D
    .locals 6

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/PieChart;

    invoke-virtual {v0}, Lcom/androidplot/pie/PieChart;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [D

    .line 188
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/PieChart;

    invoke-virtual {v0}, Lcom/androidplot/pie/PieChart;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/Segment;

    .line 190
    invoke-virtual {v0}, Lcom/androidplot/pie/Segment;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRadius(Landroid/graphics/RectF;)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/androidplot/pie/PieRenderer;->getRadius(Landroid/graphics/RectF;)F

    move-result v16

    .line 55
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->a()[D

    move-result-object v17

    .line 58
    invoke-static/range {v17 .. v17}, Lcom/androidplot/pie/PieRenderer;->a([D)D

    move-result-wide v18

    .line 59
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/pie/PieRenderer;->a:F

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/pie/PieChart;

    invoke-virtual {v4}, Lcom/androidplot/pie/PieChart;->getSeriesSet()Ljava/util/Set;

    move-result-object v7

    .line 64
    new-instance v20, Landroid/graphics/RectF;

    iget v4, v6, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, v16

    iget v8, v6, Landroid/graphics/PointF;->y:F

    sub-float v8, v8, v16

    iget v9, v6, Landroid/graphics/PointF;->x:F

    add-float v9, v9, v16

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v6, v6, v16

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move v12, v4

    move v13, v5

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/androidplot/pie/Segment;

    .line 69
    aget-wide v4, v17, v12

    mul-double v4, v4, v18

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v22, v0

    .line 70
    add-float v14, v13, v22

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/pie/PieChart;

    const-class v5, Lcom/androidplot/pie/PieRenderer;

    invoke-virtual {v4, v10, v5}, Lcom/androidplot/pie/PieChart;->getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    sget-object v4, Lcom/androidplot/pie/PieRenderer$a;->a:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidplot/pie/PieRenderer;->c:Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-virtual {v5}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Not yet implemented."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->b:F

    mul-float v4, v4, v16

    move v15, v4

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/androidplot/pie/PieRenderer;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v13}, Lcom/androidplot/pie/PieRenderer;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v6

    add-float v5, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/androidplot/pie/PieRenderer;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v25

    add-float v5, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v5}, Lcom/androidplot/pie/PieRenderer;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v26

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float v8, v8, v16

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float v9, v9, v16

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    add-float v27, v27, v16

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v28, v0

    add-float v28, v28, v16

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v8, v9, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v0, v22

    invoke-virtual {v5, v7, v13, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v5, v0, v13, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v7, Landroid/graphics/RectF;

    sub-float v8, v23, v15

    sub-float v9, v24, v15

    add-float v27, v23, v15

    add-float v28, v24, v15

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v8, v9, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float v8, v13, v22

    move/from16 v0, v22

    neg-float v9, v0

    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v25

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v25

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-float v4, v16, v15

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v16, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v22, v5

    add-float/2addr v5, v13

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/androidplot/pie/PieRenderer;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v10}, Lcom/androidplot/pie/Segment;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v13, v14

    .line 76
    goto/16 :goto_0

    .line 72
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->b:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->b:F

    :goto_2
    move v15, v4

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->b:F

    add-float v4, v4, v16

    goto :goto_2

    .line 77
    :cond_1
    return-void

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDonutSize(FLcom/androidplot/pie/PieRenderer$DonutMode;)V
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/androidplot/pie/PieRenderer$a;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size parameter must be between 0 and 1 when operating in PERCENT mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :pswitch_1
    iput-object p2, p0, Lcom/androidplot/pie/PieRenderer;->c:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 224
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->b:F

    .line 225
    return-void

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndDeg(F)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public setStartDeg(F)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->a:F

    .line 229
    return-void
.end method
