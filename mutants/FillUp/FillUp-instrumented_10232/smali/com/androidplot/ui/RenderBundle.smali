.class public abstract Lcom/androidplot/ui/RenderBundle;
.super Ljava/lang/Object;
.source "RenderBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RenderBundleType:",
        "Lcom/androidplot/ui/RenderBundle;",
        "SeriesType::",
        "Lcom/androidplot/Series;",
        "SeriesFormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/Series;

.field private b:Lcom/androidplot/xy/XYSeriesFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSeriesFormatterType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Series;Lcom/androidplot/xy/XYSeriesFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TSeriesFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/androidplot/ui/RenderBundle;->b:Lcom/androidplot/xy/XYSeriesFormatter;

    .line 29
    iput-object p1, p0, Lcom/androidplot/ui/RenderBundle;->a:Lcom/androidplot/Series;

    .line 30
    return-void
.end method


# virtual methods
.method public getFormatter()Lcom/androidplot/xy/XYSeriesFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSeriesFormatterType;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/androidplot/ui/RenderBundle;->b:Lcom/androidplot/xy/XYSeriesFormatter;

    return-object v0
.end method

.method public getSeries()Lcom/androidplot/Series;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/androidplot/ui/RenderBundle;->a:Lcom/androidplot/Series;

    return-object v0
.end method

.method public setFormatter(Lcom/androidplot/xy/XYSeriesFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/androidplot/ui/RenderBundle;->b:Lcom/androidplot/xy/XYSeriesFormatter;

    .line 46
    return-void
.end method

.method public setSeries(Lcom/androidplot/Series;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/androidplot/ui/RenderBundle;->a:Lcom/androidplot/Series;

    .line 38
    return-void
.end method
