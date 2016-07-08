.class Lde/duenndns/gmdice/GameMasterDice$2;
.super Lde/duenndns/gmdice/OnDiceChange;
.source "GameMasterDice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/duenndns/gmdice/GameMasterDice;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3617b6e48d3c3e3fL


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/GameMasterDice;


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

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/GameMasterDice$2"

    const-wide v2, 0x3bf444bad1da9829L    # 6.867226664107708E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lde/duenndns/gmdice/GameMasterDice;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 219
    iput-object p1, p0, Lde/duenndns/gmdice/GameMasterDice$2;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    invoke-direct {p0}, Lde/duenndns/gmdice/OnDiceChange;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onDiceChange(Lde/duenndns/gmdice/DiceSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 221
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice$2;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice$2;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v2, v2, Lde/duenndns/gmdice/GameMasterDice;->button_colors:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, p1, v2}, Lde/duenndns/gmdice/GameMasterDice;->roll(Lde/duenndns/gmdice/DiceSet;I)V

    .line 222
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
