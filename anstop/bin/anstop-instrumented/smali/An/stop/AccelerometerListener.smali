.class public LAn/stop/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final FORCE_THRESHOLD:I = 0x384

.field private static final serialVersionUID:J = -0x15e995469ea59064L


# instance fields
.field private final DATA_X:I

.field private final DATA_Y:I

.field private final DATA_Z:I

.field private clock:LAn/stop/Clock;

.field private currenForce:F

.field private currentTime:J

.field private current_x:F

.field private current_y:F

.field private current_z:F

.field private lastUpdate:J

.field private last_x:F

.field private last_y:F

.field private last_z:F

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/AccelerometerListener"

    const-wide v2, -0x70cb07b28735eff9L    # -2.06101154349135E-235

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;LAn/stop/Clock;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v6, p0, LAn/stop/AccelerometerListener;->lastUpdate:J

    .line 41
    iput-wide v6, p0, LAn/stop/AccelerometerListener;->currentTime:J

    .line 46
    iput v3, p0, LAn/stop/AccelerometerListener;->DATA_X:I

    .line 47
    iput v2, p0, LAn/stop/AccelerometerListener;->DATA_Y:I

    .line 48
    iput v4, p0, LAn/stop/AccelerometerListener;->DATA_Z:I

    .line 52
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 53
    iput-object v0, p0, LAn/stop/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 54
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LAn/stop/AccelerometerListener;->sensors:Ljava/util/List;

    .line 55
    iput-object p2, p0, LAn/stop/AccelerometerListener;->clock:LAn/stop/Clock;

    .line 56
    iget-object v0, p0, LAn/stop/AccelerometerListener;->sensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput-boolean v2, v1, v3

    if-lez v0, :cond_1

    .line 57
    iget-object v0, p0, LAn/stop/AccelerometerListener;->sensors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, LAn/stop/AccelerometerListener;->sensor:Landroid/hardware/Sensor;

    aput-boolean v2, v1, v2

    .line 59
    :cond_1
    aput-boolean v2, v1, v4

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v10

    .line 78
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    aput-boolean v6, v0, v7

    if-ne v1, v6, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    aput-boolean v6, v0, v6

    if-ge v1, v9, :cond_2

    :cond_1
    aput-boolean v6, v0, v8

    .line 101
    :goto_0
    return-void

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LAn/stop/AccelerometerListener;->currentTime:J

    .line 83
    iget-wide v2, p0, LAn/stop/AccelerometerListener;->currentTime:J

    iget-wide v4, p0, LAn/stop/AccelerometerListener;->lastUpdate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    aput-boolean v6, v0, v9

    if-lez v1, :cond_4

    .line 84
    iget-wide v2, p0, LAn/stop/AccelerometerListener;->currentTime:J

    iget-wide v4, p0, LAn/stop/AccelerometerListener;->lastUpdate:J

    sub-long/2addr v2, v4

    .line 85
    iget-wide v4, p0, LAn/stop/AccelerometerListener;->currentTime:J

    iput-wide v4, p0, LAn/stop/AccelerometerListener;->lastUpdate:J

    .line 87
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iput v1, p0, LAn/stop/AccelerometerListener;->current_x:F

    .line 88
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iput v1, p0, LAn/stop/AccelerometerListener;->current_y:F

    .line 89
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iput v1, p0, LAn/stop/AccelerometerListener;->current_z:F

    .line 91
    iget v1, p0, LAn/stop/AccelerometerListener;->current_x:F

    iget v4, p0, LAn/stop/AccelerometerListener;->current_y:F

    add-float/2addr v1, v4

    iget v4, p0, LAn/stop/AccelerometerListener;->current_z:F

    add-float/2addr v1, v4

    iget v4, p0, LAn/stop/AccelerometerListener;->last_x:F

    sub-float/2addr v1, v4

    iget v4, p0, LAn/stop/AccelerometerListener;->last_y:F

    sub-float/2addr v1, v4

    iget v4, p0, LAn/stop/AccelerometerListener;->last_z:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    long-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    iput v1, p0, LAn/stop/AccelerometerListener;->currenForce:F

    .line 93
    iget v1, p0, LAn/stop/AccelerometerListener;->currenForce:F

    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v1, v1, v2

    aput-boolean v6, v0, v10

    if-lez v1, :cond_3

    .line 94
    iget-object v1, p0, LAn/stop/AccelerometerListener;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->count()V

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 96
    :cond_3
    iget v1, p0, LAn/stop/AccelerometerListener;->current_x:F

    iput v1, p0, LAn/stop/AccelerometerListener;->last_x:F

    .line 97
    iget v1, p0, LAn/stop/AccelerometerListener;->current_y:F

    iput v1, p0, LAn/stop/AccelerometerListener;->last_y:F

    .line 98
    iget v1, p0, LAn/stop/AccelerometerListener;->current_z:F

    iput v1, p0, LAn/stop/AccelerometerListener;->last_z:F

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    .line 101
    :cond_4
    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 61
    iget-object v1, p0, LAn/stop/AccelerometerListener;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, LAn/stop/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, LAn/stop/AccelerometerListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    aput-boolean v3, v0, v3

    .line 64
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/AccelerometerListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AccelerometerListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 67
    iget-object v1, p0, LAn/stop/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
