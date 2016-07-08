.class public abstract Lcom/androidplot/ui/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Lcom/androidplot/ui/BoxModelable;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/widget/Widget$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Z

.field private d:Lcom/androidplot/ui/BoxModel;

.field private e:Lcom/androidplot/ui/SizeMetrics;

.field private f:Lcom/androidplot/util/DisplayDimensions;

.field private g:Lcom/androidplot/util/DisplayDimensions;

.field private h:Z

.field private i:Lcom/androidplot/ui/PositionMetrics;

.field private j:Lcom/androidplot/ui/LayoutManager;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/androidplot/ui/SizeMetrics;

    invoke-direct {v0, p2, p3}, Lcom/androidplot/ui/SizeMetrics;-><init>(Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/androidplot/ui/widget/Widget;->c:Z

    .line 36
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    .line 38
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->f:Lcom/androidplot/util/DisplayDimensions;

    .line 39
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    .line 40
    iput-boolean v1, p0, Lcom/androidplot/ui/widget/Widget;->h:Z

    .line 49
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->j:Lcom/androidplot/ui/LayoutManager;

    .line 50
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/Widget;->setSize(Lcom/androidplot/ui/SizeMetrics;)V

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->a()V

    .line 53
    return-void
.end method

.method public static getAnchorCoordinates(FFFFLcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p0, p2

    add-float v2, p1, p3

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, p4}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public static getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/util/PixelUtils;->add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public static getAnchorOffset(FFLcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 285
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 286
    sget-object v1, Lcom/androidplot/ui/widget/Widget$a;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/AnchorPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported anchor location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    div-float v1, p1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    :goto_0
    :pswitch_1
    return-object v0

    .line 293
    :pswitch_2
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-virtual {v0, p0, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 302
    :pswitch_5
    div-float v1, p1, v3

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 305
    :pswitch_6
    div-float v1, p0, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 308
    :pswitch_7
    div-float v1, p0, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 311
    :pswitch_8
    div-float v1, p0, v3

    div-float v2, p1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method protected abstract doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 344
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 348
    :cond_1
    return-void
.end method

.method public getAnchor()Lcom/androidplot/ui/AnchorPosition;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/AnchorPosition;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/XPositionMetric;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/XPositionMetric;->getPixelValue(F)F

    move-result v0

    iget v1, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 279
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/YPositionMetric;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/YPositionMetric;->getPixelValue(F)F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    .line 280
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 281
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/AnchorPosition;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/androidplot/util/PixelUtils;->sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getHeightMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getHeightMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPix(F)F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getHeightMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v0

    return v0
.end method

.method public getMarginBottom()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->i:Lcom/androidplot/ui/PositionMetrics;

    return-object v0
.end method

.method public getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getWidthMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getWidthMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getWidthPix(F)F
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getWidthMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v0

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->c:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->h:Z

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->f:Lcom/androidplot/util/DisplayDimensions;

    .line 274
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->refreshLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPostInit()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;)V
    .locals 6

    .prologue
    .line 77
    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->LEFT_TOP:Lcom/androidplot/ui/AnchorPosition;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/Widget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 78
    return-void
.end method

.method public position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/androidplot/ui/PositionMetrics;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/ui/PositionMetrics;-><init>(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V

    .line 90
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->j:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/androidplot/ui/LayoutManager;->addToTop(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public declared-synchronized refreshLayout()V
    .locals 7

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->i:Lcom/androidplot/ui/PositionMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->f:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->f:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/androidplot/ui/widget/Widget;->f:Lcom/androidplot/util/DisplayDimensions;

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/androidplot/ui/widget/Widget;->i:Lcom/androidplot/ui/PositionMetrics;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/androidplot/ui/widget/Widget;->getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v2

    .line 263
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 265
    invoke-virtual {p0, v3}, Lcom/androidplot/ui/widget/Widget;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v2, v3, v0, v1}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/androidplot/ui/widget/Widget;->g:Lcom/androidplot/util/DisplayDimensions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnchor(Lcom/androidplot/ui/AnchorPosition;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/AnchorPosition;)V

    .line 65
    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->b:Landroid/graphics/Paint;

    .line 378
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->a:Landroid/graphics/Paint;

    .line 370
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->c:Z

    .line 386
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getHeightMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    .line 135
    return-void
.end method

.method public setHeight(FLcom/androidplot/ui/SizeLayoutType;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getHeightMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    .line 139
    return-void
.end method

.method public setMarginBottom(F)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    .line 232
    return-void
.end method

.method public setMarginLeft(F)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 240
    return-void
.end method

.method public setMarginRight(F)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 167
    return-void
.end method

.method public setMarginTop(F)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 183
    return-void
.end method

.method public setMargins(FFFF)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setMargins(FFFF)V

    .line 171
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setPadding(FFFF)V

    .line 175
    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    .line 227
    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 197
    return-void
.end method

.method public setPaddingRight(F)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 217
    return-void
.end method

.method public setPaddingTop(F)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->d:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 207
    return-void
.end method

.method public setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->i:Lcom/androidplot/ui/PositionMetrics;

    .line 402
    return-void
.end method

.method public setSize(Lcom/androidplot/ui/SizeMetrics;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    .line 122
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->h:Z

    .line 394
    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getWidthMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    .line 127
    return-void
.end method

.method public setWidth(FLcom/androidplot/ui/SizeLayoutType;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->e:Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMetrics;->getWidthMetric()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    .line 131
    return-void
.end method
