.class public Lcom/androidplot/ui/SizeMetrics;
.super Ljava/lang/Object;
.source "SizeMetrics.java"


# instance fields
.field private a:Lcom/androidplot/ui/SizeMetric;

.field private b:Lcom/androidplot/ui/SizeMetric;


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/androidplot/ui/SizeMetric;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;-><init>(FLcom/androidplot/ui/SizeLayoutType;)V

    iput-object v0, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    .line 38
    new-instance v0, Lcom/androidplot/ui/SizeMetric;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/ui/SizeMetric;-><init>(FLcom/androidplot/ui/SizeLayoutType;)V

    iput-object v0, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    .line 49
    iput-object p2, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    .line 50
    return-void
.end method


# virtual methods
.method public getHeightMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    return-object v0
.end method

.method public getRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v1

    iget-object v2, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getRoundedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v0

    iget-object v1, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v1

    invoke-static {v3, v3, v0, v1}, Lcom/androidplot/util/PixelUtils;->nearestPixRect(FFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getWidthMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    return-object v0
.end method

.method public setHeightMetric(Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/androidplot/ui/SizeMetrics;->a:Lcom/androidplot/ui/SizeMetric;

    .line 58
    return-void
.end method

.method public setWidthMetric(Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/androidplot/ui/SizeMetrics;->b:Lcom/androidplot/ui/SizeMetric;

    .line 89
    return-void
.end method
