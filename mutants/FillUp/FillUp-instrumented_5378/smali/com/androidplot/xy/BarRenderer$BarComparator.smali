.class public Lcom/androidplot/xy/BarRenderer$BarComparator;
.super Ljava/lang/Object;
.source "BarRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/androidplot/xy/BarRenderer",
        "<TT;>.c;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/androidplot/xy/BarRenderer;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->a:Lcom/androidplot/xy/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/androidplot/xy/BarRenderer$c;Lcom/androidplot/xy/BarRenderer$c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/BarRenderer",
            "<TT;>.c;",
            "Lcom/androidplot/xy/BarRenderer",
            "<TT;>.c;)I"
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lcom/androidplot/xy/BarRenderer$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->a:Lcom/androidplot/xy/BarRenderer;

    iget-object v1, v1, Lcom/androidplot/xy/BarRenderer;->a:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    invoke-virtual {v1}, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 364
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 358
    :pswitch_0
    iget v0, p1, Lcom/androidplot/xy/BarRenderer$c;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Lcom/androidplot/xy/BarRenderer$c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p1, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v0, p1, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/androidplot/xy/BarRenderer$c;->a:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 352
    check-cast p1, Lcom/androidplot/xy/BarRenderer$c;

    check-cast p2, Lcom/androidplot/xy/BarRenderer$c;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BarRenderer$BarComparator;->compare(Lcom/androidplot/xy/BarRenderer$c;Lcom/androidplot/xy/BarRenderer$c;)I

    move-result v0

    return v0
.end method
