.class public Lcom/maxfierke/sandwichroulette/SandwichDataModel;
.super Ljava/lang/Object;
.source "SandwichDataModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final $VRc:[[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/maxfierke/sandwichroulette/SandwichDataModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final NUM_INGREDIENTS:S

.field private banPepper:Z

.field private base:I

.field private bread:I

.field private caesarDressing:Z

.field private cheese:I

.field private chipotle:Z

.field private cucumber:Z

.field private grnPepper:Z

.field private hnyMustard:Z

.field private hummus:Z

.field private id:J

.field private italDressing:Z

.field private jalapeno:Z

.field private lettuce:Z

.field private mayo:Z

.field private mustard:Z

.field private oil:Z

.field private olive:Z

.field private onions:Z

.field private pickles:Z

.field private ranch:Z

.field private spinach:Z

.field private swtOnion:Z

.field private title:Ljava/lang/String;

.field private tomato:Z

.field private vinaigrette:Z

.field private vinegar:Z


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x3c

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

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

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichDataModel"

    const-wide v2, 0x51c3c16594931fd4L    # 7.675662059170631E85

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x3b

    aget-object v0, v0, v1

    .line 330
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;

    invoke-direct {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;-><init>()V

    sput-object v1, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v1, 0x16

    iput-short v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->NUM_INGREDIENTS:S

    .line 37
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-short v6, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->NUM_INGREDIENTS:S

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setId(J)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setTitle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBase(I)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBread(I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setCheese(I)V

    .line 45
    new-array v1, v6, [Z

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 47
    aget-boolean v2, v1, v5

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setPickles(Z)V

    .line 48
    aget-boolean v2, v1, v4

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOnions(Z)V

    .line 49
    const/4 v2, 0x2

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setLettuce(Z)V

    .line 50
    const/4 v2, 0x3

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setTomato(Z)V

    .line 51
    const/4 v2, 0x4

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setGrnPepper(Z)V

    .line 52
    const/4 v2, 0x5

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setSpinach(Z)V

    .line 53
    const/4 v2, 0x6

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setCucumber(Z)V

    .line 54
    const/4 v2, 0x7

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBanPepper(Z)V

    .line 55
    const/16 v2, 0x8

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOlive(Z)V

    .line 56
    const/16 v2, 0x9

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setJalapeno(Z)V

    .line 57
    const/16 v2, 0xa

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setChipotle(Z)V

    .line 58
    const/16 v2, 0xb

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setHnyMustard(Z)V

    .line 59
    const/16 v2, 0xc

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setSwtOnion(Z)V

    .line 60
    const/16 v2, 0xd

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setMayo(Z)V

    .line 61
    const/16 v2, 0xe

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setMustard(Z)V

    .line 62
    const/16 v2, 0xf

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOil(Z)V

    .line 63
    const/16 v2, 0x10

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setVinaigrette(Z)V

    .line 64
    const/16 v2, 0x11

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setVinegar(Z)V

    .line 65
    const/16 v2, 0x12

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setItalDressing(Z)V

    .line 66
    const/16 v2, 0x13

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setRanch(Z)V

    .line 67
    const/16 v2, 0x14

    aget-boolean v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setCaesarDressing(Z)V

    .line 68
    const/16 v2, 0x15

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setHummus(Z)V

    .line 69
    aput-boolean v4, v0, v5

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x39

    aget-object v0, v0, v1

    .line 294
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return v2
.end method

.method public getBase()I
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 87
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->base:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getBread()I
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 95
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->bread:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getCheese()I
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 103
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cheese:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()J
    .locals 5

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 71
    iget-wide v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->id:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 79
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->title:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isBanPepper()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v0, v0, v1

    .line 167
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->banPepper:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isCaesarDressing()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x34

    aget-object v0, v0, v1

    .line 271
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->caesarDressing:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isChipotle()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 191
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->chipotle:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isCucumber()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 159
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cucumber:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isGrnPepper()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 143
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->grnPepper:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isHnyMustard()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 199
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hnyMustard:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isHummus()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x36

    aget-object v0, v0, v1

    .line 279
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hummus:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isItalDressing()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x30

    aget-object v0, v0, v1

    .line 255
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->italDressing:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isJalapeno()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 183
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->jalapeno:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isLettuce()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 127
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->lettuce:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isMayo()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x26

    aget-object v0, v0, v1

    .line 215
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mayo:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isMustard()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x28

    aget-object v0, v0, v1

    .line 223
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mustard:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isOil()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2a

    aget-object v0, v0, v1

    .line 231
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->oil:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isOlive()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 175
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->olive:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isOnions()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 119
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->onions:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isPickles()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 111
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->pickles:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isRanch()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x32

    aget-object v0, v0, v1

    .line 263
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->ranch:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isSpinach()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 151
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->spinach:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isSwtOnion()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 207
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->swtOnion:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isTomato()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 135
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->tomato:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isVinaigrette()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2c

    aget-object v0, v0, v1

    .line 239
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinaigrette:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isVinegar()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    aget-object v0, v0, v1

    .line 247
    iget-boolean v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinegar:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setBanPepper(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 171
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->banPepper:Z

    .line 172
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setBase(I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 91
    iput p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->base:I

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setBread(I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 99
    iput p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->bread:I

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCaesarDressing(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x35

    aget-object v0, v0, v1

    .line 275
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->caesarDressing:Z

    .line 276
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCheese(I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 107
    iput p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cheese:I

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setChipotle(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 195
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->chipotle:Z

    .line 196
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCucumber(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 163
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cucumber:Z

    .line 164
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setGrnPepper(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 147
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->grnPepper:Z

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setHnyMustard(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 203
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hnyMustard:Z

    .line 204
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setHummus(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x37

    aget-object v0, v0, v1

    .line 283
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hummus:Z

    .line 284
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 75
    iput-wide p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->id:J

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setItalDressing(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x31

    aget-object v0, v0, v1

    .line 259
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->italDressing:Z

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setJalapeno(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 187
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->jalapeno:Z

    .line 188
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLettuce(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 131
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->lettuce:Z

    .line 132
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setMayo(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x27

    aget-object v0, v0, v1

    .line 219
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mayo:Z

    .line 220
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setMustard(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x29

    aget-object v0, v0, v1

    .line 227
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mustard:Z

    .line 228
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOil(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2b

    aget-object v0, v0, v1

    .line 235
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->oil:Z

    .line 236
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOlive(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 179
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->olive:Z

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOnions(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 123
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->onions:Z

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setPickles(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 115
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->pickles:Z

    .line 116
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRanch(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x33

    aget-object v0, v0, v1

    .line 267
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->ranch:Z

    .line 268
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSpinach(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v0, v0, v1

    .line 155
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->spinach:Z

    .line 156
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSwtOnion(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x25

    aget-object v0, v0, v1

    .line 211
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->swtOnion:Z

    .line 212
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 83
    iput-object p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->title:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTomato(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 139
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->tomato:Z

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setVinaigrette(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2d

    aget-object v0, v0, v1

    .line 243
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinaigrette:Z

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setVinegar(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    aget-object v0, v0, v1

    .line 251
    iput-boolean p1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinegar:Z

    .line 252
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x38

    aget-object v0, v0, v1

    .line 289
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->title:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x3a

    aget-object v0, v0, v1

    .line 299
    iget-wide v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->id:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->base:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->bread:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cheese:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/16 v1, 0x16

    new-array v1, v1, [Z

    iget-boolean v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->pickles:Z

    aput-boolean v2, v1, v4

    iget-boolean v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->onions:Z

    aput-boolean v2, v1, v5

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->lettuce:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->tomato:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->grnPepper:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->spinach:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->cucumber:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->banPepper:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->olive:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->jalapeno:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->chipotle:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hnyMustard:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->swtOnion:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mayo:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->mustard:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->oil:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x10

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinaigrette:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->vinegar:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->italDressing:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x13

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->ranch:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->caesarDressing:Z

    aput-boolean v3, v1, v2

    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->hummus:Z

    aput-boolean v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 328
    aput-boolean v5, v0, v4

    return-void
.end method
