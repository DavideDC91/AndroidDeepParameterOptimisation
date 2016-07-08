.class public Lcom/androidplot/xy/StepFormatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "StepFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepFormatter;->a(Ljava/lang/Integer;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/StepFormatter;->b(Ljava/lang/Integer;)V

    .line 33
    return-void
.end method


# virtual methods
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
    .line 37
    const-class v0, Lcom/androidplot/xy/StepRenderer;

    return-object v0
.end method

.method public bridge synthetic getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepFormatter;->getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/androidplot/xy/StepRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/StepRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method
