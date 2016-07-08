.class public Lcom/androidplot/xy/BarFormatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "BarFormatter.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 55
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 58
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRendererClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-class v0, Lcom/androidplot/xy/BarRenderer;

    return-object v0
.end method

.method public bridge synthetic getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BarFormatter;->getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/androidplot/xy/BarRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/BarRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->b:Landroid/graphics/Paint;

    .line 37
    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->a:Landroid/graphics/Paint;

    .line 29
    return-void
.end method
