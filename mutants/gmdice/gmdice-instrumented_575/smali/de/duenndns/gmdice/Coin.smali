.class public Lde/duenndns/gmdice/Coin;
.super Lde/duenndns/gmdice/DiceSet;
.source "Coin.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x77ac99a7a04f16d2L


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/Coin;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/Coin"

    const-wide v2, 0x4c5656c1ccf3603cL    # 5.608940578054238E59

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/Coin;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/Coin;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/Coin;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 26
    invoke-direct {p0}, Lde/duenndns/gmdice/DiceSet;-><init>()V

    .line 27
    iput v3, p0, Lde/duenndns/gmdice/Coin;->count:I

    .line 28
    const/4 v1, 0x2

    iput v1, p0, Lde/duenndns/gmdice/Coin;->sides:I

    .line 29
    iput v2, p0, Lde/duenndns/gmdice/Coin;->modifier:I

    .line 30
    aput-boolean v3, v0, v2

    return-void
.end method


# virtual methods
.method public roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/Coin;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/Coin;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 37
    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-ne v0, v3, :cond_1

    const v0, 0x7f04000c

    aput-boolean v3, v1, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0

    :cond_1
    const v0, 0x7f04000b

    aput-boolean v3, v1, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/Coin;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/Coin;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 33
    const-string v1, "1d2"

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method
