.class public Lcom/androidplot/xy/XValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "XValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker",
        "<",
        "Lcom/androidplot/ui/YPositionMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/androidplot/ui/YPositionMetric;

    const/high16 v1, 0x40400000    # 3.0f

    sget-object v2, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/YLayoutStyle;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/YPositionMetric;-><init>(FLcom/androidplot/ui/YLayoutStyle;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/YPositionMetric;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/YPositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 44
    return-void
.end method
