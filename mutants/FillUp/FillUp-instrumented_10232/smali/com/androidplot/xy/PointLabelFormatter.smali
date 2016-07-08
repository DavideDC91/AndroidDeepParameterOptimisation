.class public Lcom/androidplot/xy/PointLabelFormatter;
.super Ljava/lang/Object;
.source "PointLabelFormatter.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field public hOffset:F

.field public vOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(IFF)V

    .line 40
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;->setTextPaint(Landroid/graphics/Paint;)V

    .line 51
    :goto_0
    iput p2, p0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    .line 52
    iput p3, p0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/PointLabelFormatter;->setTextPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/androidplot/xy/PointLabelFormatter;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/androidplot/xy/PointLabelFormatter;->a:Landroid/graphics/Paint;

    .line 61
    return-void
.end method
