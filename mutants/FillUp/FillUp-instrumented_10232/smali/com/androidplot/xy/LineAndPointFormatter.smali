.class public Lcom/androidplot/xy/LineAndPointFormatter;
.super Lcom/androidplot/xy/XYSeriesFormatter;
.source "LineAndPointFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesFormatter",
        "<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/xy/PointLabeler;

.field private b:Lcom/androidplot/xy/FillDirection;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/androidplot/xy/PointLabelFormatter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 70
    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, -0xff0100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 6

    .prologue
    .line 74
    sget-object v5, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;Lcom/androidplot/xy/FillDirection;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;Lcom/androidplot/xy/FillDirection;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 36
    new-instance v0, Lcom/androidplot/xy/b;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/b;-><init>(Lcom/androidplot/xy/LineAndPointFormatter;)V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->a:Lcom/androidplot/xy/PointLabeler;

    .line 56
    sget-object v0, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->b:Lcom/androidplot/xy/FillDirection;

    .line 63
    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/LineAndPointFormatter;->a(Ljava/lang/Integer;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->a(Ljava/lang/Integer;)V

    .line 79
    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    .line 80
    :goto_0
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/LineAndPointFormatter;->b(Ljava/lang/Integer;)V

    .line 81
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/LineAndPointFormatter;->setFillDirection(Lcom/androidplot/xy/FillDirection;)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/LineAndPointFormatter;->setPointLabelFormatter(Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public disableShadows()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 140
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 141
    return-void
.end method

.method public enableShadows()V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40400000    # 3.0f

    .line 134
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 135
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    return-void
.end method

.method public getFillDirection()Lcom/androidplot/xy/FillDirection;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->b:Lcom/androidplot/xy/FillDirection;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->f:Lcom/androidplot/xy/PointLabelFormatter;

    return-object v0
.end method

.method public getPointLabeler()Lcom/androidplot/xy/PointLabeler;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->a:Lcom/androidplot/xy/PointLabeler;

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
    .line 87
    const-class v0, Lcom/androidplot/xy/LineAndPointRenderer;

    return-object v0
.end method

.method public bridge synthetic getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/LineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getVertexPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setFillDirection(Lcom/androidplot/xy/FillDirection;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->b:Lcom/androidplot/xy/FillDirection;

    .line 54
    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->e:Landroid/graphics/Paint;

    .line 165
    return-void
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->c:Landroid/graphics/Paint;

    .line 149
    return-void
.end method

.method public setPointLabelFormatter(Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->f:Lcom/androidplot/xy/PointLabelFormatter;

    .line 173
    return-void
.end method

.method public setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->a:Lcom/androidplot/xy/PointLabeler;

    .line 181
    return-void
.end method

.method public setVertexPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->d:Landroid/graphics/Paint;

    .line 157
    return-void
.end method
