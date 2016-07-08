.class public Lcom/androidplot/pie/SegmentFormatter;
.super Lcom/androidplot/ui/Formatter;
.source "SegmentFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/Formatter",
        "<",
        "Lcom/androidplot/pie/PieChart;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 78
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setFillPaint(Landroid/graphics/Paint;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setOuterEdgePaint(Landroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setInnerEdgePaint(Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setRadialEdgePaint(Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelPaint(Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelMarkerPaint(Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 80
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setFillPaint(Landroid/graphics/Paint;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setOuterEdgePaint(Landroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setInnerEdgePaint(Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setRadialEdgePaint(Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelPaint(Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelMarkerPaint(Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;-><init>(Ljava/lang/Integer;)V

    .line 90
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 97
    invoke-direct {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;-><init>(Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_2
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->b:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->b:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->c:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInnerEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelMarkerPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOuterEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadialEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->c:Landroid/graphics/Paint;

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
    .line 124
    const-class v0, Lcom/androidplot/pie/PieRenderer;

    return-object v0
.end method

.method public bridge synthetic getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/androidplot/pie/PieChart;

    invoke-virtual {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;->getRendererInstance(Lcom/androidplot/pie/PieChart;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getRendererInstance(Lcom/androidplot/pie/PieChart;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/androidplot/pie/PieRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/pie/PieRenderer;-><init>(Lcom/androidplot/pie/PieChart;)V

    return-object v0
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->d:Landroid/graphics/Paint;

    .line 162
    return-void
.end method

.method public setInnerEdgePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->a:Landroid/graphics/Paint;

    .line 138
    return-void
.end method

.method public setLabelMarkerPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->f:Landroid/graphics/Paint;

    .line 178
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->e:Landroid/graphics/Paint;

    .line 170
    return-void
.end method

.method public setOuterEdgePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->b:Landroid/graphics/Paint;

    .line 146
    return-void
.end method

.method public setRadialEdgePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->c:Landroid/graphics/Paint;

    .line 154
    return-void
.end method
