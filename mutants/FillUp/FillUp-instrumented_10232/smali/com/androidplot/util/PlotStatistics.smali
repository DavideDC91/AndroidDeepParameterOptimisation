.class public Lcom/androidplot/util/PlotStatistics;
.super Ljava/lang/Object;
.source "PlotStatistics.java"

# interfaces
.implements Lcom/androidplot/PlotListener;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/Paint;

.field private k:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->b:J

    .line 41
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->c:J

    .line 42
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->d:J

    .line 43
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->e:J

    .line 45
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->g:J

    .line 46
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->h:J

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->i:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->j:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->j:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    invoke-direct {p0}, Lcom/androidplot/util/PlotStatistics;->a()V

    .line 64
    iput-wide p1, p0, Lcom/androidplot/util/PlotStatistics;->a:J

    .line 65
    iput-boolean p3, p0, Lcom/androidplot/util/PlotStatistics;->k:Z

    .line 66
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->b:J

    .line 74
    const-wide/32 v0, 0x3b9ac9ff

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->c:J

    .line 75
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->g:J

    .line 76
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->h:J

    .line 77
    return-void
.end method


# virtual methods
.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/androidplot/util/PlotStatistics;->d:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    .line 107
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/androidplot/util/PlotStatistics;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->c:J

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/androidplot/util/PlotStatistics;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->b:J

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->h:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->h:J

    .line 115
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->f:J

    sub-long v6, v4, v2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->a:J

    cmp-long v2, v6, v2

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/androidplot/util/PlotStatistics;->h:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    div-long/2addr v2, v8

    long-to-float v2, v2

    :goto_0
    const-string v8, "%.2f"

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_5

    const/high16 v3, 0x447a0000    # 1000.0f

    long-to-float v6, v6

    div-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    long-to-float v6, v6

    mul-float/2addr v3, v6

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->g:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v2, v9, v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS (potential): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " FPS (actual): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Latency (ms) Avg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/androidplot/util/PlotStatistics;->e:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \nMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/androidplot/util/PlotStatistics;->c:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/androidplot/util/PlotStatistics;->b:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/androidplot/util/PlotStatistics;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/androidplot/util/PlotStatistics;->f:J

    invoke-direct/range {p0 .. p0}, Lcom/androidplot/util/PlotStatistics;->a()V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/androidplot/Plot;->getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v2

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/androidplot/util/PlotStatistics;->k:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidplot/util/PlotStatistics;->i:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidplot/util/PlotStatistics;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    :cond_3
    return-void

    .line 116
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->d:J

    .line 102
    return-void
.end method

.method public setAnnotatePlotEnabled(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/androidplot/util/PlotStatistics;->k:Z

    .line 70
    return-void
.end method
