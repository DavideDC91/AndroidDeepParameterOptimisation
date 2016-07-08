.class public Lcom/androidplot/ui/LayoutManager;
.super Lcom/androidplot/util/ZLinkedList;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/util/ZLinkedList",
        "<",
        "Lcom/androidplot/ui/widget/Widget;",
        ">;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Z

.field private d:Landroid/graphics/Paint;

.field private e:Z

.field private f:Landroid/graphics/Paint;

.field private g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:Landroid/graphics/Paint;

.field private k:Lcom/androidplot/util/DisplayDimensions;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const v2, -0xff0100

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/androidplot/util/ZLinkedList;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->a:Z

    .line 31
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->c:Z

    .line 33
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->e:Z

    .line 35
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->i:Z

    .line 39
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->b:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 152
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 153
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawMarginsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/ui/LayoutManager;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/ui/LayoutManager;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget;

    .line 92
    const/16 v1, 0x1f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 93
    invoke-virtual {v0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v2

    .line 95
    iget-object v3, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v3, v3, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v3

    .line 96
    iget-object v4, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    iget-object v4, v4, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/androidplot/ui/widget/Widget;->getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v4

    .line 101
    invoke-virtual {v0}, Lcom/androidplot/ui/widget/Widget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v7

    .line 104
    iget-boolean v5, p0, Lcom/androidplot/ui/LayoutManager;->e:Z

    if-eqz v5, :cond_2

    .line 105
    iget-object v5, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/androidplot/ui/widget/Widget;->isClippingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    iget-object v5, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 116
    :cond_3
    iget-object v5, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v5}, Lcom/androidplot/ui/widget/Widget;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 121
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->g:Z

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v5, v7, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {p1, v0, v5, v8}, Lcom/androidplot/ui/LayoutManager;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    :cond_4
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->i:Z

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, v7, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v5, v7, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getPaddingPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {p1, v0, v5, v8}, Lcom/androidplot/ui/LayoutManager;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    :cond_5
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->a:Z

    if-eqz v0, :cond_6

    .line 130
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/AnchorPosition;

    move-result-object v1

    invoke-static {v0, v4, v2, v3, v1}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(FFFFLcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;

    move-result-object v0

    .line 133
    const/high16 v4, 0x40800000    # 4.0f

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/androidplot/ui/LayoutManager;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    :cond_6
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->c:Z

    if-eqz v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 146
    :cond_8
    return-void
.end method

.method public getMarginPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlineShadowPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaddingPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawAnchorsEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->a:Z

    return v0
.end method

.method public isDrawMarginsEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->g:Z

    return v0
.end method

.method public isDrawOutlineShadowsEnabled()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->e:Z

    return v0
.end method

.method public isDrawOutlinesEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->c:Z

    return v0
.end method

.method public isDrawPaddingEnabled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->i:Z

    return v0
.end method

.method public layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    .line 266
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->refreshLayout()V

    .line 267
    return-void
.end method

.method public declared-synchronized onPostInit()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget;

    .line 67
    invoke-virtual {v0}, Lcom/androidplot/ui/widget/Widget;->onPostInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public refreshLayout()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget;

    .line 258
    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->k:Lcom/androidplot/util/DisplayDimensions;

    invoke-virtual {v0, v2}, Lcom/androidplot/ui/widget/Widget;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public setDrawAnchorsEnabled(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->a:Z

    .line 188
    return-void
.end method

.method public setDrawMarginsEnabled(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->g:Z

    .line 196
    return-void
.end method

.method public setDrawOutlineShadowsEnabled(Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 227
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->e:Z

    .line 228
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    .line 231
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 235
    :cond_0
    return-void
.end method

.method public setDrawOutlinesEnabled(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->c:Z

    .line 172
    return-void
.end method

.method public setDrawPaddingEnabled(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->i:Z

    .line 212
    return-void
.end method

.method public setMarginPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->h:Landroid/graphics/Paint;

    .line 204
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlinesEnabled(Z)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawAnchorsEnabled(Z)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawMarginsEnabled(Z)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawPaddingEnabled(Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlineShadowsEnabled(Z)V

    .line 80
    return-void
.end method

.method public setOutlinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->d:Landroid/graphics/Paint;

    .line 180
    return-void
.end method

.method public setOutlineShadowPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->f:Landroid/graphics/Paint;

    .line 243
    return-void
.end method

.method public setPaddingPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->j:Landroid/graphics/Paint;

    .line 220
    return-void
.end method
