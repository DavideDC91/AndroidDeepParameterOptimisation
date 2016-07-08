.class public Lcom/androidplot/xy/XYPlot;
.super Lcom/androidplot/Plot;
.source "XYPlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYPlot$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        "Lcom/androidplot/xy/XYSeriesRenderer;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Number;

.field private B:Ljava/lang/Number;

.field private C:Ljava/lang/Number;

.field private D:Ljava/lang/Number;

.field private E:Ljava/lang/Number;

.field private F:Ljava/lang/Number;

.field private G:Lcom/androidplot/xy/XYFramingModel;

.field private H:Lcom/androidplot/xy/XYFramingModel;

.field private I:Ljava/lang/Number;

.field private J:Ljava/lang/Number;

.field private K:Ljava/lang/Number;

.field private L:Ljava/lang/Number;

.field private M:Ljava/lang/Number;

.field private N:Ljava/lang/Number;

.field private O:Lcom/androidplot/xy/BoundaryMode;

.field private P:Lcom/androidplot/xy/BoundaryMode;

.field private Q:Lcom/androidplot/xy/BoundaryMode;

.field private R:Lcom/androidplot/xy/BoundaryMode;

.field private S:Z

.field private T:Z

.field private U:Lcom/androidplot/xy/RectRegion;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/YValueMarker;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/XValueMarker;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/androidplot/xy/BoundaryMode;

.field private d:Lcom/androidplot/xy/BoundaryMode;

.field private e:Lcom/androidplot/xy/XYLegendWidget;

.field private f:Lcom/androidplot/xy/XYGraphWidget;

.field private g:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private h:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private i:Lcom/androidplot/xy/XYStepMode;

.field private j:D

.field private k:Lcom/androidplot/xy/XYStepMode;

.field private l:D

.field private m:Ljava/lang/Number;

.field private n:Ljava/lang/Number;

.field private o:Ljava/lang/Number;

.field private p:Ljava/lang/Number;

.field private q:Ljava/lang/Number;

.field private r:Ljava/lang/Number;

.field private s:Ljava/lang/Number;

.field private t:Ljava/lang/Number;

.field private u:Ljava/lang/Number;

.field private v:Ljava/lang/Number;

.field private w:Ljava/lang/Number;

.field private x:Ljava/lang/Number;

.field private y:Ljava/lang/Number;

.field private z:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    .line 50
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->j:D

    .line 52
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    .line 53
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->l:D

    .line 76
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    .line 77
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    .line 78
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    .line 79
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    .line 80
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    .line 81
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    .line 82
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    .line 83
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    .line 89
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    .line 90
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    .line 98
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 100
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    .line 103
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    .line 104
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    .line 105
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    .line 106
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    .line 50
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->j:D

    .line 52
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    .line 53
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->l:D

    .line 76
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    .line 77
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    .line 78
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    .line 79
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    .line 80
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    .line 81
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    .line 82
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    .line 83
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    .line 89
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    .line 90
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    .line 98
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 100
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    .line 103
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    .line 104
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    .line 105
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    .line 106
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    .line 50
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->j:D

    .line 52
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    .line 53
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->l:D

    .line 76
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    .line 77
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    .line 78
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    .line 79
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    .line 80
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    .line 81
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    .line 82
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    .line 83
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    .line 89
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    .line 90
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    .line 98
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 100
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    .line 103
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    .line 104
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    .line 105
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    .line 106
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 49
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    .line 50
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->j:D

    .line 52
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    .line 53
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->l:D

    .line 76
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    .line 77
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    .line 78
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    .line 79
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    .line 80
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    .line 81
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    .line 82
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    .line 83
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    .line 89
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    .line 90
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    .line 98
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 100
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    .line 103
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    .line 104
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    .line 105
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    .line 106
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    .line 147
    return-void
.end method

.method private static a(DD)D
    .locals 2

    .prologue
    .line 609
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 610
    sub-double v0, p0, p2

    .line 612
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p2, p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6

    .prologue
    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    move-object v0, p0

    .line 519
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    :cond_1
    move-object p2, v0

    .line 522
    :cond_2
    return-object p2

    :cond_3
    move-object v0, p1

    .line 516
    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    monitor-exit p0

    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(DLjava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_2

    :cond_0
    move v3, v0

    .line 325
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, p0, v4

    if-gtz v2, :cond_3

    :cond_1
    move v2, v0

    .line 326
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_2
    move v3, v1

    .line 324
    goto :goto_0

    :cond_3
    move v2, v1

    .line 325
    goto :goto_1

    :cond_4
    move v0, v1

    .line 326
    goto :goto_2
.end method

.method private declared-synchronized b(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 939
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    monitor-exit p0

    return-void

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    monitor-exit p0

    return-void

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit p0

    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 981
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    monitor-exit p0

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    monitor-exit p0

    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 14

    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x0

    .line 160
    new-instance v0, Lcom/androidplot/xy/XYLegendWidget;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v3, Lcom/androidplot/ui/SizeMetrics;

    invoke-static {v10}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    const/high16 v5, 0x3f000000    # 0.5f

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->RELATIVE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    new-instance v4, Lcom/androidplot/ui/DynamicTableModel;

    const/4 v2, 0x0

    invoke-direct {v4, v2, v12}, Lcom/androidplot/ui/DynamicTableModel;-><init>(II)V

    new-instance v5, Lcom/androidplot/ui/SizeMetrics;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v7

    sget-object v8, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/XYLegendWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/SizeMetrics;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/XYLegendWidget;

    .line 173
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/SizeMetrics;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->FILL:Lcom/androidplot/ui/SizeLayoutType;

    invoke-static {v10}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->FILL:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/xy/XYGraphWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/SizeMetrics;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 183
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setBackgroundPaint(Landroid/graphics/Paint;)V

    .line 188
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/SizeMetrics;

    invoke-static {v10}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientationType;->HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 196
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/SizeMetrics;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-static {v10}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientationType;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientationType;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->h:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 205
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/XYLegendWidget;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->RIGHT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYLegendWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 212
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->RIGHT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYGraphWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 219
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/ui/widget/TextLabelWidget;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->LEFT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 226
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->h:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {v9}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->LEFT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 233
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegendWidget()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-static {v13}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    .line 236
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-static {v13}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginRight(F)V

    .line 238
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 239
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 240
    invoke-static {v11}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginLeft(F)V

    .line 241
    invoke-static {v11}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginRight(F)V

    .line 242
    invoke-static {v11}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginBottom(F)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDefaultBounds(Lcom/androidplot/xy/RectRegion;)V

    .line 248
    return-void
.end method

.method public addMarker(Lcom/androidplot/xy/XValueMarker;)Z
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarker(Lcom/androidplot/xy/YValueMarker;)Z
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const/4 v0, 0x0

    .line 1140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public calculateMinMaxVals()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    .line 332
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    .line 333
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    .line 334
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    .line 336
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 337
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 338
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 339
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    .line 342
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeries;

    move v1, v2

    .line 344
    :goto_0
    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 345
    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v5

    .line 346
    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v6

    .line 347
    if-eqz v5, :cond_1

    if-nez v6, :cond_a

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_9

    .line 349
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    if-nez v3, :cond_3

    .line 350
    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v3, v8, v10

    if-gez v3, :cond_3

    .line 352
    :cond_2
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    if-nez v3, :cond_5

    .line 357
    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_5

    .line 359
    :cond_4
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 363
    :cond_5
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    if-nez v3, :cond_7

    .line 364
    if-eqz v6, :cond_7

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v3, v8, v10

    if-gez v3, :cond_7

    .line 366
    :cond_6
    iput-object v6, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 370
    :cond_7
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    if-nez v3, :cond_9

    .line 371
    if-eqz v6, :cond_9

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v3, :cond_8

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_9

    .line 372
    :cond_8
    iput-object v6, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    .line 344
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    iget-object v7, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    invoke-static {v8, v9, v3, v7}, Lcom/androidplot/xy/XYPlot;->a(DLjava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    iget-object v7, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    invoke-static {v8, v9, v3, v7}, Lcom/androidplot/xy/XYPlot;->a(DLjava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    move v3, v2

    goto/16 :goto_1

    .line 382
    :cond_c
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->a:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain Framing Model not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateDomainMinMaxForOriginModel()V

    .line 398
    :goto_2
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->a:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range Framing Model not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_1
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainUpperBoundaryMode not yet implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_d

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    :cond_d
    :goto_3
    :pswitch_3
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainLowerBoundaryMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 388
    :cond_e
    :goto_4
    :pswitch_6
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 390
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto/16 :goto_2

    .line 387
    :pswitch_7
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_e

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_4

    .line 400
    :pswitch_8
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateRangeMinMaxForOriginModel()V

    .line 416
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    :goto_6
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->K:Ljava/lang/Number;

    .line 417
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    :goto_7
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->L:Ljava/lang/Number;

    .line 418
    return-void

    .line 403
    :pswitch_9
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 404
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateRangeMinMaxForEdgeModel()V

    .line 405
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 407
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    goto :goto_5

    .line 416
    :cond_10
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    goto :goto_6

    .line 417
    :cond_11
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    goto :goto_7

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 398
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 387
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 531
    const/4 v0, 0x0

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/androidplot/xy/XYPlot;->centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 532
    return-void
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    .line 547
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserDomainOrigin(Ljava/lang/Number;)V

    .line 548
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 549
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/BoundaryMode;

    .line 551
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/BoundaryMode;

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne v0, v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 553
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 554
    add-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    .line 555
    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_1
    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    .line 558
    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    goto :goto_0
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x0

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/androidplot/xy/XYPlot;->centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 569
    return-void
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    .line 585
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserRangeOrigin(Ljava/lang/Number;)V

    .line 586
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    .line 587
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/BoundaryMode;

    .line 589
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/BoundaryMode;

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 591
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->N:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 592
    add-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 593
    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_1
    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 596
    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    goto :goto_0
.end method

.method public containsPoint(FF)Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getGridRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getGridRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .prologue
    .line 290
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/XYPlot;->containsPoint(FF)Z

    move-result v0

    return v0
.end method

.method public getCalculatedMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalculatedMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalculatedMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalculatedMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultBounds()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->U:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getDomainLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method public getDomainLeftMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainLeftMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->K:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainRightMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainRightMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainStepMode()Lcom/androidplot/xy/XYStepMode;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    return-object v0
.end method

.method public getDomainStepValue()D
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/androidplot/xy/XYPlot;->j:D

    return-wide v0
.end method

.method public getDomainValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainValueFormat()Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    return-object v0
.end method

.method public getLegendWidget()Lcom/androidplot/xy/XYLegendWidget;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/XYLegendWidget;

    return-object v0
.end method

.method public getRangeBottomMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeBottomMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getRangeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->h:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method public getRangeOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->L:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeStepMode()Lcom/androidplot/xy/XYStepMode;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    return-object v0
.end method

.method public getRangeStepValue()D
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Lcom/androidplot/xy/XYPlot;->l:D

    return-wide v0
.end method

.method public getRangeTopMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeTopMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeValueFormat()Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getTicksPerDomainLabel()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerDomainLabel()I

    move-result v0

    return v0
.end method

.method public getTicksPerRangeLabel()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getTicksPerRangeLabel()I

    move-result v0

    return v0
.end method

.method public getXVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(Landroid/graphics/PointF;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getYVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(Landroid/graphics/PointF;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isDrawDomainOriginEnabled()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    return v0
.end method

.method public isDrawRangeOriginEnabled()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    return v0
.end method

.method protected final notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->calculateMinMaxVals()V

    .line 266
    return-void
.end method

.method public removeMarker(Lcom/androidplot/xy/XValueMarker;)Lcom/androidplot/xy/XValueMarker;
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1199
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1200
    const/4 v0, 0x0

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XValueMarker;

    goto :goto_0
.end method

.method public removeMarker(Lcom/androidplot/xy/YValueMarker;)Lcom/androidplot/xy/YValueMarker;
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1152
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 1155
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/YValueMarker;

    goto :goto_0
.end method

.method public removeMarkers()I
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeXMarkers()I

    move-result v0

    .line 1166
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeYMarkers()I

    move-result v1

    add-int/2addr v0, v1

    .line 1167
    return v0
.end method

.method public removeXMarkers()I
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1213
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1214
    return v0
.end method

.method public removeYMarkers()I
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1177
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1178
    return v0
.end method

.method public setCursorPosition(FF)V
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(FF)V

    .line 299
    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(Landroid/graphics/PointF;)V

    .line 295
    return-void
.end method

.method public setDefaultBounds(Lcom/androidplot/xy/RectRegion;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->U:Lcom/androidplot/xy/RectRegion;

    .line 1231
    return-void
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 876
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    monitor-exit p0

    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public setDomainLabelWidget(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 808
    return-void
.end method

.method public declared-synchronized setDomainLeftMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1314
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    monitor-exit p0

    return-void

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainLeftMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    monitor-exit p0

    return-void

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYPlot;->b(Ljava/lang/Number;)V

    .line 950
    invoke-direct {p0, p2}, Lcom/androidplot/xy/XYPlot;->b(Lcom/androidplot/xy/BoundaryMode;)V

    .line 951
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 949
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainRightMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->F:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    monitor-exit p0

    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainRightMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1328
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    monitor-exit p0

    return-void

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainStep(Lcom/androidplot/xy/XYStepMode;D)V
    .locals 0

    .prologue
    .line 745
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainStepMode(Lcom/androidplot/xy/XYStepMode;)V

    .line 746
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainStepValue(D)V

    .line 747
    return-void
.end method

.method public setDomainStepMode(Lcom/androidplot/xy/XYStepMode;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->i:Lcom/androidplot/xy/XYStepMode;

    .line 734
    return-void
.end method

.method public setDomainStepValue(D)V
    .locals 1

    .prologue
    .line 741
    iput-wide p1, p0, Lcom/androidplot/xy/XYPlot;->j:D

    .line 742
    return-void
.end method

.method public declared-synchronized setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;)V

    .line 925
    invoke-direct {p0, p2}, Lcom/androidplot/xy/XYPlot;->a(Lcom/androidplot/xy/BoundaryMode;)V

    .line 926
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/XYFramingModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit p0

    return-void

    .line 924
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainValueFormat(Ljava/text/Format;)V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainValueFormat(Ljava/text/Format;)V

    .line 852
    return-void
.end method

.method public setDrawDomainOriginEnabled(Z)V
    .locals 0

    .prologue
    .line 1119
    iput-boolean p1, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 1120
    return-void
.end method

.method public setDrawRangeOriginEnabled(Z)V
    .locals 0

    .prologue
    .line 1127
    iput-boolean p1, p0, Lcom/androidplot/xy/XYPlot;->T:Z

    .line 1128
    return-void
.end method

.method public setGraphWidget(Lcom/androidplot/xy/XYGraphWidget;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    .line 800
    return-void
.end method

.method public setGridPadding(FFFF)V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingTop(F)V

    .line 253
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingBottom(F)V

    .line 254
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingLeft(F)V

    .line 255
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setGridPaddingRight(F)V

    .line 256
    return-void
.end method

.method public setLegendWidget(Lcom/androidplot/xy/XYLegendWidget;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/XYLegendWidget;

    .line 792
    return-void
.end method

.method public declared-synchronized setRangeBottomMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeBottomMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1272
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    monitor-exit p0

    return-void

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 901
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    monitor-exit p0

    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setRangeLabelWidget(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->h:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 816
    return-void
.end method

.method public declared-synchronized setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYPlot;->d(Ljava/lang/Number;)V

    .line 1001
    invoke-direct {p0, p2}, Lcom/androidplot/xy/XYPlot;->d(Lcom/androidplot/xy/BoundaryMode;)V

    .line 1002
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1000
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeStep(Lcom/androidplot/xy/XYStepMode;D)V
    .locals 0

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeStepMode(Lcom/androidplot/xy/XYStepMode;)V

    .line 767
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeStepValue(D)V

    .line 768
    return-void
.end method

.method public setRangeStepMode(Lcom/androidplot/xy/XYStepMode;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->k:Lcom/androidplot/xy/XYStepMode;

    .line 755
    return-void
.end method

.method public setRangeStepValue(D)V
    .locals 1

    .prologue
    .line 762
    iput-wide p1, p0, Lcom/androidplot/xy/XYPlot;->l:D

    .line 763
    return-void
.end method

.method public declared-synchronized setRangeTopMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    monitor-exit p0

    return-void

    .line 1258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeTopMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    monitor-exit p0

    return-void

    .line 1244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYPlot;->c(Ljava/lang/Number;)V

    .line 976
    invoke-direct {p0, p2}, Lcom/androidplot/xy/XYPlot;->c(Lcom/androidplot/xy/BoundaryMode;)V

    .line 977
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Lcom/androidplot/xy/XYFramingModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit p0

    return-void

    .line 975
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeValueFormat(Ljava/text/Format;)V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setRangeValueFormat(Ljava/text/Format;)V

    .line 834
    return-void
.end method

.method public setTicksPerDomainLabel(I)V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setTicksPerDomainLabel(I)V

    .line 726
    return-void
.end method

.method public setTicksPerRangeLabel(I)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setTicksPerRangeLabel(I)V

    .line 706
    return-void
.end method

.method public declared-synchronized setUserDomainOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 1046
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1047
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1049
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUserRangeOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 1053
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1054
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1056
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    monitor-exit p0

    return-void
.end method

.method public updateDomainMinMaxForOriginModel()V
    .locals 7

    .prologue
    .line 617
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 618
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v0

    .line 619
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v2

    .line 620
    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 621
    :goto_0
    sub-double v2, v4, v0

    .line 622
    add-double/2addr v0, v4

    .line 623
    sget-object v4, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v5}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain Origin Boundary Mode not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    .line 620
    goto :goto_0

    .line 625
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 659
    :goto_1
    :pswitch_1
    return-void

    .line 634
    :pswitch_2
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 635
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 640
    :goto_2
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    .line 641
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_1

    .line 637
    :cond_3
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_2

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_1

    .line 648
    :pswitch_3
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_7

    .line 649
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 654
    :goto_3
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    .line 655
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_1

    .line 651
    :cond_7
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_3

    .line 657
    :cond_8
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateRangeMinMaxForEdgeModel()V
    .locals 4

    .prologue
    .line 467
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeUpperBoundaryMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    .line 487
    :cond_0
    :goto_0
    :pswitch_1
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeLowerBoundaryMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->R:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    goto :goto_0

    .line 493
    :pswitch_3
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 506
    :cond_1
    :goto_1
    :pswitch_4
    return-void

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    goto :goto_1

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public updateRangeMinMaxForOriginModel()V
    .locals 7

    .prologue
    .line 666
    sget-object v0, Lcom/androidplot/xy/XYPlot$a;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 683
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range Origin Boundary Mode not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 669
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v2

    .line 670
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v4

    .line 671
    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 672
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 673
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    .line 678
    :goto_0
    return-void

    .line 675
    :cond_0
    sub-double v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 676
    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
