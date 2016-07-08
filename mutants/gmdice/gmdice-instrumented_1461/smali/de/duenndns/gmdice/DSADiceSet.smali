.class public Lde/duenndns/gmdice/DSADiceSet;
.super Lde/duenndns/gmdice/DiceSet;
.source "DSADiceSet.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x7eae6e1f85aa7724L


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/DSADiceSet;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/DSADiceSet"

    const-wide v2, -0x5539ea759e27f6a3L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/DSADiceSet;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/DSADiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DSADiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 27
    invoke-direct {p0}, Lde/duenndns/gmdice/DiceSet;-><init>()V

    .line 28
    const/4 v1, 0x4

    iput v1, p0, Lde/duenndns/gmdice/DSADiceSet;->count:I

    .line 29
    const/16 v1, 0x14

    iput v1, p0, Lde/duenndns/gmdice/DSADiceSet;->sides:I

    .line 30
    iput v2, p0, Lde/duenndns/gmdice/DSADiceSet;->modifier:I

    .line 31
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/DSADiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DSADiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 49
    const v1, 0xfbf40

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/DSADiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DSADiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    aput-boolean v5, v2, v1

    move v0, v1

    :goto_0
    iget v1, p0, Lde/duenndns/gmdice/DSADiceSet;->count:I

    aput-boolean v5, v2, v5

    if-ge v0, v1, :cond_2

    .line 36
    iget v1, p0, Lde/duenndns/gmdice/DSADiceSet;->sides:I

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lde/duenndns/gmdice/DSADiceSet;->count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-ge v0, v1, :cond_1

    .line 39
    const-string v1, " \u00b7 "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/DSADiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DSADiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 45
    const-string v1, "3D20"

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
