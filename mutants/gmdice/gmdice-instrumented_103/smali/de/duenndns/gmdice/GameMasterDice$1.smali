.class Lde/duenndns/gmdice/GameMasterDice$1;
.super Ljava/lang/Object;
.source "GameMasterDice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/duenndns/gmdice/GameMasterDice;->aboutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x6d77921aa16d8e1eL


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

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/GameMasterDice$1"

    const-wide v2, 0x3bf444bb1409470dL    # 6.867228000649746E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$1;->$VRi()[[Z

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

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 182
    iput-object p1, p0, Lde/duenndns/gmdice/GameMasterDice$1;->this$0:Lde/duenndns/gmdice/GameMasterDice;

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

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 184
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice$1;->this$0:Lde/duenndns/gmdice/GameMasterDice;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://github.com/ge0rg/gamemasterdice/wiki"

    .line 185
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    invoke-virtual {v1, v2}, Lde/duenndns/gmdice/GameMasterDice;->startActivity(Landroid/content/Intent;)V

    .line 186
    const/4 v1, 0x0

    aput-boolean v5, v0, v1

    return-void
.end method
