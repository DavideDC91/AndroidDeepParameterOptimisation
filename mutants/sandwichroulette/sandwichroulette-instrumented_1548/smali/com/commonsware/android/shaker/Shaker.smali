.class public Lcom/commonsware/android/shaker/Shaker;
.super Ljava/lang/Object;
.source "Shaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/shaker/Shaker$Callback;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0xd5c833f35211cb2L


# instance fields
.field private cb:Lcom/commonsware/android/shaker/Shaker$Callback;

.field private gap:J

.field private lastShakeTimestamp:J

.field private listener:Landroid/hardware/SensorEventListener;

.field private mgr:Landroid/hardware/SensorManager;

.field private threshold:D


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v0, 0x8

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

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

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/commonsware/android/shaker/Shaker"

    const-wide v2, -0x7dc45bff001a2f91L    # -6.603777008633153E-298

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;DJLcom/commonsware/android/shaker/Shaker$Callback;)V
    .locals 6

    .prologue
    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/android/shaker/Shaker;->mgr:Landroid/hardware/SensorManager;

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    .line 27
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->threshold:D

    .line 28
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->gap:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    .line 84
    new-instance v0, Lcom/commonsware/android/shaker/Shaker$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/shaker/Shaker$1;-><init>(Lcom/commonsware/android/shaker/Shaker;)V

    iput-object v0, p0, Lcom/commonsware/android/shaker/Shaker;->listener:Landroid/hardware/SensorEventListener;

    .line 33
    mul-double v2, p2, p2

    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->threshold:D

    .line 34
    iget-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->threshold:D

    const-wide v4, 0x40239d0140000000L    # 9.806650161743164

    mul-double/2addr v2, v4

    const-wide v4, 0x40239d0140000000L    # 9.806650161743164

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->threshold:D

    .line 37
    iput-wide p4, p0, Lcom/commonsware/android/shaker/Shaker;->gap:J

    .line 38
    iput-object p6, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    .line 40
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/commonsware/android/shaker/Shaker;->mgr:Landroid/hardware/SensorManager;

    .line 41
    iget-object v0, p0, Lcom/commonsware/android/shaker/Shaker;->mgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/commonsware/android/shaker/Shaker;->listener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/commonsware/android/shaker/Shaker;->mgr:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    .line 42
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x2

    .line 41
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 44
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method static synthetic access$000(Lcom/commonsware/android/shaker/Shaker;)D
    .locals 5

    .prologue
    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 24
    iget-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->threshold:D

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$100(Lcom/commonsware/android/shaker/Shaker;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 24
    invoke-direct {p0}, Lcom/commonsware/android/shaker/Shaker;->isShaking()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/commonsware/android/shaker/Shaker;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 24
    invoke-direct {p0}, Lcom/commonsware/android/shaker/Shaker;->isNotShaking()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private isNotShaking()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v7

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 68
    iget-wide v4, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    cmp-long v1, v4, v8

    const/4 v4, 0x0

    aput-boolean v6, v0, v4

    if-lez v1, :cond_1

    .line 69
    iget-wide v4, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/commonsware/android/shaker/Shaker;->gap:J

    cmp-long v1, v2, v4

    aput-boolean v6, v0, v6

    if-lez v1, :cond_1

    .line 70
    iput-wide v8, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    .line 72
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    invoke-interface {v1}, Lcom/commonsware/android/shaker/Shaker$Callback;->shakingStopped()V

    aput-boolean v6, v0, v7

    .line 77
    :cond_1
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void
.end method

.method private isShaking()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v9

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 53
    iget-wide v4, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const/4 v4, 0x0

    aput-boolean v8, v0, v4

    if-nez v1, :cond_2

    .line 54
    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    .line 56
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    aput-boolean v8, v0, v8

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker;->cb:Lcom/commonsware/android/shaker/Shaker$Callback;

    invoke-interface {v1}, Lcom/commonsware/android/shaker/Shaker$Callback;->shakingStarted()V

    aput-boolean v8, v0, v9

    .line 63
    :cond_1
    :goto_0
    const/4 v1, 0x4

    aput-boolean v8, v0, v1

    return-void

    .line 61
    :cond_2
    iput-wide v2, p0, Lcom/commonsware/android/shaker/Shaker;->lastShakeTimestamp:J

    const/4 v1, 0x3

    aput-boolean v8, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/commonsware/android/shaker/Shaker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 47
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker;->mgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/commonsware/android/shaker/Shaker;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 48
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method
