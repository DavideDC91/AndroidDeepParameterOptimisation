.class public Lcom/github/wdkapps/fillup/StatisticsReport;
.super Ljava/lang/Object;
.source "StatisticsReport.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/HtmlData;


# static fields
.field private static final $VRc:[[Z

.field private static final TAG:Ljava/lang/String;

.field private static final newline:Ljava/lang/String;


# instance fields
.field private html:Ljava/lang/StringBuilder;

.field private final monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/HtmlData;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/StatisticsReport"

    const-wide v2, 0x600cc0c2640fa57dL    # 4.818928097657219E154

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 38
    const-class v1, Lcom/github/wdkapps/fillup/StatisticsReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsReport;->TAG:Ljava/lang/String;

    .line 41
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsReport;->newline:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/github/wdkapps/fillup/MonthlyTrips;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->title:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    .line 67
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsReport;->createTables()V

    .line 70
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsReport;->createReport()V

    .line 71
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private createReport()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v1

    .line 114
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0700d1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsReport;->readAssetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/HtmlData;

    .line 123
    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    const-string v5, "<div>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/github/wdkapps/fillup/StatisticsReport;->newline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/github/wdkapps/fillup/HtmlData;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    const-string v4, "</div>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/github/wdkapps/fillup/StatisticsReport;->newline:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    const-string v4, "<p/>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/github/wdkapps/fillup/StatisticsReport;->newline:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    sget-object v3, Lcom/github/wdkapps/fillup/StatisticsReport;->TAG:Ljava/lang/String;

    const-string v4, "Error creating report"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    .line 135
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    const-string v4, "<html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    const-string v2, "/html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 141
    :goto_1
    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    return-void

    .line 130
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsReport;->readAssetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createTables()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v9

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->tables:Ljava/util/List;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/MonthlyTrips;->iterator()Ljava/util/Iterator;

    move-result-object v3

    aput-boolean v7, v1, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v7, v1, v7

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Month;

    .line 95
    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->monthly:Lcom/github/wdkapps/fillup/MonthlyTrips;

    invoke-virtual {v4, v0}, Lcom/github/wdkapps/fillup/MonthlyTrips;->getTrips(Lcom/github/wdkapps/fillup/Month;)Lcom/github/wdkapps/fillup/TripRecord;

    move-result-object v4

    .line 96
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Month;->getLongLabel()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->tables:Ljava/util/List;

    new-instance v6, Lcom/github/wdkapps/fillup/StatisticsMonthTable;

    invoke-direct {v6, v4, v0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;-><init>(Lcom/github/wdkapps/fillup/TripRecord;Ljava/lang/String;)V

    invoke-interface {v5, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    invoke-interface {v2, v8, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    aput-boolean v7, v1, v9

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    aput-boolean v7, v1, v3

    if-le v0, v7, :cond_2

    .line 104
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->tables:Ljava/util/List;

    new-instance v3, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->title:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x4

    aput-boolean v7, v1, v0

    .line 107
    :cond_2
    const/4 v0, 0x5

    aput-boolean v7, v1, v0

    return-void
.end method

.method private readAssetFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 151
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const/4 v2, 0x0

    .line 155
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v3, v0

    .line 156
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->newline:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :goto_1
    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    const/4 v1, 0x6

    aput-boolean v6, v3, v1

    :cond_1
    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    throw v0

    :cond_2
    const/4 v0, 0x3

    aput-boolean v6, v3, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    aput-boolean v6, v3, v7

    .line 164
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-boolean v6, v3, v1

    return-object v0

    .line 161
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsReport;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 80
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsReport;->html:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method
