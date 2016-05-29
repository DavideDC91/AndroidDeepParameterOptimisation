.class public Lcom/github/wdkapps/fillup/GasGauge;
.super Landroid/view/View;
.source "GasGauge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final TAG:Ljava/lang/String;

.field private static final emptyPosition:F = 0.0f

.field private static final fullPosition:F = 1.0f

.field private static final halfPosition:F = 0.5f


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private handAcceleration:F

.field private handPaint:Landroid/graphics/Paint;

.field private handPath:Landroid/graphics/Path;

.field private handPosition:F

.field private handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

.field private handTarget:F

.field private handVelocity:F

.field private interactive:Z

.field private lastHandMoveTime:J


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xc

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x1b

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

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

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasGauge"

    const-wide v2, -0x30ce2e6570f60348L    # -3.14830319832647E73

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    .line 63
    const-class v1, Lcom/github/wdkapps/fillup/GasGauge;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    .line 79
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 80
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 81
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 82
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    .line 83
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    .line 86
    iput-boolean v5, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    .line 96
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->init()V

    .line 97
    aput-boolean v5, v0, v4

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    .line 79
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 80
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 81
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 82
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    .line 83
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    .line 86
    iput-boolean v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/github/wdkapps/fillup/GasGauge;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    .line 79
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 80
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 81
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 82
    iput v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    .line 83
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    .line 86
    iput-boolean v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/github/wdkapps/fillup/GasGauge;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method private chooseDimension(II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 293
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    aput-boolean v3, v0, v3

    if-ne p1, v1, :cond_2

    .line 294
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 296
    :goto_0
    return p2

    :cond_2
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->getPreferredSize()I

    move-result p2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private disableHardwareAcceleration()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".disableHardwareAcceleration()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 228
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "Hardware Acceleration has been disabled for view."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    aput-boolean v7, v0, v8

    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hardware Acceleration not supported on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v7, v0, v7

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".drawBackground()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-nez v2, :cond_1

    .line 347
    const-string v2, "Background not created"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v4, v0, v4

    .line 351
    :goto_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private drawHand(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 332
    iget v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/GasGauge;->positionToAngle(F)F

    move-result v1

    .line 333
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 334
    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f266666    # 0.65f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 335
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 337
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method private getPreferredSize()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 307
    const/16 v1, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private handNeedsToMove()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x13

    aget-object v3, v0, v3

    .line 410
    iget v0, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    iget v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v4

    aput-boolean v1, v3, v2

    if-lez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 204
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->disableHardwareAcceleration()V

    .line 206
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->initDrawingTools()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasGauge;->setHandTarget(F)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasGauge;->setHandPosition(F)V

    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 180
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->init()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/github/wdkapps/fillup/R$styleable;->GasGauge:[I

    invoke-virtual {v0, p2, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 189
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasGauge;->setHandTarget(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    aput-boolean v5, v1, v4

    .line 195
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    aput-boolean v5, v1, v5

    throw v0
.end method

.method private initDrawingTools()V
    .locals 8

    .prologue
    const v7, 0x3f266666    # 0.65f

    const v6, 0x3f2147ae    # 0.63f

    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3ea8f5c2    # 0.32999998f

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 241
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPaint:Landroid/graphics/Paint;

    .line 242
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 243
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPaint:Landroid/graphics/Paint;

    const v2, -0x6ddfee

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    .line 248
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    const v2, 0x3ef0a3d7    # 0.47f

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    const v2, 0x3ef5c28f    # 0.48f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    const v2, 0x3f051eb8    # 0.52f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    const v2, 0x3f07ae14    # 0.53f

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->backgroundPaint:Landroid/graphics/Paint;

    .line 256
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 257
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method

.method private moveHand()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 421
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->handNeedsToMove()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v6, v0, v2

    if-nez v1, :cond_1

    aput-boolean v6, v0, v6

    .line 450
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    cmp-long v1, v2, v8

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_4

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 427
    iget-wide v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 429
    iget v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 430
    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    cmpg-float v3, v3, v4

    const/4 v4, 0x3

    aput-boolean v6, v0, v4

    if-gez v3, :cond_2

    .line 431
    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    iget v5, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    const/4 v3, 0x4

    aput-boolean v6, v0, v3

    .line 435
    :goto_1
    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    iget v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 436
    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    iget v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 437
    iget v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    if-gez v1, :cond_3

    .line 438
    iget v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 439
    iput v7, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 440
    iput v7, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    .line 441
    iput-wide v8, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 445
    :goto_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->invalidate()V

    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    .line 450
    :goto_3
    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 433
    :cond_2
    iput v7, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    const/4 v3, 0x5

    aput-boolean v6, v0, v3

    goto :goto_1

    .line 443
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    goto :goto_2

    .line 447
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    .line 448
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->moveHand()V

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    goto :goto_3
.end method

.method private positionToAngle(F)F
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 322
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, p1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private regenerateBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 393
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    aput-boolean v5, v0, v6

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    aput-boolean v5, v0, v5

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 398
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 399
    float-to-int v3, v1

    float-to-int v4, v1

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    .line 400
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->background:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 401
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 402
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public getHandPosition()F
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v0, v0, v1

    .line 492
    iget v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 360
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/GasGauge;->drawBackground(Landroid/graphics/Canvas;)V

    .line 362
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 363
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 364
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 365
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/GasGauge;->drawHand(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->handNeedsToMove()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->moveHand()V

    aput-boolean v3, v0, v3

    .line 371
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 275
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 277
    invoke-direct {p0, v1, v2}, Lcom/github/wdkapps/fillup/GasGauge;->chooseDimension(II)I

    move-result v1

    .line 278
    invoke-direct {p0, v3, v4}, Lcom/github/wdkapps/fillup/GasGauge;->chooseDimension(II)I

    move-result v2

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 282
    invoke-virtual {p0, v1, v1}, Lcom/github/wdkapps/fillup/GasGauge;->setMeasuredDimension(II)V

    .line 283
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 140
    check-cast p1, Landroid/os/Bundle;

    .line 141
    const-string v1, "superState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 142
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 144
    const-string v1, "handPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    .line 145
    const-string v1, "handTarget"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 146
    const-string v1, "handVelocity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    .line 147
    const-string v1, "handAcceleration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    .line 148
    const-string v1, "lastHandMoveTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    .line 149
    const-string v1, "interactive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 159
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v3, "superState"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    const-string v1, "handPosition"

    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 164
    const-string v1, "handTarget"

    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 165
    const-string v1, "handVelocity"

    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handVelocity:F

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 166
    const-string v1, "handAcceleration"

    iget v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->handAcceleration:F

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 167
    const-string v1, "lastHandMoveTime"

    iget-wide v4, p0, Lcom/github/wdkapps/fillup/GasGauge;->lastHandMoveTime:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    const-string v1, "interactive"

    iget-boolean v3, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onSizeChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasGauge;->regenerateBackground()V

    .line 383
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v5, 0x19

    aget-object v5, v0, v5

    .line 513
    iget-boolean v0, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    aput-boolean v4, v5, v3

    if-nez v0, :cond_1

    aput-boolean v4, v5, v4

    move v0, v3

    .line 548
    :goto_0
    return v0

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/github/wdkapps/fillup/GasGauge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".onTouchEvent()"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    aput-boolean v4, v5, v7

    packed-switch v0, :pswitch_data_0

    .line 548
    const/16 v0, 0xb

    aput-boolean v4, v5, v0

    move v0, v3

    goto :goto_0

    .line 526
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 530
    cmpl-float v7, v0, v1

    const/4 v8, 0x3

    aput-boolean v4, v5, v8

    if-lez v7, :cond_2

    const/4 v0, 0x4

    aput-boolean v4, v5, v0

    move v0, v1

    .line 531
    :cond_2
    cmpg-float v1, v0, v2

    const/4 v7, 0x5

    aput-boolean v4, v5, v7

    if-gez v1, :cond_3

    const/4 v0, 0x6

    aput-boolean v4, v5, v0

    move v0, v2

    .line 534
    :cond_3
    sub-float/2addr v0, v2

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    .line 538
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasGauge;->setHandPosition(F)V

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    aput-boolean v4, v5, v1

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    const/16 v1, 0x8

    aput-boolean v4, v5, v1

    if-eqz v0, :cond_4

    .line 543
    const-string v0, "handPosition=%f"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    iget v1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    invoke-interface {v0, p0, v1}, Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;->onHandPositionChanged(Lcom/github/wdkapps/fillup/GasGauge;F)V

    const/16 v0, 0x9

    aput-boolean v4, v5, v0

    .line 546
    :cond_4
    const/16 v0, 0xa

    aput-boolean v4, v5, v0

    move v0, v4

    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHandPosition(F)V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x16

    aget-object v0, v0, v3

    .line 477
    cmpg-float v3, p1, v1

    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    if-gez v3, :cond_2

    .line 478
    aput-boolean v5, v0, v5

    move p1, v1

    .line 482
    :cond_1
    :goto_0
    iput p1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPosition:F

    iput p1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 483
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->invalidate()V

    .line 484
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void

    .line 479
    :cond_2
    cmpl-float v1, p1, v2

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    if-lez v1, :cond_1

    .line 480
    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    move p1, v2

    goto :goto_0
.end method

.method public setHandTarget(F)V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x15

    aget-object v0, v0, v3

    .line 460
    cmpg-float v3, p1, v1

    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    if-gez v3, :cond_2

    .line 461
    aput-boolean v5, v0, v5

    move p1, v1

    .line 465
    :cond_1
    :goto_0
    iput p1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handTarget:F

    .line 466
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasGauge;->invalidate()V

    .line 467
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void

    .line 462
    :cond_2
    cmpl-float v1, p1, v2

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    if-lez v1, :cond_1

    .line 463
    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    move p1, v2

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 502
    iput-boolean p1, p0, Lcom/github/wdkapps/fillup/GasGauge;->interactive:Z

    .line 503
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOnHandPositionChangedListener(Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasGauge;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasGauge;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 130
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasGauge;->handPositionChangedListener:Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;

    .line 131
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
