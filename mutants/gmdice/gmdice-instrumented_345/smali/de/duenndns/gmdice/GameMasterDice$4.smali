.class Lde/duenndns/gmdice/GameMasterDice$4;
.super Ljava/lang/Object;
.source "GameMasterDice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/duenndns/gmdice/GameMasterDice;->configureDice(Lde/duenndns/gmdice/DiceSet;Lde/duenndns/gmdice/OnDiceChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x45441d36b4826192L


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/GameMasterDice;

.field final synthetic val$np_c:Lde/duenndns/gmdice/NumberPicker;

.field final synthetic val$np_m:Lde/duenndns/gmdice/NumberPicker;

.field final synthetic val$onOk:Lde/duenndns/gmdice/OnDiceChange;

.field final synthetic val$sp_s:Landroid/widget/Spinner;


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

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice$4;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/GameMasterDice$4"

    const-wide v2, 0x537ae96fd714219bL    # 1.4034030772261402E94

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$4;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lde/duenndns/gmdice/GameMasterDice;Lde/duenndns/gmdice/NumberPicker;Landroid/widget/Spinner;Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/OnDiceChange;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 299
    iput-object p1, p0, Lde/duenndns/gmdice/GameMasterDice$4;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iput-object p2, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$np_c:Lde/duenndns/gmdice/NumberPicker;

    iput-object p3, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$sp_s:Landroid/widget/Spinner;

    iput-object p4, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$np_m:Lde/duenndns/gmdice/NumberPicker;

    iput-object p5, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$onOk:Lde/duenndns/gmdice/OnDiceChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 301
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$np_c:Lde/duenndns/gmdice/NumberPicker;

    invoke-virtual {v0}, Lde/duenndns/gmdice/NumberPicker;->getCurrent()I

    move-result v2

    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$sp_s:Landroid/widget/Spinner;

    .line 302
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$np_m:Lde/duenndns/gmdice/NumberPicker;

    .line 303
    invoke-virtual {v3}, Lde/duenndns/gmdice/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 301
    invoke-static {v2, v0, v3}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(III)Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    .line 304
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice$4;->val$onOk:Lde/duenndns/gmdice/OnDiceChange;

    invoke-virtual {v2, v0}, Lde/duenndns/gmdice/OnDiceChange;->onDiceChange(Lde/duenndns/gmdice/DiceSet;)V

    .line 305
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    return-void
.end method
