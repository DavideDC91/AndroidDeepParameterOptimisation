.class public abstract Lcom/androidplot/ui/SeriesRenderer;
.super Ljava/lang/Object;
.source "SeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        "SeriesType::",
        "Lcom/androidplot/Series;",
        "SeriesFormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/Plot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPlotType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->a:Lcom/androidplot/Plot;

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation
.end method

.method public drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 65
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 66
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/ui/SeriesRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)TSeriesFormatterType;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->a:Lcom/androidplot/Plot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/androidplot/Plot;->getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public getPlot()Lcom/androidplot/Plot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPlotType;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->a:Lcom/androidplot/Plot;

    return-object v0
.end method

.method public getSeriesAndFormatterList()Lcom/androidplot/ui/SeriesAndFormatterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/ui/SeriesAndFormatterList",
            "<TSeriesType;TSeriesFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->a:Lcom/androidplot/Plot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Plot;->getSeriesAndFormatterListForRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesAndFormatterList;

    move-result-object v0

    return-object v0
.end method

.method public abstract onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/SeriesRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 52
    return-void
.end method

.method public setPlot(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->a:Lcom/androidplot/Plot;

    .line 40
    return-void
.end method
