.class public Lcom/github/wdkapps/fillup/MileageCalculation;
.super Ljava/lang/Object;
.source "MileageCalculation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final $VRc:[[Z = null

.field private static final IMPERIAL_GALLONS_PER_LITER:F = 0.219969f

.field private static final MILES_PER_KILOMETER:F = 0.621371f

.field private static final serialVersionUID:J = 0x2f3c469ad2b2c3c4L


# instance fields
.field protected endOdometer:I

.field protected gasolineUsed:F

.field protected startOdometer:I

.field protected units:Lcom/github/wdkapps/fillup/Units;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v0, 0xa

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MileageCalculation"

    const-wide v2, -0x1764a835b52280eL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/Units;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->startOdometer:I

    .line 64
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->startOdometer:I

    iput v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->endOdometer:I

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    .line 66
    iput-object p2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->units:Lcom/github/wdkapps/fillup/Units;

    .line 67
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public add(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 76
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->endOdometer:I

    .line 77
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    .line 78
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method

.method public getDistanceDriven()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 86
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->endOdometer:I

    iget v2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->startOdometer:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getGasolineUsed()F
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 95
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getGasolineUsedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 148
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.3f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getGasolineUsed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v0, v5

    return-object v1
.end method

.method public getMileage()F
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x3e613f8e

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v7

    .line 105
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getDistanceDriven()I

    move-result v0

    .line 108
    iget v3, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    cmpl-float v3, v3, v1

    const/4 v4, 0x0

    aput-boolean v5, v2, v4

    if-lez v3, :cond_1

    aput-boolean v5, v2, v5

    if-lez v0, :cond_1

    .line 111
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->units:Lcom/github/wdkapps/fillup/Units;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getValue()I

    move-result v3

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 139
    :goto_0
    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    return v0

    .line 116
    :pswitch_0
    int-to-float v0, v0

    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    div-float/2addr v0, v1

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 120
    :pswitch_1
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    aput-boolean v5, v2, v7

    goto :goto_0

    .line 125
    :pswitch_2
    int-to-float v0, v0

    .line 126
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    mul-float/2addr v1, v6

    .line 127
    div-float/2addr v0, v1

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 132
    :pswitch_3
    int-to-float v0, v0

    const v1, 0x3f1f122b

    mul-float/2addr v0, v1

    .line 133
    iget v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    mul-float/2addr v1, v6

    .line 134
    div-float/2addr v0, v1

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getMileageString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 157
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileage()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v0, v5

    return-object v1
.end method

.method public getUnits()Lcom/github/wdkapps/fillup/Units;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 166
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->units:Lcom/github/wdkapps/fillup/Units;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculation;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MileageCalculation [startOdometer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->startOdometer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endOdometer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->endOdometer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gasUsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->gasolineUsed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", units="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MileageCalculation;->units:Lcom/github/wdkapps/fillup/Units;

    .line 180
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
