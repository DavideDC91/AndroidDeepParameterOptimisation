.class Lde/duenndns/gmdice/GameMasterDice$3;
.super Lde/duenndns/gmdice/OnDiceChange;
.source "GameMasterDice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/duenndns/gmdice/GameMasterDice;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x7df0ce7ce4c2544bL


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/GameMasterDice;

.field final synthetic val$btn:Landroid/widget/Button;


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

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice$3;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/GameMasterDice$3"

    const-wide v2, -0x2c8e654a93b4ccedL    # -9.180327723518167E93

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$3;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lde/duenndns/gmdice/GameMasterDice;Landroid/widget/Button;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 250
    iput-object p1, p0, Lde/duenndns/gmdice/GameMasterDice$3;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iput-object p2, p0, Lde/duenndns/gmdice/GameMasterDice$3;->val$btn:Landroid/widget/Button;

    invoke-direct {p0}, Lde/duenndns/gmdice/OnDiceChange;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onDiceChange(Lde/duenndns/gmdice/DiceSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 252
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {p1}, Lde/duenndns/gmdice/DiceSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    aput-boolean v5, v2, v1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice$3;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v1, v1, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    array-length v1, v1

    aput-boolean v5, v2, v5

    if-ge v0, v1, :cond_2

    .line 255
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice$3;->val$btn:Landroid/widget/Button;

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice$3;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v3, v3, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-ne v1, v3, :cond_1

    .line 256
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice$3;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v1, v1, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    aput-object p1, v1, v0

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    return-void
.end method
