.class public Lde/duenndns/gmdice/StandardDiceSet;
.super Lde/duenndns/gmdice/DiceSet;
.source "StandardDiceSet.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x65ee848d9e524f26L


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/StandardDiceSet;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "de/duenndns/gmdice/StandardDiceSet"

    const-wide v2, -0x2b66c401451ca5b3L    # -3.449616413953696E99

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/StandardDiceSet;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/StandardDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/StandardDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 27
    invoke-direct {p0}, Lde/duenndns/gmdice/DiceSet;-><init>()V

    .line 28
    iput p1, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    .line 29
    iput p2, p0, Lde/duenndns/gmdice/StandardDiceSet;->sides:I

    .line 30
    iput p3, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    .line 31
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lde/duenndns/gmdice/StandardDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/StandardDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    aput-boolean v7, v3, v1

    move v0, v1

    move v2, v1

    :goto_0
    iget v5, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    aput-boolean v7, v3, v7

    if-ge v0, v5, :cond_2

    .line 38
    iget v5, p0, Lde/duenndns/gmdice/StandardDiceSet;->sides:I

    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    add-int/2addr v2, v5

    .line 41
    iget v5, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aput-boolean v7, v3, v6

    if-ge v0, v5, :cond_1

    .line 42
    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aput-boolean v7, v3, v5

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x4

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 44
    :cond_2
    iget v0, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    const/4 v5, 0x5

    aput-boolean v7, v3, v5

    if-eqz v0, :cond_3

    .line 45
    const-string v0, "%+d"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v0, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    add-int/2addr v2, v0

    const/4 v0, 0x6

    aput-boolean v7, v3, v0

    .line 48
    :cond_3
    iget v0, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    const/4 v1, 0x7

    aput-boolean v7, v3, v1

    if-gt v0, v7, :cond_4

    iget v0, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    const/16 v1, 0x8

    aput-boolean v7, v3, v1

    if-eqz v0, :cond_5

    .line 49
    :cond_4
    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    aput-boolean v7, v3, v0

    .line 52
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    aput-boolean v7, v3, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/StandardDiceSet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/StandardDiceSet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 56
    iget v0, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    aput-boolean v4, v1, v6

    if-nez v0, :cond_1

    .line 57
    const-string v0, "%dd%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lde/duenndns/gmdice/StandardDiceSet;->sides:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v4, v1, v4

    .line 59
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%dd%d%+d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lde/duenndns/gmdice/StandardDiceSet;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lde/duenndns/gmdice/StandardDiceSet;->sides:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lde/duenndns/gmdice/StandardDiceSet;->modifier:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v4, v1, v5

    goto :goto_0
.end method
