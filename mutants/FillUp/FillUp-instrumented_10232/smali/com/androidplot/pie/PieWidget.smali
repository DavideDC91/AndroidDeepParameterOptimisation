.class public Lcom/androidplot/pie/PieWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "PieWidget.java"


# instance fields
.field private a:Lcom/androidplot/pie/PieChart;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/SizeMetrics;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V

    .line 37
    iput-object p2, p0, Lcom/androidplot/pie/PieWidget;->a:Lcom/androidplot/pie/PieChart;

    .line 38
    return-void
.end method


# virtual methods
.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/androidplot/pie/PieWidget;->a:Lcom/androidplot/pie/PieChart;

    invoke-virtual {v0}, Lcom/androidplot/pie/PieChart;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/PieRenderer;

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/androidplot/pie/PieRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
