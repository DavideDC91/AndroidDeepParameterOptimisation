.class Lde/duenndns/gmdice/RollResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GameMasterDice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/duenndns/gmdice/RollResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3366c754d90ca9f8L


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

    sput-object v0, Lde/duenndns/gmdice/RollResultAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/RollResultAdapter"

    const-wide v2, 0x39d0c1658cc4f92cL    # 3.304431003146753E-30

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/RollResultAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/RollResultAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/RollResultAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 376
    const v1, 0x7f030004

    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 377
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/RollResultAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/RollResultAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v4

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 381
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lde/duenndns/gmdice/RollResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/duenndns/gmdice/RollResult;

    iget v2, v2, Lde/duenndns/gmdice/RollResult;->color:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    const/4 v0, 0x0

    aput-boolean v4, v3, v0

    return-object v1
.end method
