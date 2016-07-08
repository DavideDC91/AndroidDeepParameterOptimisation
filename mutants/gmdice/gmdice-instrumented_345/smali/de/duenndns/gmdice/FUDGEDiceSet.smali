.class public Lde/duenndns/gmdice/FUDGEDiceSet;
.super Lde/duenndns/gmdice/DiceSet;
.source "FUDGEDiceSet.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x43c4aa74ec342ec5L


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

    sput-object v0, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

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

    const-string v1, "de/duenndns/gmdice/FUDGEDiceSet"

    const-wide v2, 0x42f706b4956aeb55L    # 4.050810709398293E14

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRi()[[Z

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

    sget-object v0, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 27
    invoke-direct {p0}, Lde/duenndns/gmdice/DiceSet;-><init>()V

    .line 28
    const/4 v1, 0x4

    iput v1, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->count:I

    .line 29
    const/4 v1, 0x3

    iput v1, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->sides:I

    .line 30
    iput v2, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->modifier:I

    .line 31
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 64
    const v1, 0x9933ec

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    aput-boolean v6, v2, v1

    move v0, v1

    :goto_0
    iget v4, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->count:I

    aput-boolean v6, v2, v6

    if-ge v0, v4, :cond_4

    .line 38
    iget v4, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->sides:I

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 39
    const/4 v5, 0x2

    aput-boolean v6, v2, v5

    if-ne v4, v6, :cond_2

    .line 40
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v1, v1, -0x1

    aput-boolean v6, v2, v7

    .line 48
    :goto_1
    iget v4, p0, Lde/duenndns/gmdice/FUDGEDiceSet;->count:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x7

    aput-boolean v6, v2, v5

    if-ge v0, v4, :cond_1

    .line 49
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 42
    :cond_2
    const/4 v5, 0x4

    aput-boolean v6, v2, v5

    if-ne v4, v7, :cond_3

    .line 43
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 46
    :cond_3
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 51
    :cond_4
    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    if-lez v1, :cond_5

    .line 52
    const-string v0, " = +"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    aput-boolean v6, v2, v0

    .line 55
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    return-object v0

    .line 54
    :cond_5
    const-string v0, " = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    aput-boolean v6, v2, v0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/FUDGEDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 60
    const-string v1, "4dF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
