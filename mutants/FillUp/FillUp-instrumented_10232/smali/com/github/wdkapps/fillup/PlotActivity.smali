.class public Lcom/github/wdkapps/fillup/PlotActivity;
.super Landroid/app/Activity;
.source "PlotActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z

.field private static final TAG:Ljava/lang/String;

.field public static final VEHICLE:Ljava/lang/String;

.field public static monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

.field public static records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private plotCost:Lcom/github/wdkapps/fillup/CostPlot;

.field private plotGallons:Lcom/github/wdkapps/fillup/GallonsPlot;

.field private plotMileage:Lcom/github/wdkapps/fillup/MileagePlot;

.field private plotOdometer:Lcom/github/wdkapps/fillup/OdometerPlot;

.field private plotPrice:Lcom/github/wdkapps/fillup/PricePlot;

.field private rangeButtons:Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

.field private scrollview:Landroid/widget/ScrollView;

.field private vehicle:Lcom/github/wdkapps/fillup/Vehicle;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xd

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

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

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/PlotActivity"

    const-wide v2, -0x967cf754583dd9aL    # -1.904255491589806E263

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 49
    const-class v1, Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->TAG:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".VEHICLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->VEHICLE:Ljava/lang/String;

    .line 56
    sput-object v3, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    .line 59
    sput-object v3, Lcom/github/wdkapps/fillup/PlotActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v1, Lcom/github/wdkapps/fillup/MileagePlot;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/MileagePlot;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotMileage:Lcom/github/wdkapps/fillup/MileagePlot;

    .line 66
    new-instance v1, Lcom/github/wdkapps/fillup/OdometerPlot;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/OdometerPlot;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotOdometer:Lcom/github/wdkapps/fillup/OdometerPlot;

    .line 67
    new-instance v1, Lcom/github/wdkapps/fillup/GallonsPlot;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/GallonsPlot;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotGallons:Lcom/github/wdkapps/fillup/GallonsPlot;

    .line 68
    new-instance v1, Lcom/github/wdkapps/fillup/CostPlot;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/CostPlot;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotCost:Lcom/github/wdkapps/fillup/CostPlot;

    .line 69
    new-instance v1, Lcom/github/wdkapps/fillup/PricePlot;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/PricePlot;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotPrice:Lcom/github/wdkapps/fillup/PricePlot;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/github/wdkapps/fillup/PlotActivity;)Landroid/widget/ScrollView;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->scrollview:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/MileagePlot;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotMileage:Lcom/github/wdkapps/fillup/MileagePlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/OdometerPlot;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotOdometer:Lcom/github/wdkapps/fillup/OdometerPlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/GallonsPlot;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotGallons:Lcom/github/wdkapps/fillup/GallonsPlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/CostPlot;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotCost:Lcom/github/wdkapps/fillup/CostPlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/PricePlot;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotPrice:Lcom/github/wdkapps/fillup/PricePlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setTitlesFontSize()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 207
    new-instance v0, Lcom/github/wdkapps/fillup/PlotFontSize;

    const-string v2, "plot_font_size"

    invoke-direct {v0, p0, v2}, Lcom/github/wdkapps/fillup/PlotFontSize;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/PlotFontSize;->getSizeDp()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v2, v0

    .line 210
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/PlotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    sget-object v2, Lcom/github/wdkapps/fillup/PlotActivity;->VEHICLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 93
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->getInstance()Lcom/github/wdkapps/fillup/GasLog;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/github/wdkapps/fillup/MonthlyTrips;

    sget-object v2, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/github/wdkapps/fillup/MonthlyTrips;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    .line 100
    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    new-instance v2, Lcom/github/wdkapps/fillup/DateComparator;

    invoke-direct {v2}, Lcom/github/wdkapps/fillup/DateComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    new-instance v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

    const-string v2, "plot_date_range"

    invoke-direct {v0, p0, v2}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotActivity;->rangeButtons:Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

    .line 106
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotMileage:Lcom/github/wdkapps/fillup/MileagePlot;

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, p1, p0, v0}, Lcom/github/wdkapps/fillup/MileagePlot;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V

    .line 107
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotOdometer:Lcom/github/wdkapps/fillup/OdometerPlot;

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, p1, p0, v0}, Lcom/github/wdkapps/fillup/OdometerPlot;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V

    .line 108
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotGallons:Lcom/github/wdkapps/fillup/GallonsPlot;

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, p1, p0, v0}, Lcom/github/wdkapps/fillup/GallonsPlot;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V

    .line 109
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotCost:Lcom/github/wdkapps/fillup/CostPlot;

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, p1, p0, v0}, Lcom/github/wdkapps/fillup/CostPlot;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V

    .line 110
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotPrice:Lcom/github/wdkapps/fillup/PricePlot;

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, p1, p0, v0}, Lcom/github/wdkapps/fillup/PricePlot;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/androidplot/xy/XYPlot;)V

    .line 113
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/PlotActivity;->setTitlesFontSize()V

    .line 116
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotActivity;->scrollview:Landroid/widget/ScrollView;

    .line 117
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotActivity;->scrollview:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 118
    new-instance v2, Lcom/github/wdkapps/fillup/PlotActivity$1;

    invoke-direct {v2, p0}, Lcom/github/wdkapps/fillup/PlotActivity$1;-><init>(Lcom/github/wdkapps/fillup/PlotActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 139
    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 148
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/PlotActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x3

    aget-object v2, v0, v2

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 163
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/github/wdkapps/fillup/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/PlotActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x7f0b004e
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 182
    const-string v1, "units"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 183
    sget-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 184
    new-instance v1, Lcom/github/wdkapps/fillup/MonthlyTrips;

    sget-object v2, Lcom/github/wdkapps/fillup/PlotActivity;->records:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/MonthlyTrips;-><init>(Ljava/util/List;)V

    sput-object v1, Lcom/github/wdkapps/fillup/PlotActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    aput-boolean v3, v0, v3

    .line 188
    :cond_1
    const-string v1, "plot_font_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/PlotActivity;->setTitlesFontSize()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotMileage:Lcom/github/wdkapps/fillup/MileagePlot;

    invoke-virtual {v1, p1, p2}, Lcom/github/wdkapps/fillup/MileagePlot;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotOdometer:Lcom/github/wdkapps/fillup/OdometerPlot;

    invoke-virtual {v1, p1, p2}, Lcom/github/wdkapps/fillup/OdometerPlot;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotGallons:Lcom/github/wdkapps/fillup/GallonsPlot;

    invoke-virtual {v1, p1, p2}, Lcom/github/wdkapps/fillup/GallonsPlot;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotCost:Lcom/github/wdkapps/fillup/CostPlot;

    invoke-virtual {v1, p1, p2}, Lcom/github/wdkapps/fillup/CostPlot;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity;->plotPrice:Lcom/github/wdkapps/fillup/PricePlot;

    invoke-virtual {v1, p1, p2}, Lcom/github/wdkapps/fillup/PricePlot;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 199
    aput-boolean v3, v0, v4

    return-void
.end method
