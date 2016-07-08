.class public Lcom/androidplot/ui/BoxModel;
.super Ljava/lang/Object;
.source "BoxModel.java"

# interfaces
.implements Lcom/androidplot/ui/BoxModelable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->a:F

    .line 47
    iput p2, p0, Lcom/androidplot/ui/BoxModel;->b:F

    .line 48
    iput p3, p0, Lcom/androidplot/ui/BoxModel;->c:F

    .line 49
    iput p4, p0, Lcom/androidplot/ui/BoxModel;->d:F

    .line 51
    iput p5, p0, Lcom/androidplot/ui/BoxModel;->e:F

    .line 52
    iput p6, p0, Lcom/androidplot/ui/BoxModel;->f:F

    .line 53
    iput p7, p0, Lcom/androidplot/ui/BoxModel;->g:F

    .line 54
    iput p8, p0, Lcom/androidplot/ui/BoxModel;->h:F

    .line 55
    return-void
.end method


# virtual methods
.method public getMarginBottom()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->d:F

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->a:F

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->c:F

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->b:F

    return v0
.end method

.method public getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->h:F

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->e:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->g:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->f:F

    return v0
.end method

.method public setMarginBottom(F)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->d:F

    .line 128
    return-void
.end method

.method public setMarginLeft(F)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->a:F

    .line 104
    return-void
.end method

.method public setMarginRight(F)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->c:F

    .line 120
    return-void
.end method

.method public setMarginTop(F)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->b:F

    .line 112
    return-void
.end method

.method public setMargins(FFFF)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 85
    invoke-virtual {p0, p3}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 86
    invoke-virtual {p0, p4}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    .line 87
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 93
    invoke-virtual {p0, p3}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 94
    invoke-virtual {p0, p4}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    .line 95
    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->h:F

    .line 160
    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->e:F

    .line 136
    return-void
.end method

.method public setPaddingRight(F)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->g:F

    .line 152
    return-void
.end method

.method public setPaddingTop(F)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->f:F

    .line 144
    return-void
.end method
