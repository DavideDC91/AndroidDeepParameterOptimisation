.class public Lcom/github/wdkapps/fillup/StatisticsSummaryTable;
.super Ljava/lang/Object;
.source "StatisticsSummaryTable.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/HtmlData;


# static fields
.field private static final $VRc:[[Z

.field private static final newline:Ljava/lang/String;


# instance fields
.field private final cssClass:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/TripRecord;",
            ">;"
        }
    .end annotation
.end field

.field private html:Ljava/lang/StringBuilder;

.field private records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private final title:Ljava/lang/String;

.field private total:Lcom/github/wdkapps/fillup/TripRecord;

.field private units:Lcom/github/wdkapps/fillup/Units;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xd

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v7, [Z

    aput-object v1, v0, v5

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe

    new-array v2, v2, [Z

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

    const-string v1, "com/github/wdkapps/fillup/StatisticsSummaryTable"

    const-wide v2, -0x59f85019409cf473L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 58
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/TripRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "summary"

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->cssClass:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->records:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->data:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070035

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->title:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/github/wdkapps/fillup/TripRecord;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v2}, Lcom/github/wdkapps/fillup/TripRecord;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    aput-boolean v4, v1, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v4, v1, v4

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/TripRecord;

    .line 71
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v3, v0}, Lcom/github/wdkapps/fillup/TripRecord;->append(Lcom/github/wdkapps/fillup/TripRecord;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->records:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/TripRecord;->getGasRecords()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->records:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/wdkapps/fillup/OdometerComparator;

    invoke-direct {v2}, Lcom/github/wdkapps/fillup/OdometerComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->createTable()V

    .line 76
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-void
.end method

.method private appendCostData()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const-wide/16 v2, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v4, v0, v1

    .line 168
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    aput-boolean v11, v4, v12

    if-lez v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v0, v0

    div-double v0, v6, v0

    aput-boolean v11, v4, v11

    .line 176
    :goto_0
    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-boolean v11, v4, v13

    if-lez v5, :cond_1

    .line 177
    iget-object v2, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v2, v6

    aput-boolean v11, v4, v14

    .line 181
    :cond_1
    const v5, 0x7f07002c

    invoke-direct {p0, v5}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const v7, 0x7f070032

    invoke-direct {p0, v7}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v9

    iget-object v10, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v10}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 184
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    .line 185
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 186
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Units;->getDistanceRatioLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    .line 182
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "("

    const-string v2, "<br/>("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-array v1, v13, [Ljava/lang/String;

    aput-object v5, v1, v12

    aput-object v0, v1, v11

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x4

    aput-boolean v11, v4, v0

    return-void

    :cond_2
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method private appendDistanceData()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 145
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    const/4 v0, 0x0

    .line 147
    aput-boolean v7, v1, v8

    if-lez v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    aput-boolean v7, v1, v7

    .line 152
    :cond_1
    const v2, 0x7f07002a

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-direct {p0, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    .line 154
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 155
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 156
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v9

    .line 153
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v3, "("

    const-string v4, "<br/>("

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-array v3, v9, [Ljava/lang/String;

    aput-object v2, v3, v8

    aput-object v0, v3, v7

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 159
    aput-boolean v7, v1, v9

    return-void
.end method

.method private appendGallonsData()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 198
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 199
    const/4 v0, 0x0

    .line 200
    aput-boolean v7, v1, v8

    if-lez v2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    aput-boolean v7, v1, v7

    .line 205
    :cond_1
    const v2, 0x7f07002b

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const v4, 0x7f070030

    invoke-direct {p0, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    .line 207
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 208
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v9

    .line 206
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v3, "("

    const-string v4, "<br/>("

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-array v3, v9, [Ljava/lang/String;

    aput-object v2, v3, v8

    aput-object v0, v3, v7

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 212
    aput-boolean v7, v1, v9

    return-void
.end method

.method private appendMileageData()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v6, v0, v13

    .line 236
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 240
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->records:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    aput-boolean v11, v6, v2

    move v3, v1

    move v4, v1

    move v5, v0

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v11, v6, v11

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 241
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v8

    aput-boolean v11, v6, v12

    if-nez v8, :cond_1

    const/4 v0, 0x3

    aput-boolean v11, v6, v0

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x4

    aput-boolean v11, v6, v9

    if-eqz v8, :cond_2

    const/4 v0, 0x5

    aput-boolean v11, v6, v0

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileage()F

    move-result v0

    .line 244
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 245
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 246
    add-float/2addr v3, v0

    .line 247
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x6

    aput-boolean v11, v6, v1

    move v1, v0

    .line 248
    goto :goto_0

    .line 254
    :cond_3
    const v0, 0x7f070027

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    const-string v0, "-"

    .line 256
    const/4 v8, 0x7

    aput-boolean v11, v6, v8

    if-lez v1, :cond_4

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v8, "%.2f %s"

    new-array v9, v12, [Ljava/lang/Object;

    int-to-float v10, v1

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v11

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-boolean v11, v6, v3

    .line 257
    :cond_4
    new-array v3, v12, [Ljava/lang/String;

    aput-object v7, v3, v2

    aput-object v0, v3, v11

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 260
    const v0, 0x7f070028

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v0, "-"

    .line 262
    aput-boolean v11, v6, v13

    if-lez v1, :cond_5

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v7, "%.2f %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v2

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xa

    aput-boolean v11, v6, v5

    .line 263
    :cond_5
    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v2

    aput-object v0, v5, v11

    invoke-direct {p0, v5}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 266
    const v0, 0x7f070029

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    const-string v0, "-"

    .line 268
    const/16 v5, 0xb

    aput-boolean v11, v6, v5

    if-lez v1, :cond_6

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2f %s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v11

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    aput-boolean v11, v6, v1

    .line 269
    :cond_6
    new-array v1, v12, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v0, v1, v11

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 270
    const/16 v0, 0xd

    aput-boolean v11, v6, v0

    return-void
.end method

.method private appendPriceData()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v1, v0, v1

    .line 219
    const v0, 0x7f07002d

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v0, "-"

    .line 221
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    aput-boolean v8, v1, v9

    if-lez v3, :cond_1

    .line 222
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->total:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    div-double/2addr v4, v6

    .line 223
    const-string v0, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 225
    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeRatioLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 223
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v8, v1, v8

    .line 227
    :cond_1
    new-array v3, v10, [Ljava/lang/String;

    aput-object v2, v3, v9

    aput-object v0, v3, v8

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableRow([Ljava/lang/String;)V

    .line 228
    aput-boolean v8, v1, v10

    return-void
.end method

.method private appendTableHeaderRow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 114
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<tr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "summary"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  <th"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "summary"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "colspan"

    invoke-direct {p0, v3, p2}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</th>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    const-string v2, "</tr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private appendTableRow([Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v9

    .line 126
    iget v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->row:I

    and-int/lit8 v0, v0, 0x1

    aput-boolean v8, v2, v1

    if-ne v0, v8, :cond_1

    .line 127
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<tr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    const-string v5, "summary odd"

    invoke-direct {p0, v4, v5}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aput-boolean v8, v2, v8

    .line 131
    :goto_0
    array-length v3, p1

    const/4 v0, 0x3

    aput-boolean v8, v2, v0

    move v0, v1

    :goto_1
    aput-boolean v8, v2, v9

    if-ge v0, v3, :cond_2

    aget-object v1, p1, v0

    .line 132
    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  <td"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "class"

    const-string v7, "summary"

    invoke-direct {p0, v6, v7}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</td>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    aput-boolean v8, v2, v1

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<tr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    const-string v5, "summary"

    invoke-direct {p0, v4, v5}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aput-boolean v8, v2, v0

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    const-string v1, "</tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->row:I

    .line 136
    const/4 v0, 0x6

    aput-boolean v8, v2, v0

    return-void
.end method

.method private createTable()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 93
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "summary"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->title:Ljava/lang/String;

    const-string v2, "2"

    invoke-direct {p0, v1, v2}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendTableHeaderRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput v5, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->row:I

    .line 98
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendMileageData()V

    .line 99
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendDistanceData()V

    .line 100
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendGallonsData()V

    .line 101
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendCostData()V

    .line 102
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->appendPriceData()V

    .line 103
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    const-string v2, "</table>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 291
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 280
    const-string v1, " %s=\"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v3

    return-object v1
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 85
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsSummaryTable;->html:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method
