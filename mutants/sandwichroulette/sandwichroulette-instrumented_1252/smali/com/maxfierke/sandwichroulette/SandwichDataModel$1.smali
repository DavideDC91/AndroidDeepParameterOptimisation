.class final Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;
.super Ljava/lang/Object;
.source "SandwichDataModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxfierke/sandwichroulette/SandwichDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/maxfierke/sandwichroulette/SandwichDataModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x71c0cffb19c7a579L


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichDataModel$1"

    const-wide v2, 0xb96d90b8f6685bcL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 333
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    invoke-direct {v1, p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;-><init>(Landroid/os/Parcel;)V

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/maxfierke/sandwichroulette/SandwichDataModel;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 338
    new-array v1, p1, [Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel$1;->newArray(I)[Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v0

    return-object v0
.end method
