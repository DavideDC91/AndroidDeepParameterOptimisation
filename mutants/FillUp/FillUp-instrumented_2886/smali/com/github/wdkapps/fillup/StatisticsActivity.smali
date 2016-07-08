.class public Lcom/github/wdkapps/fillup/StatisticsActivity;
.super Landroid/app/Activity;
.source "StatisticsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z

.field public static final VEHICLE:Ljava/lang/String;

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
.field private monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

.field private rangeButtons:Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

.field private report:Lcom/github/wdkapps/fillup/HtmlData;

.field private vehicle:Lcom/github/wdkapps/fillup/Vehicle;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xb

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v6

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/StatisticsActivity"

    const-wide v2, 0x3cf0da1b3191d87aL    # 3.741890673289918E-15

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/StatisticsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".VEHICLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsActivity;->VEHICLE:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsActivity;->records:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private createReportFile(Ljava/io/File;)Z
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v5, v0, v7

    .line 196
    const/4 v4, 0x0

    .line 198
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->report:Lcom/github/wdkapps/fillup/HtmlData;

    invoke-interface {v0}, Lcom/github/wdkapps/fillup/HtmlData;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    aput-boolean v1, v5, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    aput-boolean v1, v5, v1

    move v0, v1

    .line 206
    :goto_0
    aput-boolean v1, v5, v7

    return v0

    .line 201
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 202
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "createReportFile() failed"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    const/4 v0, 0x2

    aput-boolean v1, v5, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x3

    aput-boolean v1, v5, v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_2
    const/4 v2, 0x4

    aput-boolean v1, v5, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    const/4 v2, 0x5

    aput-boolean v1, v5, v2

    :cond_1
    const/4 v2, 0x6

    aput-boolean v1, v5, v2

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 201
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private displayReport()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x3

    aget-object v6, v0, v2

    .line 130
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->webview:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->report:Lcom/github/wdkapps/fillup/HtmlData;

    invoke-interface {v2}, Lcom/github/wdkapps/fillup/HtmlData;->getHtml()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method

.method private generateReport()V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 121
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->rangeButtons:Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->getPlotDateRange()Lcom/github/wdkapps/fillup/PlotDateRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/PlotDateRange;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/github/wdkapps/fillup/StatisticsReport;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    invoke-direct {v2, v1, v3}, Lcom/github/wdkapps/fillup/StatisticsReport;-><init>(Ljava/lang/String;Lcom/github/wdkapps/fillup/MonthlyTrips;)V

    iput-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->report:Lcom/github/wdkapps/fillup/HtmlData;

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private shareReport()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 216
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getReportFile()Ljava/io/File;

    move-result-object v1

    .line 218
    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsActivity;->createReportFile(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v5, v0, v3

    if-nez v2, :cond_1

    .line 219
    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v5, v0, v5

    .line 222
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const/high16 v1, 0x10800000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method protected getReportFile()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 180
    invoke-static {}, Lcom/github/wdkapps/fillup/ExternalStorage;->getPublicDownloadDirectory()Ljava/io/File;

    move-result-object v1

    .line 183
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-boolean v7, v0, v6

    return-object v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsActivity;->VEHICLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 85
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->getInstance()Lcom/github/wdkapps/fillup/GasLog;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->records:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/github/wdkapps/fillup/MonthlyTrips;

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsActivity;->records:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/github/wdkapps/fillup/MonthlyTrips;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    .line 92
    new-instance v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

    const-string v2, "plot_date_range"

    invoke-direct {v0, p0, v2}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->rangeButtons:Lcom/github/wdkapps/fillup/PlotDateRangeButtons;

    .line 93
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->webview:Landroid/webkit/WebView;

    .line 94
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 98
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->webview:Landroid/webkit/WebView;

    new-instance v2, Lcom/github/wdkapps/fillup/StatisticsActivity$1;

    invoke-direct {v2, p0}, Lcom/github/wdkapps/fillup/StatisticsActivity$1;-><init>(Lcom/github/wdkapps/fillup/StatisticsActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 109
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->generateReport()V

    .line 112
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->displayReport()V

    .line 113
    aput-boolean v4, v1, v3

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 140
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 141
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v4

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    sparse-switch v0, :sswitch_data_0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 155
    :sswitch_0
    invoke-static {}, Lcom/github/wdkapps/fillup/ExternalStorage;->isWritable()Z

    move-result v0

    aput-boolean v1, v2, v1

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->shareReport()V

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 160
    :goto_1
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 158
    :cond_1
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 163
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/github/wdkapps/fillup/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    aput-boolean v1, v2, v4

    move v0, v1

    goto :goto_0

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b004e -> :sswitch_1
        0x7f0b0054 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 241
    const-string v1, "plot_date_range"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->generateReport()V

    .line 243
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->displayReport()V

    aput-boolean v3, v0, v3

    .line 247
    :cond_1
    const-string v1, "units"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 248
    sget-object v1, Lcom/github/wdkapps/fillup/StatisticsActivity;->records:Ljava/util/List;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 249
    new-instance v1, Lcom/github/wdkapps/fillup/MonthlyTrips;

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsActivity;->records:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/MonthlyTrips;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsActivity;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    .line 250
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->generateReport()V

    .line 251
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsActivity;->displayReport()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 254
    :cond_2
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method
