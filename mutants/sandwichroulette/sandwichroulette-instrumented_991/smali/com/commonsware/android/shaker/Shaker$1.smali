.class Lcom/commonsware/android/shaker/Shaker$1;
.super Ljava/lang/Object;
.source "Shaker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/shaker/Shaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4845d8b71f1e47cdL


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/shaker/Shaker;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/commonsware/android/shaker/Shaker$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/commonsware/android/shaker/Shaker$1"

    const-wide v2, -0x55166e98e27a4094L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/commonsware/android/shaker/Shaker;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/commonsware/android/shaker/Shaker$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 84
    iput-object p1, p0, Lcom/commonsware/android/shaker/Shaker$1;->this$0:Lcom/commonsware/android/shaker/Shaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/commonsware/android/shaker/Shaker$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/commonsware/android/shaker/Shaker$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/commonsware/android/shaker/Shaker$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 86
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    aput-boolean v6, v0, v3

    if-ne v1, v6, :cond_1

    .line 87
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    float-to-double v2, v1

    .line 89
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    .line 90
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    .line 92
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker$1;->this$0:Lcom/commonsware/android/shaker/Shaker;

    invoke-static {v1}, Lcom/commonsware/android/shaker/Shaker;->access$000(Lcom/commonsware/android/shaker/Shaker;)D

    move-result-wide v4

    cmpg-double v1, v4, v2

    aput-boolean v6, v0, v6

    if-gez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker$1;->this$0:Lcom/commonsware/android/shaker/Shaker;

    invoke-static {v1}, Lcom/commonsware/android/shaker/Shaker;->access$100(Lcom/commonsware/android/shaker/Shaker;)V

    aput-boolean v6, v0, v7

    .line 99
    :cond_1
    :goto_0
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/commonsware/android/shaker/Shaker$1;->this$0:Lcom/commonsware/android/shaker/Shaker;

    invoke-static {v1}, Lcom/commonsware/android/shaker/Shaker;->access$200(Lcom/commonsware/android/shaker/Shaker;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
