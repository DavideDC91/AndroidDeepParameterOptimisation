.class public abstract Lcom/androidplot/xy/XYSeriesFormatter;
.super Lcom/androidplot/ui/Formatter;
.source "XYSeriesFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XYRegionFormatterType:",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">",
        "Lcom/androidplot/ui/Formatter",
        "<",
        "Lcom/androidplot/xy/XYPlot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/util/ZHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/ZHash",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            "TXYRegionFormatterType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 29
    new-instance v0, Lcom/androidplot/util/ZHash;

    invoke-direct {v0}, Lcom/androidplot/util/ZHash;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->a:Lcom/androidplot/util/ZHash;

    .line 30
    return-void
.end method


# virtual methods
.method public addRegion(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/XYRegionFormatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/RectRegion;",
            "TXYRegionFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->a:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/ZHash;->addToBottom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/RectRegion;",
            ")TXYRegionFormatterType;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->a:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ZHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYRegionFormatter;

    return-object v0
.end method

.method public getRegions()Lcom/androidplot/util/ZIndexable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/util/ZIndexable",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->a:Lcom/androidplot/util/ZHash;

    return-object v0
.end method

.method public bridge synthetic getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYSeriesFormatter;->getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
.end method

.method public removeRegion(Lcom/androidplot/xy/RectRegion;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->a:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ZHash;->remove(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
