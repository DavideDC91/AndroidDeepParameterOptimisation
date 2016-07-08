.class public Lcom/androidplot/xy/YValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "YValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker",
        "<",
        "Lcom/androidplot/ui/XPositionMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/androidplot/ui/XPositionMetric;

    const/high16 v1, 0x40400000    # 3.0f

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/XLayoutStyle;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/XPositionMetric;-><init>(FLcom/androidplot/ui/XLayoutStyle;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/XPositionMetric;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/XPositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 45
    return-void
.end method
