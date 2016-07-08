.class public Lcom/androidplot/pie/PieChart;
.super Lcom/androidplot/Plot;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot",
        "<",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        "Lcom/androidplot/pie/PieRenderer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/pie/PieWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    .line 58
    new-instance v0, Lcom/androidplot/pie/PieWidget;

    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/SizeMetrics;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->FILL:Lcom/androidplot/ui/SizeLayoutType;

    invoke-static {v7}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->FILL:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/pie/PieWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/SizeMetrics;)V

    iput-object v0, p0, Lcom/androidplot/pie/PieChart;->a:Lcom/androidplot/pie/PieWidget;

    .line 67
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->a:Lcom/androidplot/pie/PieWidget;

    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->CENTER:Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/pie/PieWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 74
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->a:Lcom/androidplot/pie/PieWidget;

    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/androidplot/pie/PieWidget;->setPadding(FFFF)V

    .line 80
    return-void
.end method

.method public addSegment(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/pie/PieChart;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 88
    return-void
.end method

.method public getPieWidget()Lcom/androidplot/pie/PieWidget;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->a:Lcom/androidplot/pie/PieWidget;

    return-object v0
.end method

.method public removeSegment(Lcom/androidplot/pie/Segment;)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/androidplot/pie/PieChart;->removeSeries(Lcom/androidplot/Series;)V

    .line 92
    return-void
.end method

.method public setPieWidget(Lcom/androidplot/pie/PieWidget;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/androidplot/pie/PieChart;->a:Lcom/androidplot/pie/PieWidget;

    .line 39
    return-void
.end method
