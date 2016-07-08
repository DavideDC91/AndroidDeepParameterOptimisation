.class public Lcom/github/wdkapps/fillup/TripRecord;
.super Ljava/lang/Object;
.source "TripRecord.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x372e53b089a82679L


# instance fields
.field private cost:Ljava/lang/Double;

.field private distance:Ljava/lang/Integer;

.field private endDate:Ljava/util/Date;

.field private gallons:Ljava/lang/Float;

.field private records:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:Ljava/util/Date;


# direct methods
.method private static $VRi()[[Z
    .locals 6

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

    sput-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

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

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/TripRecord"

    const-wide v2, 0x31e3c80e53f3b2cL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    .line 72
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    .line 73
    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    .line 74
    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    .line 75
    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    .line 76
    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/GasRecord;->getCost()Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    .line 78
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    .line 58
    iput-object p1, p0, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    .line 61
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    .line 62
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method


# virtual methods
.method public append(Lcom/github/wdkapps/fillup/TripRecord;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 90
    iget-object v1, p1, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p1, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    aput-boolean v6, v0, v6

    .line 95
    :cond_1
    iget-object v1, p1, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    aput-boolean v6, v0, v3

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p1, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    .line 101
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p1, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    .line 102
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p1, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    .line 103
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    iget-object v2, p1, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void
.end method

.method public getCost()Ljava/lang/Double;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 148
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 130
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->distance:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 121
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->endDate:Ljava/util/Date;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getGallons()Ljava/lang/Float;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 139
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getGasRecords()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 157
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->records:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 167
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    aput-boolean v6, v1, v3

    if-lez v2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/github/wdkapps/fillup/TripRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/github/wdkapps/fillup/TripRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-boolean v6, v1, v6

    .line 171
    :cond_1
    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/TripRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/TripRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 112
    iget-object v1, p0, Lcom/github/wdkapps/fillup/TripRecord;->startDate:Ljava/util/Date;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
