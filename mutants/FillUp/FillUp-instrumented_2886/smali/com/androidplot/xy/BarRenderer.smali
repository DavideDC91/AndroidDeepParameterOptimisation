.class public Lcom/androidplot/xy/BarRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/BarRenderer$a;,
        Lcom/androidplot/xy/BarRenderer$BarComparator;,
        Lcom/androidplot/xy/BarRenderer$b;,
        Lcom/androidplot/xy/BarRenderer$c;,
        Lcom/androidplot/xy/BarRenderer$BarWidthStyle;,
        Lcom/androidplot/xy/BarRenderer$BarRenderStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidplot/xy/BarFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

.field private b:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 37
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer;->a:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    .line 38
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer;->b:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    .line 39
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/androidplot/xy/BarRenderer;->c:F

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/androidplot/xy/BarRenderer;->d:F

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 35
    check-cast p3, Lcom/androidplot/xy/BarFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/BarRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/XYPlot;->getSeriesListForRenderer(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 117
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 120
    if-nez v2, :cond_1

    .line 299
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeries;

    .line 132
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 134
    invoke-interface {v2, v4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 137
    new-instance v6, Lcom/androidplot/xy/BarRenderer$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v2, v4, v1}, Lcom/androidplot/xy/BarRenderer$c;-><init>(Lcom/androidplot/xy/BarRenderer;Lcom/androidplot/xy/XYSeries;ILandroid/graphics/RectF;)V

    .line 140
    iget v3, v6, Lcom/androidplot/xy/BarRenderer$c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    iget v3, v6, Lcom/androidplot/xy/BarRenderer$c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/BarRenderer$b;

    .line 146
    :goto_1
    iput-object v3, v6, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v3, v3, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 143
    :cond_4
    new-instance v3, Lcom/androidplot/xy/BarRenderer$b;

    iget v7, v6, Lcom/androidplot/xy/BarRenderer$c;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v7, v1}, Lcom/androidplot/xy/BarRenderer$b;-><init>(Lcom/androidplot/xy/BarRenderer;ILandroid/graphics/RectF;)V

    .line 144
    iget v7, v6, Lcom/androidplot/xy/BarRenderer$c;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_5
    const/4 v2, 0x0

    .line 155
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/BarRenderer$b;

    .line 157
    iput-object v3, v2, Lcom/androidplot/xy/BarRenderer$b;->g:Lcom/androidplot/xy/BarRenderer$b;

    move-object v3, v2

    .line 158
    goto :goto_2

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/androidplot/xy/BarRenderer;->d:F

    float-to-int v2, v2

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v14}, Ljava/util/TreeMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Ljava/util/TreeMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 168
    float-to-int v3, v3

    .line 169
    if-gez v3, :cond_14

    const/4 v3, 0x0

    move v13, v3

    .line 170
    :goto_3
    if-le v2, v13, :cond_13

    .line 171
    div-int/lit8 v2, v13, 0x2

    move v9, v2

    .line 184
    :goto_4
    invoke-virtual {v14}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 186
    invoke-virtual {v14, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/BarRenderer$b;

    .line 189
    sget-object v3, Lcom/androidplot/xy/BarRenderer$a;->a:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/BarRenderer;->b:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    invoke-virtual {v4}, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 218
    :goto_6
    sget-object v3, Lcom/androidplot/xy/BarRenderer$a;->b:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/BarRenderer;->a:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    invoke-virtual {v4}, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_5

    .line 230
    :pswitch_0
    iget-object v3, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    new-instance v4, Lcom/androidplot/xy/BarRenderer$BarComparator;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/androidplot/xy/BarRenderer$BarComparator;-><init>(Lcom/androidplot/xy/BarRenderer;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/androidplot/xy/BarRenderer$c;

    .line 232
    invoke-virtual {v8}, Lcom/androidplot/xy/BarRenderer$c;->a()Lcom/androidplot/xy/BarFormatter;

    move-result-object v12

    .line 233
    invoke-virtual {v12}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v16

    .line 234
    const/4 v2, 0x0

    .line 235
    if-eqz v12, :cond_12

    .line 236
    invoke-virtual {v12}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v2

    move-object v10, v2

    .line 239
    :goto_8
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 240
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    int-to-float v3, v2

    iget v2, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    int-to-float v5, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    :cond_9
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    int-to-float v3, v2

    iget v2, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    int-to-float v5, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    if-eqz v16, :cond_8

    if-eqz v10, :cond_8

    .line 244
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->b:I

    invoke-interface {v10, v2, v3}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v2

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->c:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v3, v4

    iget v4, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 192
    :pswitch_1
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidplot/xy/BarRenderer;->c:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    .line 193
    move-object/from16 v0, p0

    iget v3, v0, Lcom/androidplot/xy/BarRenderer;->c:F

    float-to-int v3, v3

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    .line 194
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    iget v4, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    goto/16 :goto_6

    .line 197
    :pswitch_2
    iget-object v3, v2, Lcom/androidplot/xy/BarRenderer$b;->g:Lcom/androidplot/xy/BarRenderer$b;

    if-eqz v3, :cond_b

    .line 198
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    iget-object v4, v2, Lcom/androidplot/xy/BarRenderer$b;->g:Lcom/androidplot/xy/BarRenderer$b;

    iget v4, v4, Lcom/androidplot/xy/BarRenderer$b;->b:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v9

    add-int/lit8 v3, v3, -0x1

    int-to-double v4, v13

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    if-gt v3, v4, :cond_b

    .line 200
    iget-object v3, v2, Lcom/androidplot/xy/BarRenderer$b;->g:Lcom/androidplot/xy/BarRenderer$b;

    iget v3, v3, Lcom/androidplot/xy/BarRenderer$b;->e:I

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    .line 206
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    iget v4, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    if-le v3, v4, :cond_a

    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    .line 208
    :cond_a
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    div-int/lit8 v4, v13, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    .line 210
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    iget v4, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    goto/16 :goto_6

    .line 214
    :cond_b
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->b:I

    div-int/lit8 v4, v13, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    .line 215
    iput v13, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    .line 216
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    iget v4, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    goto/16 :goto_6

    .line 249
    :pswitch_3
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    iget-object v4, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v12, v3, v4

    .line 250
    iget v3, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    .line 251
    iget-object v4, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/androidplot/xy/BarRenderer$BarComparator;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/androidplot/xy/BarRenderer$BarComparator;-><init>(Lcom/androidplot/xy/BarRenderer;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v11, v3

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/androidplot/xy/BarRenderer$c;

    .line 253
    invoke-virtual {v8}, Lcom/androidplot/xy/BarRenderer$c;->a()Lcom/androidplot/xy/BarFormatter;

    move-result-object v17

    .line 254
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v18

    .line 255
    const/4 v2, 0x0

    .line 256
    if-eqz v17, :cond_11

    .line 257
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v2

    move-object v10, v2

    .line 260
    :goto_a
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    .line 261
    int-to-float v3, v11

    iget v2, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v2

    add-int v2, v11, v12

    int-to-float v5, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_c
    int-to-float v3, v11

    iget v2, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v2

    add-int v2, v11, v12

    int-to-float v5, v2

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    if-eqz v18, :cond_d

    if-eqz v10, :cond_d

    .line 265
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->b:I

    invoke-interface {v10, v2, v3}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v3, v4

    iget v4, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_d
    add-int v2, v11, v12

    move v11, v2

    .line 268
    goto :goto_9

    .line 271
    :pswitch_4
    iget-object v3, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 272
    iget-object v4, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/androidplot/xy/BarRenderer$BarComparator;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/androidplot/xy/BarRenderer$BarComparator;-><init>(Lcom/androidplot/xy/BarRenderer;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v10, v3

    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/androidplot/xy/BarRenderer$c;

    .line 274
    invoke-virtual {v8}, Lcom/androidplot/xy/BarRenderer$c;->a()Lcom/androidplot/xy/BarFormatter;

    move-result-object v17

    .line 275
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v18

    .line 276
    const/4 v2, 0x0

    .line 277
    if-eqz v17, :cond_10

    .line 278
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v2

    move-object v12, v2

    .line 280
    :goto_c
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget-object v2, v2, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    sub-int/2addr v2, v3

    .line 281
    sub-int v11, v10, v2

    .line 283
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->c:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_e

    .line 284
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    int-to-float v3, v2

    int-to-float v4, v11

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    int-to-float v5, v2

    int-to-float v6, v10

    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 286
    :cond_e
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->d:I

    int-to-float v3, v2

    int-to-float v4, v11

    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->e:Lcom/androidplot/xy/BarRenderer$b;

    iget v2, v2, Lcom/androidplot/xy/BarRenderer$b;->e:I

    int-to-float v5, v2

    int-to-float v6, v10

    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    if-eqz v18, :cond_f

    if-eqz v12, :cond_f

    .line 288
    iget-object v2, v8, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->b:I

    invoke-interface {v12, v2, v3}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v2

    iget v3, v8, Lcom/androidplot/xy/BarRenderer$c;->c:I

    int-to-float v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v3, v4

    iget v4, v8, Lcom/androidplot/xy/BarRenderer$c;->d:I

    int-to-float v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_f
    move v10, v11

    .line 291
    goto :goto_b

    :cond_10
    move-object v12, v2

    goto :goto_c

    :cond_11
    move-object v10, v2

    goto/16 :goto_a

    :cond_12
    move-object v10, v2

    goto/16 :goto_8

    :cond_13
    move v9, v2

    goto/16 :goto_4

    :cond_14
    move v13, v3

    goto/16 :goto_3

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBarGap(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/androidplot/xy/BarRenderer;->d:F

    .line 71
    return-void
.end method

.method public setBarRenderStyle(Lcom/androidplot/xy/BarRenderer$BarRenderStyle;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->a:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    .line 75
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/androidplot/xy/BarRenderer;->c:F

    .line 63
    return-void
.end method

.method public setBarWidthStyle(Lcom/androidplot/xy/BarRenderer$BarWidthStyle;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->b:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    .line 79
    return-void
.end method

.method public setBarWidthStyle(Lcom/androidplot/xy/BarRenderer$BarWidthStyle;F)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BarRenderer;->setBarWidthStyle(Lcom/androidplot/xy/BarRenderer$BarWidthStyle;)V

    .line 83
    sget-object v0, Lcom/androidplot/xy/BarRenderer$a;->a:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/BarRenderer;->setBarWidth(F)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/BarRenderer;->setBarGap(F)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
