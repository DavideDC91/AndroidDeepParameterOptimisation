.class public abstract Lcom/androidplot/xy/XYSeriesRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "XYSeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XYFormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">",
        "Lcom/androidplot/ui/SeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYPlot;",
        "Lcom/androidplot/xy/XYSeries;",
        "TXYFormatterType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getUniqueRegionFormatters()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/androidplot/xy/XYRegionFormatter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/androidplot/xy/XYSeriesRenderer;->getSeriesAndFormatterList()Lcom/androidplot/ui/SeriesAndFormatterList;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesAndFormatterList;->getFormatterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesFormatter;

    .line 42
    invoke-virtual {v0}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegions()Lcom/androidplot/util/ZIndexable;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/androidplot/util/ZIndexable;->elements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/RectRegion;

    .line 44
    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v5

    .line 45
    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_1
    return-object v2
.end method
