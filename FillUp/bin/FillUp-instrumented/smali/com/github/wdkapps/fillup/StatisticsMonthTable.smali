.class public Lcom/github/wdkapps/fillup/StatisticsMonthTable;
.super Ljava/lang/Object;
.source "StatisticsMonthTable.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/HtmlData;


# static fields
.field private static final $VRc:[[Z

.field private static final newline:Ljava/lang/String;


# instance fields
.field private final cssClass:Ljava/lang/String;

.field private data:Lcom/github/wdkapps/fillup/TripRecord;

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

.field private units:Lcom/github/wdkapps/fillup/Units;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xd

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

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

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

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

    const-string v1, "com/github/wdkapps/fillup/StatisticsMonthTable"

    const-wide v2, -0x2aa18ae9d80294L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 53
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/TripRecord;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "month"

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->cssClass:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->records:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    .line 63
    iput-object p2, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->title:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/TripRecord;->getGasRecords()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->records:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/wdkapps/fillup/OdometerComparator;

    invoke-direct {v2}, Lcom/github/wdkapps/fillup/OdometerComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->createTable()V

    .line 67
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method private appendCostData()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v2, v0, v1

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v9, v2, v10

    if-lez v3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    add-double/2addr v0, v4

    aput-boolean v9, v2, v9

    .line 155
    :cond_1
    const v3, 0x7f07002c

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const v5, 0x7f070033

    invoke-direct {p0, v5}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v7

    iget-object v8, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v8}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 158
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 159
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Units;->getDistanceRatioLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 156
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "("

    const-string v4, "<br/>("

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-array v1, v11, [Ljava/lang/String;

    aput-object v3, v1, v10

    aput-object v0, v1, v9

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 162
    aput-boolean v9, v2, v11

    return-void
.end method

.method private appendDistanceData()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 134
    const v1, 0x7f07002a

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f07002f

    .line 136
    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    .line 137
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/TripRecord;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 138
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabelLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 135
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    new-array v3, v8, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 140
    aput-boolean v7, v0, v6

    return-void
.end method

.method private appendGallonsData()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 169
    const v1, 0x7f07002b

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f070031

    .line 171
    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    .line 172
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 173
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 170
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 174
    new-array v3, v8, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 175
    aput-boolean v7, v0, v6

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

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v6, v0, v13

    .line 199
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 203
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->records:Ljava/util/ArrayList;

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

    .line 204
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v8

    aput-boolean v11, v6, v12

    if-nez v8, :cond_1

    const/4 v0, 0x3

    aput-boolean v11, v6, v0

    goto :goto_0

    .line 205
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

    .line 206
    :cond_2
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileage()F

    move-result v0

    .line 207
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 208
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 209
    add-float/2addr v3, v0

    .line 210
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x6

    aput-boolean v11, v6, v1

    move v1, v0

    .line 211
    goto :goto_0

    .line 217
    :cond_3
    const v0, 0x7f070027

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    const-string v0, "-"

    .line 219
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

    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v11

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-boolean v11, v6, v3

    .line 220
    :cond_4
    new-array v3, v12, [Ljava/lang/String;

    aput-object v7, v3, v2

    aput-object v0, v3, v11

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 223
    const v0, 0x7f070028

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v0, "-"

    .line 225
    aput-boolean v11, v6, v13

    if-lez v1, :cond_5

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v7, "%.2f %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v2

    iget-object v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xa

    aput-boolean v11, v6, v5

    .line 226
    :cond_5
    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v2

    aput-object v0, v5, v11

    invoke-direct {p0, v5}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 229
    const v0, 0x7f070029

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    const-string v0, "-"

    .line 231
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

    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v11

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    aput-boolean v11, v6, v1

    .line 232
    :cond_6
    new-array v1, v12, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v0, v1, v11

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 233
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

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v1, v0, v1

    .line 182
    const v0, 0x7f07002d

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v0, "-"

    .line 184
    iget-object v3, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    aput-boolean v8, v1, v9

    if-lez v3, :cond_1

    .line 185
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getCost()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->data:Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/TripRecord;->getGallons()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    div-double/2addr v4, v6

    .line 186
    const-string v0, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 188
    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeRatioLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 186
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v8, v1, v8

    .line 190
    :cond_1
    new-array v3, v10, [Ljava/lang/String;

    aput-object v2, v3, v9

    aput-object v0, v3, v8

    invoke-direct {p0, v3}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableRow([Ljava/lang/String;)V

    .line 191
    aput-boolean v8, v1, v10

    return-void
.end method

.method private appendTableHeaderRow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<tr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "month"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  <th"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "month"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "colspan"

    invoke-direct {p0, v3, p2}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    const-string v2, "</tr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
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

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v9

    .line 117
    iget v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->row:I

    and-int/lit8 v0, v0, 0x1

    aput-boolean v8, v2, v1

    if-ne v0, v8, :cond_1

    .line 118
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<tr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    const-string v5, "month odd"

    invoke-direct {p0, v4, v5}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v3, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aput-boolean v8, v2, v8

    .line 122
    :goto_0
    array-length v3, p1

    const/4 v0, 0x3

    aput-boolean v8, v2, v0

    move v0, v1

    :goto_1
    aput-boolean v8, v2, v9

    if-ge v0, v3, :cond_2

    aget-object v1, p1, v0

    .line 123
    iget-object v4, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  <td"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "class"

    const-string v7, "month"

    invoke-direct {p0, v6, v7}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v4, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    aput-boolean v8, v2, v1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<tr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    const-string v5, "month"

    invoke-direct {p0, v4, v5}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v3, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aput-boolean v8, v2, v0

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    const-string v1, "</tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->row:I

    .line 127
    const/4 v0, 0x6

    aput-boolean v8, v2, v0

    return-void
.end method

.method private createTable()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 84
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->units:Lcom/github/wdkapps/fillup/Units;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    const-string v4, "month"

    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->title:Ljava/lang/String;

    const-string v2, "2"

    invoke-direct {p0, v1, v2}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendTableHeaderRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput v5, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->row:I

    .line 89
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendMileageData()V

    .line 90
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendDistanceData()V

    .line 91
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendGallonsData()V

    .line 92
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendCostData()V

    .line 93
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->appendPriceData()V

    .line 94
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    const-string v2, "</table>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 254
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

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 243
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

    sget-object v0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 76
    iget-object v1, p0, Lcom/github/wdkapps/fillup/StatisticsMonthTable;->html:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method
