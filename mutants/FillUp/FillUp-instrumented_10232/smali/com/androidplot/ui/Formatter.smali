.class public abstract Lcom/androidplot/ui/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;I)Lcom/androidplot/ui/Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/androidplot/ui/Formatter",
            "<TPlotType;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1, p0, p2}, Lcom/androidplot/util/Configurator;->configure(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 44
    return-object p0
.end method

.method public abstract getRendererClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)",
            "Lcom/androidplot/ui/SeriesRenderer;"
        }
    .end annotation
.end method
