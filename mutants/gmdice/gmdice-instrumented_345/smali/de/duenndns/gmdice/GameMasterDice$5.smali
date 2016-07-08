.class Lde/duenndns/gmdice/GameMasterDice$5;
.super Ljava/lang/Object;
.source "GameMasterDice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/duenndns/gmdice/GameMasterDice;->selectDice(Lde/duenndns/gmdice/DiceSet;ZLde/duenndns/gmdice/OnDiceChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x1b2654313ec65f54L


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/GameMasterDice;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$defaults:Lde/duenndns/gmdice/DiceSet;

.field final synthetic val$onOk:Lde/duenndns/gmdice/OnDiceChange;


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

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice$5;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/GameMasterDice$5"

    const-wide v2, 0x2ae8b4056ade65a2L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$5;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lde/duenndns/gmdice/GameMasterDice;Landroid/widget/ArrayAdapter;Lde/duenndns/gmdice/DiceSet;Lde/duenndns/gmdice/OnDiceChange;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 321
    iput-object p1, p0, Lde/duenndns/gmdice/GameMasterDice$5;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iput-object p2, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$defaults:Lde/duenndns/gmdice/DiceSet;

    iput-object p4, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$onOk:Lde/duenndns/gmdice/OnDiceChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 323
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item clicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    if-ne p2, v2, :cond_1

    .line 326
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice$5;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$defaults:Lde/duenndns/gmdice/DiceSet;

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$onOk:Lde/duenndns/gmdice/OnDiceChange;

    invoke-virtual {v0, v2, v3}, Lde/duenndns/gmdice/GameMasterDice;->configureDice(Lde/duenndns/gmdice/DiceSet;Lde/duenndns/gmdice/OnDiceChange;)V

    aput-boolean v5, v1, v5

    .line 329
    :goto_0
    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    return-void

    .line 328
    :cond_1
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice$5;->val$onOk:Lde/duenndns/gmdice/OnDiceChange;

    invoke-static {v0}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/duenndns/gmdice/OnDiceChange;->onDiceChange(Lde/duenndns/gmdice/DiceSet;)V

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    goto :goto_0
.end method
