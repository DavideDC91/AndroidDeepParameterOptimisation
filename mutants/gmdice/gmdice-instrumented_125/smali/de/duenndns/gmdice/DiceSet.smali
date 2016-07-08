.class public abstract Lde/duenndns/gmdice/DiceSet;
.super Ljava/lang/Object;
.source "DiceSet.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final DSA:Ljava/lang/String; = "3D20"

.field public static final FUDGE:Ljava/lang/String; = "4dF"

.field private static final serialVersionUID:J = 0x525a65bba1625f75L


# instance fields
.field count:I

.field modifier:I

.field sides:I


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xf

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/DiceSet"

    const-wide v2, 0x143680437811510L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x8

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

    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public static getDiceSet()Lde/duenndns/gmdice/DiceSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 47
    new-instance v1, Lde/duenndns/gmdice/StandardDiceSet;

    const/4 v2, 0x6

    invoke-direct {v1, v4, v2, v3}, Lde/duenndns/gmdice/StandardDiceSet;-><init>(III)V

    aput-boolean v4, v0, v3

    return-object v1
.end method

.method public static getDiceSet(III)Lde/duenndns/gmdice/DiceSet;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 43
    new-instance v1, Lde/duenndns/gmdice/StandardDiceSet;

    invoke-direct {v1, p0, p1, p2}, Lde/duenndns/gmdice/StandardDiceSet;-><init>(III)V

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v3

    .line 54
    const-string v0, "3D20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v8, v2, v1

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lde/duenndns/gmdice/DSADiceSet;

    invoke-direct {v0}, Lde/duenndns/gmdice/DSADiceSet;-><init>()V

    aput-boolean v8, v2, v8

    .line 77
    :goto_0
    return-object v0

    .line 56
    :cond_1
    const-string v0, "4dF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v8, v2, v9

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lde/duenndns/gmdice/FUDGEDiceSet;

    invoke-direct {v0}, Lde/duenndns/gmdice/FUDGEDiceSet;-><init>()V

    aput-boolean v8, v2, v3

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    const-string v0, "[d+-]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 63
    array-length v5, v0

    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-le v5, v9, :cond_4

    .line 64
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    if-ltz v1, :cond_3

    .line 66
    neg-int v0, v0

    const/4 v1, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    .line 70
    :cond_3
    :goto_1
    const/16 v1, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    if-ne v3, v8, :cond_5

    const/16 v1, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    if-ne v4, v9, :cond_5

    const/16 v1, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    if-nez v0, :cond_5

    .line 71
    new-instance v0, Lde/duenndns/gmdice/Coin;

    invoke-direct {v0}, Lde/duenndns/gmdice/Coin;-><init>()V

    const/16 v1, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->getDiceSet()Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    const/16 v1, 0xd

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 68
    :cond_4
    const/4 v0, 0x7

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v2, v0

    move v0, v1

    goto :goto_1

    .line 73
    :cond_5
    invoke-static {v3, v4, v0}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(III)Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->getDiceSet()Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    const/16 v1, 0xe

    aput-boolean v8, v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v6

    .line 91
    aput-boolean v1, v3, v2

    if-ne p0, p1, :cond_1

    .line 92
    aput-boolean v1, v3, v1

    move v2, v1

    .line 98
    :goto_0
    return v2

    .line 93
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    if-nez p1, :cond_2

    .line 94
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v1, v3, v5

    if-eq v0, v4, :cond_3

    .line 96
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    goto :goto_0

    .line 97
    :cond_3
    check-cast p1, Lde/duenndns/gmdice/DiceSet;

    .line 98
    iget v0, p0, Lde/duenndns/gmdice/DiceSet;->count:I

    iget v4, p1, Lde/duenndns/gmdice/DiceSet;->count:I

    const/4 v5, 0x6

    aput-boolean v1, v3, v5

    if-ne v0, v4, :cond_4

    iget v0, p0, Lde/duenndns/gmdice/DiceSet;->sides:I

    iget v4, p1, Lde/duenndns/gmdice/DiceSet;->sides:I

    aput-boolean v1, v3, v6

    if-ne v0, v4, :cond_4

    iget v0, p0, Lde/duenndns/gmdice/DiceSet;->modifier:I

    iget v4, p1, Lde/duenndns/gmdice/DiceSet;->modifier:I

    const/16 v5, 0x8

    aput-boolean v1, v3, v5

    if-ne v0, v4, :cond_4

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    const/16 v2, 0xb

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/DiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 88
    iget v1, p0, Lde/duenndns/gmdice/DiceSet;->count:I

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lde/duenndns/gmdice/DiceSet;->sides:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Lde/duenndns/gmdice/DiceSet;->modifier:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public abstract roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
