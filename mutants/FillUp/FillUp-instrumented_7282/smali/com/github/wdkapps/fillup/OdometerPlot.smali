.class public Lcom/github/wdkapps/fillup/OdometerPlot;
.super Ljava/lang/Object;
.source "OdometerPlot.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z

.field private static final TAG:Ljava/lang/String;

.field private static final ylabels:Ljava/text/Format;


# instance fields
.field private activity:Landroid/app/Activity;

.field private average:F

.field private avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

.field private avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

.field private lowerboundx:J

.field private maxx:J

.field private maxy:J

.field private minx:J

.field private miny:J

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private plotFormatter:Lcom/androidplot/xy/BarFormatter;

.field private sumy:J

.field private units:Lcom/github/wdkapps/fillup/Units;

.field private upperboundx:J

.field private xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

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

    sput-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

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

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/OdometerPlot"

    const-wide v2, -0x19368cee347ea4efL    # -1.3841603773587365E187

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 61
    const-class v1, Lcom/github/wdkapps/fillup/OdometerPlot;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/OdometerPlot;->TAG:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#######0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/github/wdkapps/fillup/OdometerPlot;->ylabels:Ljava/text/Format;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    .line 82
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    .line 85
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    .line 86
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    .line 89
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    .line 90
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    .line 93
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->lowerboundx:J

    .line 94
    iput-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->upperboundx:J

    .line 100
    new-instance v1, Lcom/github/wdkapps/fillup/MappedLabelFormat;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/MappedLabelFormat;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;

    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method static synthetic access$000()Ljava/text/Format;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 58
    sget-object v1, Lcom/github/wdkapps/fillup/OdometerPlot;->ylabels:Ljava/text/Format;

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

    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 174
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->setPlotFontSizes()V

    .line 177
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->getPlotSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plotFormatter:Lcom/androidplot/xy/BarFormatter;

    invoke-virtual {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 180
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->setPlotAxisBoundaries()V

    .line 183
    iget v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-lez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->getAverageSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 187
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    new-instance v2, Lcom/github/wdkapps/fillup/OdometerPlot$1;

    invoke-direct {v2, p0}, Lcom/github/wdkapps/fillup/OdometerPlot$1;-><init>(Lcom/github/wdkapps/fillup/OdometerPlot;)V

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/LineAndPointFormatter;->setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V

    aput-boolean v4, v0, v4

    .line 194
    :cond_1
    aput-boolean v4, v0, v5

    return-void
.end method

.method private getAverageSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 6

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 344
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 345
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 348
    iget-wide v4, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->lowerboundx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-wide v4, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->upperboundx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v3, ""

    .line 355
    new-instance v4, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v4, v1, v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object v4
.end method

.method private getPlotSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 14

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v6, v0, v1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/wdkapps/fillup/OdometerPlot;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getPlotSeries()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 290
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    .line 296
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    .line 297
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    .line 298
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    .line 299
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    .line 300
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->clear()V

    .line 301
    const-wide/16 v0, 0x0

    .line 303
    sget-object v2, Lcom/github/wdkapps/fillup/PlotActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/MonthlyTrips;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v6, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v6, v1

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Month;

    .line 304
    sget-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/MonthlyTrips;->getTrips(Lcom/github/wdkapps/fillup/Month;)Lcom/github/wdkapps/fillup/TripRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "month="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Month;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " x="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " y="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    .line 307
    iget-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    .line 308
    iget-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    .line 309
    iget-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    .line 310
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-wide v12, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    .line 313
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Month;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->put(Ljava/lang/Long;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    move-wide v2, v4

    .line 314
    goto/16 :goto_0

    .line 317
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 318
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 321
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    .line 322
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    if-nez v0, :cond_4

    .line 323
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 326
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miny="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->miny:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sumy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->sumy:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v0, ""

    .line 332
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v1, v8, v9, v0}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v6, v0

    return-object v1
.end method

.method private redrawPlot()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 201
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->clear()V

    .line 202
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->drawPlot()V

    .line 203
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 204
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setPlotAxisBoundaries()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v9, 0x2

    const-wide/16 v10, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v12

    .line 243
    const-wide/16 v0, 0x64

    aput-boolean v2, v4, v3

    .line 244
    :goto_0
    iget-wide v6, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxy:J

    cmp-long v5, v6, v0

    aput-boolean v2, v4, v2

    if-ltz v5, :cond_1

    const-wide/16 v6, 0x2

    mul-long/2addr v0, v6

    aput-boolean v2, v4, v9

    goto :goto_0

    .line 245
    :cond_1
    iget-object v5, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v5, v6, v7, v8}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 248
    long-to-double v0, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v6

    .line 249
    iget-object v5, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v6, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

    invoke-virtual {v5, v6, v0, v1}, Lcom/androidplot/xy/XYPlot;->setRangeStep(Lcom/androidplot/xy/XYStepMode;D)V

    .line 250
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, v9}, Lcom/androidplot/xy/XYPlot;->setTicksPerRangeLabel(I)V

    .line 253
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->lowerboundx:J

    .line 254
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->upperboundx:J

    .line 255
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-wide v6, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->lowerboundx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v6, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->upperboundx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v5, v6}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 258
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v6, v7}, Lcom/androidplot/xy/XYPlot;->setDomainStep(Lcom/androidplot/xy/XYStepMode;D)V

    .line 259
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYPlot;->setTicksPerDomainLabel(I)V

    .line 262
    iget-wide v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->maxx:J

    iget-wide v6, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->minx:J

    sub-long/2addr v0, v6

    add-long v6, v0, v10

    .line 265
    iget-object v0, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    const-class v1, Lcom/androidplot/xy/BarRenderer;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer;

    .line 266
    const/4 v1, 0x3

    aput-boolean v2, v4, v1

    if-eqz v0, :cond_2

    .line 267
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/github/wdkapps/fillup/Utilities;->convertPixelsToDp(I)F

    move-result v1

    .line 269
    const/high16 v5, 0x3f400000    # 0.75f

    add-float/2addr v1, v5

    .line 270
    long-to-float v5, v6

    div-float/2addr v1, v5

    .line 271
    invoke-virtual {v0, v1}, Lcom/androidplot/xy/BarRenderer;->setBarWidth(F)V

    const/4 v0, 0x4

    aput-boolean v2, v4, v0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;

    const-wide/16 v8, 0x6

    cmp-long v0, v6, v8

    aput-boolean v2, v4, v12

    if-lez v0, :cond_3

    const/4 v0, 0x6

    aput-boolean v2, v4, v0

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->setAbbreviate(Z)V

    .line 276
    const/16 v0, 0x8

    aput-boolean v2, v4, v0

    return-void

    .line 275
    :cond_3
    const/4 v0, 0x7

    aput-boolean v2, v4, v0

    move v0, v3

    goto :goto_1
.end method

.method private setPlotFontSizes()V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 212
    new-instance v1, Lcom/github/wdkapps/fillup/PlotFontSize;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    const-string v3, "plot_font_size"

    invoke-direct {v1, v2, v3}, Lcom/github/wdkapps/fillup/PlotFontSize;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 216
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 219
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 220
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 223
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 224
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainOriginLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 227
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 228
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v3

    invoke-static {v2, v3}, Lcom/androidplot/util/PaintUtils;->setFontSizeDp(Landroid/graphics/Paint;F)V

    .line 229
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 230
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 233
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    invoke-virtual {v2}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v1

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f06000e

    const/4 v6, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 112
    iput-object p2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    .line 113
    iput-object p3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    .line 116
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->units:Lcom/github/wdkapps/fillup/Units;

    .line 119
    new-instance v1, Lcom/androidplot/xy/BarFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    .line 120
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    .line 121
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/androidplot/xy/BarFormatter;-><init>(II)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plotFormatter:Lcom/androidplot/xy/BarFormatter;

    .line 124
    const/high16 v1, 0x42480000    # 50.0f

    .line 125
    const/high16 v2, -0x3ee00000    # -10.0f

    .line 126
    new-instance v3, Lcom/androidplot/xy/PointLabelFormatter;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    .line 127
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4, v1, v2}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(IFF)V

    iput-object v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    .line 132
    new-instance v1, Lcom/androidplot/xy/LineAndPointFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    .line 133
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    invoke-direct {v1, v2, v8, v8, v3}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->avgFormatter:Lcom/androidplot/xy/LineAndPointFormatter;

    .line 139
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getLegendWidget()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/LayoutManager;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getRangeLabelWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYGraphWidget;->setRangeLabelWidth(F)V

    .line 148
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getDomainLabelWidth()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    .line 149
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainLabelWidth(F)V

    .line 150
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getMarginTop()F

    move-result v1

    mul-float/2addr v1, v5

    .line 151
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    .line 152
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getMarginBottom()F

    move-result v1

    mul-float/2addr v1, v5

    .line 153
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    .line 156
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->activity:Landroid/app/Activity;

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setDomainLabel(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v2, Lcom/github/wdkapps/fillup/OdometerPlot;->ylabels:Ljava/text/Format;

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setRangeValueFormat(Ljava/text/Format;)V

    .line 161
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->xlabels:Lcom/github/wdkapps/fillup/MappedLabelFormat;

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setDomainValueFormat(Ljava/text/Format;)V

    .line 164
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->drawPlot()V

    .line 165
    const/4 v1, 0x0

    aput-boolean v6, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 366
    const-string v1, "plot_date_range"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->redrawPlot()V

    aput-boolean v3, v0, v3

    .line 371
    :cond_1
    const-string v1, "plot_font_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->redrawPlot()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 376
    :cond_2
    const-string v1, "units"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 379
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->units:Lcom/github/wdkapps/fillup/Units;

    .line 382
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/OdometerPlot;->redrawPlot()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 388
    :cond_3
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/OdometerPlot;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 396
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 397
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    iget-object v2, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, v1}, Lcom/androidplot/xy/XYPlot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v1, p0, Lcom/github/wdkapps/fillup/OdometerPlot;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 400
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
