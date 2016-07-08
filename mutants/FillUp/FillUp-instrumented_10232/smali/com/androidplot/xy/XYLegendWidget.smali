.class public Lcom/androidplot/xy/XYLegendWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "XYLegendWidget.java"


# instance fields
.field private a:Lcom/androidplot/xy/XYPlot;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/androidplot/ui/TableModel;

.field private e:Z

.field private f:Z

.field private g:Lcom/androidplot/ui/SizeMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/androidplot/xy/a;

    invoke-direct {v0}, Lcom/androidplot/xy/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/SizeMetrics;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V

    .line 52
    iput-boolean v2, p0, Lcom/androidplot/xy/XYLegendWidget;->e:Z

    .line 53
    iput-boolean v2, p0, Lcom/androidplot/xy/XYLegendWidget;->f:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->c:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iput-object p2, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    .line 75
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/XYLegendWidget;->setTableModel(Lcom/androidplot/ui/TableModel;)V

    .line 76
    iput-object p5, p0, Lcom/androidplot/xy/XYLegendWidget;->g:Lcom/androidplot/ui/SizeMetrics;

    .line 77
    return-void
.end method

.method private a(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 84
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->g:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v1, p1}, Lcom/androidplot/ui/SizeMetrics;->getRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 89
    iget v2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 90
    return-object v1
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/androidplot/xy/XYLegendWidget;->e:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 107
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 108
    iget-boolean v1, p0, Lcom/androidplot/xy/XYLegendWidget;->f:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 113
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 114
    iget v1, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected declared-synchronized doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/TreeSet;

    new-instance v1, Lcom/androidplot/xy/a;

    invoke-direct {v1}, Lcom/androidplot/xy/a;-><init>()V

    invoke-direct {v7, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 159
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRenderer;

    .line 161
    iget-object v4, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidplot/xy/XYPlot;->getSeriesAndFormatterListForRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesAndFormatterList;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v4}, Lcom/androidplot/ui/SeriesAndFormatterList;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/androidplot/xy/XYSeriesRenderer;->getUniqueRegionFormatters()Ljava/util/Hashtable;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 174
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 177
    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->d:Lcom/androidplot/ui/TableModel;

    invoke-virtual {v2, p2, v1}, Lcom/androidplot/ui/TableModel;->getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;

    move-result-object v8

    .line 182
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/androidplot/xy/XYSeriesRenderer;

    move-object v4, v0

    .line 183
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->getSeriesAndFormatterListForRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesAndFormatterList;

    move-result-object v10

    .line 185
    if-eqz v10, :cond_4

    move v5, v6

    .line 188
    :goto_1
    invoke-virtual {v10}, Lcom/androidplot/ui/SeriesAndFormatterList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 190
    invoke-virtual {v10, v5}, Lcom/androidplot/ui/SeriesAndFormatterList;->getFormatter(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesFormatter;

    .line 191
    invoke-virtual {v10, v5}, Lcom/androidplot/ui/SeriesAndFormatterList;->getSeries(I)Lcom/androidplot/Series;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v3}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual {v4, p1, v11, v2}, Lcom/androidplot/xy/XYSeriesRenderer;->drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V

    invoke-direct {p0, p1, v1, v11, v3}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 188
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYRegionFormatter;

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/androidplot/xy/XYLegendWidget;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getIconSizeMetrics()Lcom/androidplot/ui/SizeMetrics;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->g:Lcom/androidplot/ui/SizeMetrics;

    return-object v0
.end method

.method public getTableModel()Lcom/androidplot/ui/TableModel;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->d:Lcom/androidplot/ui/TableModel;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawIconBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/androidplot/xy/XYLegendWidget;->e:Z

    return v0
.end method

.method public isDrawIconBorderEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/androidplot/xy/XYLegendWidget;->f:Z

    return v0
.end method

.method public setDrawIconBackgroundEnabled(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/androidplot/xy/XYLegendWidget;->e:Z

    .line 222
    return-void
.end method

.method public setDrawIconBorderEnabled(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/androidplot/xy/XYLegendWidget;->f:Z

    .line 230
    return-void
.end method

.method public setIconSizeMetrics(Lcom/androidplot/ui/SizeMetrics;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->g:Lcom/androidplot/ui/SizeMetrics;

    .line 247
    return-void
.end method

.method public declared-synchronized setTableModel(Lcom/androidplot/ui/TableModel;)V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->d:Lcom/androidplot/ui/TableModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->b:Landroid/graphics/Paint;

    .line 214
    return-void
.end method
