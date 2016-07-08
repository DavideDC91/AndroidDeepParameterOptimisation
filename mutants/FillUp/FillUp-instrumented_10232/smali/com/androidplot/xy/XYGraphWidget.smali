.class public Lcom/androidplot/xy/XYGraphWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYGraphWidget$a;,
        Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;
    }
.end annotation


# instance fields
.field private A:Ljava/text/Format;

.field private B:Ljava/text/Format;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/RectF;

.field private H:Landroid/graphics/RectF;

.field private I:F

.field private J:F

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:F

.field private P:F

.field private Q:Lcom/androidplot/util/ZHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/ZHash",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            "Lcom/androidplot/xy/AxisValueLabelFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Lcom/androidplot/xy/XYPlot;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/SizeMetrics;)V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, -0x100

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 173
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V

    .line 66
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->a:F

    .line 68
    const/high16 v0, 0x42240000    # 41.0f

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->b:F

    .line 69
    const/high16 v0, -0x3f600000    # -5.0f

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->c:F

    .line 70
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->d:F

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->e:F

    .line 72
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->f:F

    .line 74
    iput v4, p0, Lcom/androidplot/xy/XYGraphWidget;->g:I

    .line 75
    iput v4, p0, Lcom/androidplot/xy/XYGraphWidget;->h:I

    .line 76
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->i:F

    .line 77
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->j:F

    .line 78
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->k:F

    .line 79
    iput v1, p0, Lcom/androidplot/xy/XYGraphWidget;->l:F

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    .line 104
    iput-boolean v4, p0, Lcom/androidplot/xy/XYGraphWidget;->K:Z

    .line 106
    iput-boolean v4, p0, Lcom/androidplot/xy/XYGraphWidget;->L:Z

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    const/16 v3, 0x8c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    const/16 v2, 0xb4

    const/16 v3, 0xb4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->s:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->q:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    .line 138
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    .line 142
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->v:Landroid/graphics/Paint;

    .line 154
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->w:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    .line 160
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    .line 162
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setMarginRight(F)V

    .line 163
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    .line 164
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->A:Ljava/text/Format;

    .line 165
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->B:Ljava/text/Format;

    .line 169
    new-instance v0, Lcom/androidplot/util/ZHash;

    invoke-direct {v0}, Lcom/androidplot/util/ZHash;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    .line 174
    iput-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    .line 175
    return-void
.end method

.method private a(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->A:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 521
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 528
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v0, v1

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/XYAxisType;->DOMAIN:Lcom/androidplot/xy/XYAxisType;

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYAxisType;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/XYStep;

    move-result-object v10

    .line 543
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 555
    :cond_2
    const/4 v0, 0x1

    .line 557
    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v1

    sub-float v5, v2, v1

    .line 558
    :goto_1
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_6

    .line 560
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepVal()D

    move-result-wide v12

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    .line 562
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_3

    .line 563
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerDomainLabel()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_5

    .line 564
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 571
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 558
    int-to-float v1, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float v5, v2, v1

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 567
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->s:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_2

    .line 577
    :cond_6
    const/4 v0, 0x1

    .line 579
    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v1

    add-float v5, v2, v1

    .line 580
    :goto_3
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_9

    .line 582
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepVal()D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    .line 584
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_7

    .line 586
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerDomainLabel()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_8

    .line 587
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 594
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 580
    int-to-float v1, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v3

    mul-float/2addr v1, v3

    add-float v5, v2, v1

    goto :goto_3

    .line 590
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->s:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_4

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 603
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 604
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v1

    .line 614
    :goto_5
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/XYAxisType;->RANGE:Lcom/androidplot/xy/XYAxisType;

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYAxisType;Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/XYStep;

    move-result-object v10

    .line 619
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_b

    .line 621
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    .line 622
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 624
    :cond_a
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 630
    :cond_b
    const/4 v0, 0x1

    .line 632
    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v1

    sub-float v5, v2, v1

    .line 633
    :goto_6
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_f

    .line 635
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepVal()D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    .line 637
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_c

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_c

    .line 638
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerRangeLabel()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_e

    .line 639
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 646
    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 633
    int-to-float v1, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float v5, v2, v1

    goto :goto_6

    .line 611
    :cond_d
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 642
    :cond_e
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->q:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_7

    .line 652
    :cond_f
    const/4 v0, 0x1

    .line 654
    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v1

    add-float v5, v2, v1

    .line 655
    :goto_8
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_12

    .line 657
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepVal()D

    move-result-wide v12

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    .line 659
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_10

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_10

    .line 660
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerRangeLabel()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_11

    .line 661
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 668
    :cond_10
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 655
    int-to-float v1, v0

    invoke-virtual {v10}, Lcom/androidplot/xy/XYStep;->getStepPix()F

    move-result v3

    mul-float/2addr v1, v3

    add-float v5, v2, v1

    goto :goto_8

    .line 664
    :cond_11
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->q:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_9

    .line 671
    :cond_12
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 7

    .prologue
    .line 453
    if-nez p6, :cond_4

    .line 454
    if-eqz p5, :cond_0

    .line 455
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    int-to-float v1, v1

    add-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 463
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 464
    invoke-static {p4}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    .line 466
    iget-boolean v1, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    if-eqz v1, :cond_3

    .line 467
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->c:F

    add-float/2addr v1, v2

    add-float v5, v1, v0

    .line 473
    :goto_1
    sget-object v2, Lcom/androidplot/xy/XYAxisType;->DOMAIN:Lcom/androidplot/xy/XYAxisType;

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->d:F

    add-float v4, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYAxisType;Ljava/lang/Number;FFLandroid/graphics/Paint;)V

    .line 482
    :cond_1
    :goto_2
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->c:F

    sub-float v5, v0, v1

    goto :goto_1

    .line 476
    :cond_4
    if-eqz p5, :cond_1

    .line 478
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYAxisType;Ljava/lang/Number;FFLandroid/graphics/Paint;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 416
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 420
    :try_start_0
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$a;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/xy/XYAxisType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    move-object v2, v0

    .line 437
    :goto_0
    if-eqz v2, :cond_0

    .line 439
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 440
    invoke-virtual {v2}, Lcom/androidplot/xy/AxisValueLabelFormatter;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object p6, v0

    .line 445
    :cond_0
    invoke-virtual {p1, v1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 448
    return-void

    .line 422
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lcom/androidplot/xy/XYGraphWidget;->getAxisValueLabelFormatterForDomainVal(D)Lcom/androidplot/xy/AxisValueLabelFormatter;

    move-result-object v1

    .line 423
    invoke-direct {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->b(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelOrientation()F

    move-result v2

    invoke-virtual {p1, v2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object v2, v1

    move-object v1, v0

    .line 425
    goto :goto_0

    .line 427
    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/androidplot/xy/XYGraphWidget;->getAxisValueLabelFormatterForRangeVal(D)Lcom/androidplot/xy/AxisValueLabelFormatter;

    move-result-object v1

    .line 428
    invoke-direct {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelOrientation()F

    move-result v2

    invoke-virtual {p1, v2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V
    .locals 5

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 684
    add-float v0, p4, v1

    .line 685
    sub-float v1, p5, v1

    .line 686
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 688
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 690
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 691
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 694
    :cond_0
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 698
    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 701
    return-void
.end method

.method private b(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->B:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 704
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    iget-object v0, v0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/androidplot/xy/YValueMarker;

    .line 706
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 708
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    .line 712
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v1

    .line 713
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 717
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/XPositionMetric;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/XPositionMetric;->getPixelValue(F)F

    move-result v0

    .line 719
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v7, v0, v1

    .line 721
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {v8}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto/16 :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    iget-object v0, v0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/androidplot/xy/XValueMarker;

    .line 732
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 733
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 734
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/util/ValPixConverter;->valToPix(DDDFZ)F

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    .line 739
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 743
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/YPositionMetric;

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/androidplot/ui/YPositionMetric;->getPixelValue(F)F

    move-result v0

    .line 745
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v7, v0, v2

    .line 746
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 747
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto :goto_1

    .line 749
    :cond_4
    invoke-virtual {v8}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->b(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto/16 :goto_1

    .line 755
    :cond_5
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 827
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 828
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 829
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesRenderer;

    .line 830
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v2}, Lcom/androidplot/xy/XYSeriesRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 834
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 835
    return-void
.end method


# virtual methods
.method public addAxisValueLabelRegion(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/AxisValueLabelFormatter;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/ZHash;->addToTop(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public addDomainAxisValueLabelRegion(DDLcom/androidplot/xy/AxisValueLabelFormatter;)V
    .locals 7

    .prologue
    .line 207
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p5}, Lcom/androidplot/xy/XYGraphWidget;->addAxisValueLabelRegion(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/AxisValueLabelFormatter;)V

    .line 210
    return-void
.end method

.method public addRangeAxisValueLabelRegion(DDLcom/androidplot/xy/AxisValueLabelFormatter;)V
    .locals 7

    .prologue
    .line 223
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p5}, Lcom/androidplot/xy/XYGraphWidget;->addAxisValueLabelRegion(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/AxisValueLabelFormatter;)V

    .line 225
    return-void
.end method

.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 375
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->b:F

    :goto_0
    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    add-float/2addr v4, v0

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    sub-float v0, v5, v0

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    iget-boolean v6, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    if-eqz v6, :cond_0

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->a:F

    :cond_0
    sub-float v1, v5, v1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    .line 377
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->k:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/androidplot/xy/XYGraphWidget;->i:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/androidplot/xy/XYGraphWidget;->l:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/androidplot/xy/XYGraphWidget;->j:F

    sub-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    .line 383
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 388
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->c(Landroid/graphics/Canvas;)V

    .line 390
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->v:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->v:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v7

    :goto_3
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->w:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->w:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v7

    :cond_1
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->K:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainValueFormat()Ljava/text/Format;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorVal()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeValueFormat()Ljava/text/Format;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorVal()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/androidplot/util/FontUtils;->getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_3
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 391
    :cond_5
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->isDrawMarkersEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->b(Landroid/graphics/Canvas;)V

    .line 397
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 375
    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->a:F

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->b:F

    goto/16 :goto_2

    :cond_a
    move v6, v8

    goto/16 :goto_3
.end method

.method public drawRangeTick(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 7

    .prologue
    .line 486
    if-nez p6, :cond_4

    .line 487
    if-eqz p5, :cond_0

    .line 488
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 496
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 498
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->e:F

    add-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 505
    :goto_1
    sget-object v2, Lcom/androidplot/xy/XYAxisType;->RANGE:Lcom/androidplot/xy/XYAxisType;

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->f:F

    sub-float v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->a(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYAxisType;Ljava/lang/Number;FFLandroid/graphics/Paint;)V

    .line 512
    :cond_1
    :goto_2
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    int-to-float v2, v2

    add-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->e:F

    add-float/2addr v1, v2

    add-float v4, v0, v1

    goto :goto_1

    .line 508
    :cond_4
    if-eqz p5, :cond_1

    .line 509
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->G:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getAxisValueLabelFormatterForDomainVal(D)Lcom/androidplot/xy/AxisValueLabelFormatter;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0}, Lcom/androidplot/util/ZHash;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/RectRegion;

    .line 258
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/RectRegion;->containsDomainValue(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v1, v0}, Lcom/androidplot/util/ZHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/AxisValueLabelFormatter;

    .line 262
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxisValueLabelFormatterForRangeVal(D)Lcom/androidplot/xy/AxisValueLabelFormatter;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0}, Lcom/androidplot/util/ZHash;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/RectRegion;

    .line 268
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/RectRegion;->containsRangeValue(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v1, v0}, Lcom/androidplot/util/ZHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/AxisValueLabelFormatter;

    .line 272
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxisValueLabelFormatterForVal(DD)Lcom/androidplot/xy/AxisValueLabelFormatter;
    .locals 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v0}, Lcom/androidplot/util/ZHash;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/RectRegion;

    .line 248
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/androidplot/xy/RectRegion;->containsValue(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    invoke-virtual {v1, v0}, Lcom/androidplot/util/ZHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/AxisValueLabelFormatter;

    .line 252
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxisValueLabelRegions()Lcom/androidplot/util/ZIndexable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/util/ZIndexable",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->Q:Lcom/androidplot/util/ZHash;

    return-object v0
.end method

.method public getCursorLabelBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCursorLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainCursorPosition()F
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    return v0
.end method

.method public getDomainCursorVal()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(F)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDomainGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainLabelHorizontalOffset()F
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->d:F

    return v0
.end method

.method public getDomainLabelOrientation()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->P:F

    return v0
.end method

.method public getDomainLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainLabelTickExtension()I
    .locals 1

    .prologue
    .line 993
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    return v0
.end method

.method public getDomainLabelVerticalOffset()F
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->c:F

    return v0
.end method

.method public getDomainLabelWidth()F
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->a:F

    return v0
.end method

.method public getDomainOriginLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->s:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->B:Ljava/text/Format;

    return-object v0
.end method

.method public getGridBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridPaddingBottom()F
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->j:F

    return v0
.end method

.method public getGridPaddingLeft()F
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->k:F

    return v0
.end method

.method public getGridPaddingRight()F
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->l:F

    return v0
.end method

.method public getGridPaddingTop()F
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->i:F

    return v0
.end method

.method public getGridRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRangeCursorPosition()F
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    return v0
.end method

.method public getRangeCursorVal()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(F)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRangeGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeLabelHorizontalOffset()F
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->e:F

    return v0
.end method

.method public getRangeLabelOrientation()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->O:F

    return v0
.end method

.method public getRangeLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeLabelTickExtension()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    return v0
.end method

.method public getRangeLabelVerticalOffset()F
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->f:F

    return v0
.end method

.method public getRangeLabelWidth()F
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->b:F

    return v0
.end method

.method public getRangeOriginLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->q:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->A:Ljava/text/Format;

    return-object v0
.end method

.method public getTicksPerDomainLabel()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->h:I

    return v0
.end method

.method public getTicksPerRangeLabel()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->g:I

    return v0
.end method

.method public getXVal(F)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 363
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/androidplot/util/ValPixConverter;->pixToVal(FDDFZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getXVal(Landroid/graphics/PointF;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 353
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(F)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getYVal(F)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 337
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v1, p1, v0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->z:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->H:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/androidplot/util/ValPixConverter;->pixToVal(FDDFZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public getYVal(Landroid/graphics/PointF;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 327
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(F)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isDomainAxisBottom()Z
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    return v0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->L:Z

    return v0
.end method

.method public isRangeAxisLeft()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    return v0
.end method

.method public setCursorLabelBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->y:Landroid/graphics/Paint;

    .line 1142
    return-void
.end method

.method public setCursorLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->x:Landroid/graphics/Paint;

    .line 1134
    return-void
.end method

.method public setCursorPosition(FF)V
    .locals 0

    .prologue
    .line 1096
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainCursorPosition(F)V

    .line 1097
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->setRangeCursorPosition(F)V

    .line 1098
    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 1101
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(FF)V

    .line 1102
    return-void
.end method

.method public setDomainAxisBottom(Z)V
    .locals 0

    .prologue
    .line 1165
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->N:Z

    .line 1166
    return-void
.end method

.method public setDomainAxisPosition(ZZILjava/lang/String;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1222
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainAxisBottom(Z)V

    .line 1223
    if-eqz p2, :cond_2

    .line 1224
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelWidth(F)V

    .line 1225
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelVerticalOffset(F)V

    .line 1226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelTickExtension(I)V

    .line 1227
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_0

    .line 1229
    invoke-static {p4, v0}, Lcom/androidplot/util/FontUtils;->getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1230
    if-eqz p1, :cond_1

    .line 1231
    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelVerticalOffset(F)V

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelVerticalOffset(F)V

    goto :goto_0

    .line 1237
    :cond_2
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelWidth(F)V

    .line 1239
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelTickExtension(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_0

    .line 1242
    invoke-static {v0}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    .line 1243
    if-eqz p1, :cond_3

    .line 1244
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelVerticalOffset(F)V

    .line 1248
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelTickExtension()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelWidth(F)V

    goto :goto_0

    .line 1246
    :cond_3
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelVerticalOffset(F)V

    goto :goto_1
.end method

.method public setDomainCursorPosition(F)V
    .locals 0

    .prologue
    .line 1113
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->I:F

    .line 1114
    return-void
.end method

.method public setDomainGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->r:Landroid/graphics/Paint;

    .line 927
    return-void
.end method

.method public setDomainLabelHorizontalOffset(F)V
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->d:F

    .line 872
    return-void
.end method

.method public setDomainLabelOrientation(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->P:F

    .line 52
    return-void
.end method

.method public setDomainLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->t:Landroid/graphics/Paint;

    .line 904
    return-void
.end method

.method public setDomainLabelTickExtension(I)V
    .locals 0

    .prologue
    .line 997
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->m:I

    .line 998
    return-void
.end method

.method public setDomainLabelVerticalOffset(F)V
    .locals 0

    .prologue
    .line 863
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->c:F

    .line 864
    return-void
.end method

.method public setDomainLabelWidth(F)V
    .locals 0

    .prologue
    .line 847
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->a:F

    .line 848
    return-void
.end method

.method public setDomainOriginLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->E:Landroid/graphics/Paint;

    .line 1085
    return-void
.end method

.method public setDomainOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->C:Landroid/graphics/Paint;

    .line 1069
    return-void
.end method

.method public setDomainSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->s:Landroid/graphics/Paint;

    .line 949
    return-void
.end method

.method public setDomainValueFormat(Ljava/text/Format;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->B:Ljava/text/Format;

    .line 990
    return-void
.end method

.method public setDrawMarkersEnabled(Z)V
    .locals 0

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->L:Z

    .line 1150
    return-void
.end method

.method public setGridBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->o:Landroid/graphics/Paint;

    .line 896
    return-void
.end method

.method public setGridPadding(FFFF)V
    .locals 0

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingLeft(F)V

    .line 1058
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingTop(F)V

    .line 1059
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingRight(F)V

    .line 1060
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingBottom(F)V

    .line 1061
    return-void
.end method

.method public setGridPaddingBottom(F)V
    .locals 0

    .prologue
    .line 1033
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->j:F

    .line 1034
    return-void
.end method

.method public setGridPaddingLeft(F)V
    .locals 0

    .prologue
    .line 1041
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->k:F

    .line 1042
    return-void
.end method

.method public setGridPaddingRight(F)V
    .locals 0

    .prologue
    .line 1049
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->l:F

    .line 1050
    return-void
.end method

.method public setGridPaddingTop(F)V
    .locals 0

    .prologue
    .line 1025
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->i:F

    .line 1026
    return-void
.end method

.method public setRangeAxisLeft(Z)V
    .locals 0

    .prologue
    .line 1157
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->M:Z

    .line 1158
    return-void
.end method

.method public setRangeAxisPosition(ZZILjava/lang/String;)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1178
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setRangeAxisLeft(Z)V

    .line 1180
    if-eqz p2, :cond_5

    .line 1181
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelWidth(F)V

    .line 1182
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelHorizontalOffset(F)V

    .line 1183
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelVerticalOffset(F)V

    .line 1184
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1185
    if-eqz v1, :cond_0

    .line 1186
    if-eqz p1, :cond_3

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1189
    if-eqz v1, :cond_1

    .line 1190
    if-eqz p1, :cond_4

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1192
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelTickExtension(I)V

    .line 1210
    :cond_2
    :goto_2
    return-void

    .line 1186
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 1190
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_1

    .line 1194
    :cond_5
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelWidth(F)V

    .line 1196
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelHorizontalOffset(F)V

    .line 1197
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelTickExtension(I)V

    .line 1198
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_6

    .line 1200
    if-nez p1, :cond_7

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1201
    invoke-static {p4, v1}, Lcom/androidplot/util/FontUtils;->getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1202
    iget v1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelVerticalOffset(F)V

    .line 1203
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelTickExtension()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelWidth(F)V

    .line 1205
    :cond_6
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1206
    if-eqz v1, :cond_2

    .line 1207
    if-nez p1, :cond_8

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 1200
    :cond_7
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_3

    .line 1207
    :cond_8
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_4
.end method

.method public setRangeCursorPosition(F)V
    .locals 0

    .prologue
    .line 1125
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->J:F

    .line 1126
    return-void
.end method

.method public setRangeGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->p:Landroid/graphics/Paint;

    .line 957
    return-void
.end method

.method public setRangeLabelHorizontalOffset(F)V
    .locals 0

    .prologue
    .line 879
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->e:F

    .line 880
    return-void
.end method

.method public setRangeLabelOrientation(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->O:F

    .line 44
    return-void
.end method

.method public setRangeLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->u:Landroid/graphics/Paint;

    .line 912
    return-void
.end method

.method public setRangeLabelTickExtension(I)V
    .locals 0

    .prologue
    .line 1005
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->n:I

    .line 1006
    return-void
.end method

.method public setRangeLabelVerticalOffset(F)V
    .locals 0

    .prologue
    .line 887
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->f:F

    .line 888
    return-void
.end method

.method public setRangeLabelWidth(F)V
    .locals 0

    .prologue
    .line 855
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->b:F

    .line 856
    return-void
.end method

.method public setRangeOriginLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->F:Landroid/graphics/Paint;

    .line 1093
    return-void
.end method

.method public setRangeOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->D:Landroid/graphics/Paint;

    .line 1077
    return-void
.end method

.method public setRangeSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->q:Landroid/graphics/Paint;

    .line 972
    return-void
.end method

.method public setRangeValueFormat(Ljava/text/Format;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->A:Ljava/text/Format;

    .line 982
    return-void
.end method

.method public setTicksPerDomainLabel(I)V
    .locals 0

    .prologue
    .line 1021
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->h:I

    .line 1022
    return-void
.end method

.method public setTicksPerRangeLabel(I)V
    .locals 0

    .prologue
    .line 1013
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->g:I

    .line 1014
    return-void
.end method
