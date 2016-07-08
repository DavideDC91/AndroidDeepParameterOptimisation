.class public Lcom/github/wdkapps/fillup/MileagePlot;
.super Ljava/lang/Object;
.source "MileagePlot.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z

.field private static final TAG:Ljava/lang/String;

.field private static final xlabels:Ljava/text/Format;

.field private static final ylabels:Ljava/text/Format;


# instance fields
.field private activity:Landroid/app/Activity;

.field private average:F

.field private avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

.field private avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

.field private lowerboundx:J

.field private maxx:J

.field private maxy:F

.field private minx:J

.field private miny:F

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private plotFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

.field private range:Lcom/github/wdkapps/fillup/PlotDateRange;

.field private units:Lcom/github/wdkapps/fillup/Units;

.field private upperboundx:J


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xd

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MileagePlot"

    const-wide v2, 0x12981f286f1642bL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 59
    const-class v1, Lcom/github/wdkapps/fillup/MileagePlot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->TAG:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->xlabels:Ljava/text/Format;

    .line 101
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->ylabels:Ljava/text/Format;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    .line 83
    iput v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    .line 84
    iput v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    .line 87
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    .line 88
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    .line 91
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    .line 92
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method static synthetic access$000()Ljava/text/Format;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 56
    sget-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->ylabels:Ljava/text/Format;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private drawPlot()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 181
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->setPlotFontSizes()V

    .line 184
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->getPlotSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plotFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 187
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->setPlotAxisBoundaries()V

    .line 190
    iget v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-lez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->getAverageSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 194
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    new-instance v2, Lcom/github/wdkapps/fillup/MileagePlot$1;

    invoke-direct {v2, p0}, Lcom/github/wdkapps/fillup/MileagePlot$1;-><init>(Lcom/github/wdkapps/fillup/MileagePlot;)V

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/LineAndPointFormatter;->setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V

    aput-boolean v4, v0, v4

    .line 201
    :cond_1
    aput-boolean v4, v0, v5

    return-void
.end method

.method private getAverageSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 6

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 357
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 358
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 361
    iget-wide v4, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-wide v4, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v3, ""

    .line 368
    new-instance v4, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v4, v1, v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object v4
.end method

.method private getPlotSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 12

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v2, v0, v1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getPlotSeries()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    new-instance v0, Lcom/github/wdkapps/fillup/PlotDateRange;

    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    const-string v4, "plot_date_range"

    invoke-direct {v0, v1, v4}, Lcom/github/wdkapps/fillup/PlotDateRange;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->range:Lcom/github/wdkapps/fillup/PlotDateRange;

    .line 300
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 301
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 306
    const/4 v0, 0x0

    .line 307
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    .line 308
    const/4 v1, 0x1

    iput v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    .line 309
    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    .line 310
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    .line 311
    sget-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 312
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-eqz v7, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/github/wdkapps/fillup/MileagePlot;->range:Lcom/github/wdkapps/fillup/PlotDateRange;

    .line 314
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/wdkapps/fillup/PlotDateRange;->contains(Ljava/util/Date;)Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-eqz v7, :cond_1

    .line 316
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 317
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileage()F

    move-result v7

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "date="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " x="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " y="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-wide v10, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    .line 320
    iget-wide v10, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    .line 321
    iget v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    .line 322
    iget v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    .line 323
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-float/2addr v1, v7

    const/4 v0, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v2, v0

    :cond_1
    move v0, v1

    .line 327
    const/4 v1, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 330
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v0, :cond_3

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    iput-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    const/16 v0, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v2, v0

    .line 331
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    const/16 v0, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v2, v0

    .line 334
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    .line 335
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v6, 0xb

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-nez v0, :cond_5

    .line 336
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    const/16 v0, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v2, v0

    .line 339
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minx="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " maxx="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxx:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "miny="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " maxy="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sumy="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v0, ""

    .line 345
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v1, v4, v5, v0}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    return-object v1
.end method

.method private redrawPlot()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 208
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->clear()V

    .line 209
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->drawPlot()V

    .line 210
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 211
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setPlotAxisBoundaries()V
    .locals 10

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v4, v0, v1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setPlotAxisBoundaries()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    iget v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    iget v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    .line 255
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v4, v3

    if-nez v2, :cond_1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 256
    :cond_1
    iget v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->maxy:F

    float-to-double v2, v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 257
    iget v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->miny:F

    float-to-double v2, v2

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 258
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    const/4 v3, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v4, v3

    if-gez v2, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 259
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lowerboundy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " upperboundy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    sget-object v9, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v2, v3, v8, v9}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 263
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 264
    sub-double/2addr v6, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    move-wide v0, v2

    .line 265
    :goto_0
    div-double v2, v6, v0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v2, v2, v8

    const/4 v3, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v4, v3

    if-lez v2, :cond_3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    goto :goto_0

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v3, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

    invoke-virtual {v2, v3, v0, v1}, Lcom/androidplot/xy/XYPlot;->setRangeStep(Lcom/androidplot/xy/XYStepMode;D)V

    .line 269
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->range:Lcom/github/wdkapps/fillup/PlotDateRange;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/PlotDateRange;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    .line 270
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->range:Lcom/github/wdkapps/fillup/PlotDateRange;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/PlotDateRange;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    .line 271
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->range:Lcom/github/wdkapps/fillup/PlotDateRange;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/PlotDateRange;->getValue()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    if-ne v0, v1, :cond_4

    .line 272
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->minx:J

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    .line 276
    :cond_4
    iget v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->average:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v4, v1

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    cmp-long v0, v0, v2

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v4, v1

    if-nez v0, :cond_5

    .line 277
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    .line 278
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    .line 282
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowerboundx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " upperboundx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->lowerboundx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->upperboundx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 284
    const/16 v0, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    return-void
.end method

.method private setPlotFontSizes()V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 219
    new-instance v1, Lcom/github/wdkapps/fillup/PlotFontSize;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    const-string v3, "plot_font_size"

    invoke-direct {v1, v2, v3}, Lcom/github/wdkapps/fillup/PlotFontSize;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 223
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 226
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 227
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 230
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 231
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 234
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 235
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 236
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 237
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 240
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    invoke-virtual {v2}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v1

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V
    .locals 10

    .prologue
    const v9, 0x7f06000e

    const/4 v8, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v1, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v8

    .line 110
    iput-object p2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 111
    iput-object p3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    .line 114
    new-instance v0, Lcom/github/wdkapps/fillup/Units;

    const-string v3, "units"

    invoke-direct {v0, v3}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->units:Lcom/github/wdkapps/fillup/Units;

    .line 117
    new-instance v3, Lcom/androidplot/xy/LineAndPointFormatter;

    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06000c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f06000d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v1

    check-cast v0, Lcom/androidplot/xy/PointLabelFormatter;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    iput-object v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plotFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    .line 124
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plotFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v0}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    const/high16 v0, 0x42480000    # 50.0f

    .line 128
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 129
    new-instance v4, Lcom/androidplot/xy/PointLabelFormatter;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 130
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5, v0, v3}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(IFF)V

    iput-object v4, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    .line 135
    new-instance v0, Lcom/androidplot/xy/LineAndPointFormatter;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MileagePlot;->activity:Landroid/app/Activity;

    .line 136
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    invoke-direct {v0, v3, v1, v1, v4}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    .line 142
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getLegendWidget()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setTicksPerRangeLabel(I)V

    .line 149
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setTicksPerDomainLabel(I)V

    .line 153
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelWidth(F)V

    .line 155
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelWidth()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelWidth(F)V

    .line 157
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getMarginTop()F

    move-result v0

    mul-float/2addr v0, v7

    .line 158
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    .line 159
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getMarginBottom()F

    move-result v0

    mul-float/2addr v0, v7

    .line 160
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    .line 163
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setDomainLabel(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->ylabels:Ljava/text/Format;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setRangeValueFormat(Ljava/text/Format;)V

    .line 168
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/github/wdkapps/fillup/MileagePlot;->xlabels:Ljava/text/Format;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setDomainValueFormat(Ljava/text/Format;)V

    .line 171
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->drawPlot()V

    .line 172
    const/4 v0, 0x0

    aput-boolean v8, v2, v0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 379
    const-string v1, "plot_date_range"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->redrawPlot()V

    aput-boolean v3, v0, v3

    .line 384
    :cond_1
    const-string v1, "plot_font_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->redrawPlot()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 389
    :cond_2
    const-string v1, "units"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 392
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->units:Lcom/github/wdkapps/fillup/Units;

    .line 395
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MileagePlot;->redrawPlot()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 401
    :cond_3
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileagePlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileagePlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 409
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 410
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYPlot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileagePlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 413
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
