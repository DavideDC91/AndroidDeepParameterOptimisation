.class public Lcom/github/wdkapps/fillup/Vehicle;
.super Ljava/lang/Object;
.source "Vehicle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final $VRc:[[Z = null

.field public static final MAX_NAME_LENGTH:I = 0x14

.field public static final MIN_NAME_LENGTH:I = 0x1

.field private static final serialVersionUID:J = 0xb5191f970e51dd0L


# instance fields
.field private id:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private tanksize:Ljava/lang/Float;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

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

    const/4 v1, 0x5

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/Vehicle"

    const-wide v2, 0x71432758c7ea82c3L    # 3.897617725729417E237

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->id:Ljava/lang/Integer;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->name:Ljava/lang/String;

    .line 56
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/Units;->getAverageTankSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    .line 58
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/Vehicle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v1, p1, Lcom/github/wdkapps/fillup/Vehicle;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->id:Ljava/lang/Integer;

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/github/wdkapps/fillup/Vehicle;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->name:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    .line 69
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/Integer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 77
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->id:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 95
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTankSize()Ljava/lang/Float;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 129
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTankSizeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 147
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v0, v5

    return-object v1
.end method

.method public setID(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 86
    iput-object p1, p0, Lcom/github/wdkapps/fillup/Vehicle;->id:Ljava/lang/Integer;

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 107
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    if-nez p1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    throw v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-lt v1, v4, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    if-le v1, v2, :cond_3

    .line 113
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid name length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    throw v1

    .line 116
    :cond_3
    const-string v1, "[a-zA-z0-9][a-zA-z0-9- ]*"

    .line 117
    const-string v1, "[a-zA-z0-9][a-zA-z0-9- ]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    aput-boolean v4, v0, v5

    if-nez v1, :cond_4

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invaid format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    throw v1

    .line 120
    :cond_4
    iput-object p1, p0, Lcom/github/wdkapps/fillup/Vehicle;->name:Ljava/lang/String;

    .line 121
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void
.end method

.method public setTankSize(Ljava/lang/Float;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 138
    iput-object p1, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTankSize(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 158
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    if-nez p1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "null string"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    throw v1

    .line 161
    :cond_1
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 163
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-ltz v2, :cond_2

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    if-lez v2, :cond_3

    .line 164
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "out of range"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    throw v1

    .line 166
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Vehicle;->tanksize:Ljava/lang/Float;

    .line 167
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Vehicle;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Vehicle;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 176
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
