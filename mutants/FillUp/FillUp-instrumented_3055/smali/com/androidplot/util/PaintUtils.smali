.class public Lcom/androidplot/util/PaintUtils;
.super Ljava/lang/Object;
.source "PaintUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFontSizeDp(Landroid/graphics/Paint;F)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    return-void
.end method

.method public static setLineSizeDp(Landroid/graphics/Paint;F)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    return-void
.end method

.method public static setShadowDp(Landroid/graphics/Paint;FFFI)V
    .locals 3

    .prologue
    .line 58
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    .line 59
    invoke-static {p2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    .line 60
    invoke-static {p3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    .line 61
    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 62
    return-void
.end method
