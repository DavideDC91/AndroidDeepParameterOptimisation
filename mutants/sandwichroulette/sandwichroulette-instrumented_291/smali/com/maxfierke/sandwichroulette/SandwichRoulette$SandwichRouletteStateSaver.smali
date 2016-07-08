.class Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;
.super Ljava/lang/Object;
.source "SandwichRoulette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxfierke/sandwichroulette/SandwichRoulette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SandwichRouletteStateSaver"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x4745770970a70ee8L


# instance fields
.field public showSplashScreen:Z

.field final synthetic this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver"

    const-wide v2, 0x414d0d1151bfe5f2L    # 3807778.638668769

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 475
    iput-object p1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-boolean v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->showSplashScreen:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichRoulette$1;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRc:[[Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 475
    invoke-direct {p0, p1}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method
