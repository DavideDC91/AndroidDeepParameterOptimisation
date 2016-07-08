.class final Lcom/androidplot/xy/BarRenderer$c;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/androidplot/xy/XYSeries;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/androidplot/xy/BarRenderer$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/xy/BarRenderer",
            "<TT;>.b;"
        }
    .end annotation
.end field

.field private f:D

.field private g:D

.field private h:F

.field private i:F

.field private synthetic j:Lcom/androidplot/xy/BarRenderer;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;Lcom/androidplot/xy/XYSeries;ILandroid/graphics/RectF;)V
    .locals 8

    .prologue
    .line 309
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$c;->j:Lcom/androidplot/xy/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    .line 311
    iput p3, p0, Lcom/androidplot/xy/BarRenderer$c;->b:I

    .line 313
    invoke-interface {p2, p3}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$c;->g:D

    .line 314
    iget-wide v0, p0, Lcom/androidplot/xy/BarRenderer$c;->g:D

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    iget v1, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->h:F

    .line 315
    iget v0, p0, Lcom/androidplot/xy/BarRenderer$c;->h:F

    float-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->c:I

    .line 317
    invoke-interface {p2, p3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {p2, p3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$c;->f:D

    .line 319
    iget-wide v0, p0, Lcom/androidplot/xy/BarRenderer$c;->f:D

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    iget v1, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->i:F

    .line 320
    iget v0, p0, Lcom/androidplot/xy/BarRenderer$c;->i:F

    float-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->d:I

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$c;->f:D

    .line 323
    iget v0, p4, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->i:F

    .line 324
    iget v0, p0, Lcom/androidplot/xy/BarRenderer$c;->i:F

    float-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$c;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/androidplot/xy/BarFormatter;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer$c;->j:Lcom/androidplot/xy/BarRenderer;

    iget-object v1, p0, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/BarRenderer;->getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarFormatter;

    return-object v0
.end method
