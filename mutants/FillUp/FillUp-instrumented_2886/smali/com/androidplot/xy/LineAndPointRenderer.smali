.class public Lcom/androidplot/xy/LineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "LineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/LineAndPointRenderer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/LineAndPointFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<TFormatterType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 35
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 19

    .prologue
    .line 156
    new-instance v10, Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 161
    sget-object v2, Lcom/androidplot/xy/LineAndPointRenderer$a;->a:[I

    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/FillDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 186
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fill direction not yet implemented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :pswitch_0
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 189
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    .line 203
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegions()Lcom/androidplot/util/ZIndexable;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/util/ZIndexable;->elements()Ljava/util/List;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/androidplot/xy/RectRegion;->regionsWithin(Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/RectRegion;

    .line 204
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v18

    .line 205
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/RectRegion;->getRectF(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_1

    .line 208
    const/16 v3, 0x1f

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 209
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 210
    invoke-virtual/range {v18 .. v18}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 168
    :pswitch_1
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 173
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v6

    check-cast v6, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v2

    .line 179
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    .line 181
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 212
    :catchall_0
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    throw v2

    .line 218
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->rewind()V

    .line 223
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 75
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    return-void
.end method

.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 31
    check-cast p3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/LineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 8

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 55
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 57
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    :cond_1
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v7, v6, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 67
    :cond_2
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->getSeriesListForRenderer(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_a

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/androidplot/xy/XYSeries;

    .line 45
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/androidplot/xy/LineAndPointRenderer;->getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/androidplot/xy/LineAndPointFormatter;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v15

    const/4 v10, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v8}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v11, v1

    move-object v12, v2

    move-object v13, v3

    :goto_0
    invoke-interface {v8}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    invoke-interface {v8, v11}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v8, v11}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v7

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v1, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v15, :cond_3

    if-eqz v3, :cond_3

    if-nez v12, :cond_b

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v2, v3

    :goto_2
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v13}, Lcom/androidplot/xy/LineAndPointRenderer;->a(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_1
    :goto_3
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move-object v10, v1

    move-object v12, v2

    move-object v13, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    if-eqz v13, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/androidplot/xy/LineAndPointRenderer;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_3

    :cond_5
    if-eqz v15, :cond_6

    if-eqz v12, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/androidplot/xy/LineAndPointRenderer;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    :cond_6
    invoke-virtual {v9}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v9}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v4

    if-nez v3, :cond_7

    if-eqz v4, :cond_0

    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/Pair;

    invoke-virtual {v9}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v6

    if-eqz v3, :cond_9

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1, v10}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_9
    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v8, v1}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v7, v1

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v4, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v1, v2

    invoke-virtual {v4}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 49
    :cond_a
    return-void

    :cond_b
    move-object v1, v10

    move-object v2, v12

    goto/16 :goto_2
.end method
