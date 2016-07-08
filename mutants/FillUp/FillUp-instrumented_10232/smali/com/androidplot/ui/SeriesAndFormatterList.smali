.class public Lcom/androidplot/ui/SeriesAndFormatterList;
.super Ljava/lang/Object;
.source "SeriesAndFormatterList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSeriesType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TFormatterType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/androidplot/Series;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)Z"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "series and formatter must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/androidplot/Series;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)Z"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFormatter(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TFormatterType;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormatter(Lcom/androidplot/Series;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)TFormatterType;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormatterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSeries(I)Lcom/androidplot/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSeriesType;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Series;

    return-object v0
.end method

.method public getSeriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public remove(Lcom/androidplot/Series;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)Z"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 67
    if-gez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFormatter(Lcom/androidplot/Series;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)TFormatterType;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androidplot/ui/SeriesAndFormatterList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
