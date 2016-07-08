.class public Lde/duenndns/gmdice/DiceCache;
.super Ljava/lang/Object;
.source "DiceCache.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x595cc64557879a0fL


# instance fields
.field count:I

.field dscache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/duenndns/gmdice/DiceSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    filled-new-array {v5}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/DiceCache"

    const-wide v2, -0x40d1d6d3cdc6f87dL    # -2.301088762682279E-4

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lde/duenndns/gmdice/DiceCache;->count:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    .line 33
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    const-string v2, "1d2"

    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    const-string v2, "1d6"

    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    const-string v2, "1d6+1"

    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    const-string v2, "1d10"

    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    const-string v2, "1d20"

    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method


# virtual methods
.method public add(Lde/duenndns/gmdice/DSADiceSet;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 45
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public add(Lde/duenndns/gmdice/DiceSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 50
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    aput-boolean v3, v0, v2

    .line 52
    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lde/duenndns/gmdice/DiceCache;->count:I

    aput-boolean v3, v0, v3

    if-le v1, v2, :cond_1

    .line 53
    iget-object v1, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    iget v2, p0, Lde/duenndns/gmdice/DiceCache;->count:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 54
    :cond_1
    aput-boolean v3, v0, v4

    return-void
.end method

.method public add(Lde/duenndns/gmdice/FUDGEDiceSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 41
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public loadFromString(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v8

    .line 77
    aput-boolean v7, v2, v1

    if-nez p1, :cond_1

    aput-boolean v7, v2, v7

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    array-length v4, v3

    const/4 v0, 0x2

    aput-boolean v7, v2, v0

    move v0, v1

    :goto_1
    const/4 v1, 0x3

    aput-boolean v7, v2, v1

    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    aput-boolean v7, v2, v6

    if-lez v5, :cond_2

    .line 83
    iget-object v5, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-static {v1}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    aput-boolean v7, v2, v1

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    aput-boolean v7, v2, v8

    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x7

    aput-boolean v7, v2, v0

    goto :goto_0
.end method

.method public populate(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lde/duenndns/gmdice/DiceSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 57
    iget-object v0, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v5, v1, v5

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/DiceSet;

    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    if-nez v3, :cond_1

    .line 59
    invoke-virtual {v0}, Lde/duenndns/gmdice/DiceSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    .line 60
    :cond_1
    aput-boolean v5, v1, v6

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "3D20"

    invoke-static {v0}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    if-nez v0, :cond_3

    .line 62
    const-string v0, "3D20"

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 63
    :cond_3
    const-string v0, "4dF"

    invoke-static {v0}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    if-nez v0, :cond_4

    .line 64
    const-string v0, "4dF"

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    .line 65
    :cond_4
    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/DiceCache;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/DiceCache;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v0, p0, Lde/duenndns/gmdice/DiceCache;->dscache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v4, v1, v4

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/DiceSet;

    .line 70
    invoke-virtual {v0}, Lde/duenndns/gmdice/DiceSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-object v0
.end method
