.class public Lde/duenndns/gmdice/GameMasterDice;
.super Landroid/app/ListActivity;
.source "GameMasterDice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final $VRc:[[Z

.field static final SPIN_COUNT:[Ljava/lang/Integer;

.field static final SPIN_MODIFIER:[Ljava/lang/Integer;

.field static final SPIN_SIDES:[Ljava/lang/Integer;

.field private static TAG:Ljava/lang/String;


# instance fields
.field button_cfg:[Lde/duenndns/gmdice/DiceSet;

.field button_colors:[I

.field button_ids:[I

.field button_more:Landroid/widget/Button;

.field buttons:[Landroid/widget/Button;

.field dicecache:Lde/duenndns/gmdice/DiceCache;

.field generator:Ljava/util/Random;

.field prefs:Landroid/content/SharedPreferences;

.field resultlog:Lde/duenndns/gmdice/RollResultAdapter;

.field resultview:Landroid/widget/TextView;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/16 v0, 0x17

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x8

    new-array v2, v2, [Z

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

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Z

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

    const-string v1, "de/duenndns/gmdice/GameMasterDice"

    const-wide v2, 0x36abfdbb05ef3f5dL    # 2.4514959054E-45

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 52
    const-string v1, "GameMasterDice"

    sput-object v1, Lde/duenndns/gmdice/GameMasterDice;->TAG:Ljava/lang/String;

    .line 262
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lde/duenndns/gmdice/GameMasterDice;->SPIN_COUNT:[Ljava/lang/Integer;

    .line 263
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x7

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lde/duenndns/gmdice/GameMasterDice;->SPIN_SIDES:[Ljava/lang/Integer;

    .line 264
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x7

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lde/duenndns/gmdice/GameMasterDice;->SPIN_MODIFIER:[Ljava/lang/Integer;

    .line 264
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_ids:[I

    .line 58
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_colors:[I

    .line 63
    new-array v1, v6, [Lde/duenndns/gmdice/DiceSet;

    const-string v2, "3D20"

    .line 64
    invoke-static {v2}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x14

    .line 65
    invoke-static {v5, v2, v4}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(III)Lde/duenndns/gmdice/DiceSet;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 66
    invoke-static {v5, v7, v4}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(III)Lde/duenndns/gmdice/DiceSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 67
    invoke-static {v5, v7, v6}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(III)Lde/duenndns/gmdice/DiceSet;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    .line 69
    new-instance v1, Lde/duenndns/gmdice/DiceCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lde/duenndns/gmdice/DiceCache;-><init>(I)V

    iput-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->dicecache:Lde/duenndns/gmdice/DiceCache;

    .line 70
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->generator:Ljava/util/Random;

    aput-boolean v5, v0, v4

    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x7f060001
        0x7f060002
        0x7f060003
        0x7f060004
    .end array-data

    .line 58
    :array_1
    .array-data 4
        -0xf4f10
        -0x3f3f10
        -0x3f0f40
        -0xf3f40
        -0x4f0f10
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 49
    sget-object v1, Lde/duenndns/gmdice/GameMasterDice;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method aboutDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v1, v0, v1

    .line 168
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 171
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f040010

    invoke-virtual {p0, v3}, Lde/duenndns/gmdice/GameMasterDice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f040011

    invoke-virtual {p0, v3}, Lde/duenndns/gmdice/GameMasterDice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    .line 178
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f040012

    new-instance v3, Lde/duenndns/gmdice/GameMasterDice$1;

    invoke-direct {v3, p0}, Lde/duenndns/gmdice/GameMasterDice$1;-><init>(Lde/duenndns/gmdice/GameMasterDice;)V

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 189
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    return-void

    .line 173
    :catch_0
    move-exception v2

    aput-boolean v5, v1, v5

    goto :goto_0
.end method

.method configKeepScreenOn()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 156
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "keepscreen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v3, v0, v4

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    aput-boolean v3, v0, v3

    .line 161
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method configureDice(Lde/duenndns/gmdice/DiceSet;Lde/duenndns/gmdice/OnDiceChange;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v6, v0, v1

    .line 288
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 290
    const v1, 0x7f030001

    invoke-virtual {v0, v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 291
    const v1, 0x7f060006

    iget v2, p1, Lde/duenndns/gmdice/DiceSet;->count:I

    invoke-virtual {p0, v0, v1, v2}, Lde/duenndns/gmdice/GameMasterDice;->setupNumPicker(Landroid/view/View;II)Lde/duenndns/gmdice/NumberPicker;

    move-result-object v2

    .line 292
    const v1, 0x7f060007

    sget-object v3, Lde/duenndns/gmdice/GameMasterDice;->SPIN_SIDES:[Ljava/lang/Integer;

    iget v4, p1, Lde/duenndns/gmdice/DiceSet;->sides:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lde/duenndns/gmdice/GameMasterDice;->setupSpinner(Landroid/view/View;I[Ljava/lang/Integer;I)Landroid/widget/Spinner;

    move-result-object v3

    .line 293
    const v1, 0x7f060008

    iget v4, p1, Lde/duenndns/gmdice/DiceSet;->modifier:I

    invoke-virtual {p0, v0, v1, v4}, Lde/duenndns/gmdice/GameMasterDice;->setupNumPicker(Landroid/view/View;II)Lde/duenndns/gmdice/NumberPicker;

    move-result-object v4

    .line 295
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f040004

    .line 296
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v0, Lde/duenndns/gmdice/GameMasterDice$4;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/duenndns/gmdice/GameMasterDice$4;-><init>(Lde/duenndns/gmdice/GameMasterDice;Lde/duenndns/gmdice/NumberPicker;Landroid/widget/Spinner;Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/OnDiceChange;)V

    .line 298
    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 307
    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    const/4 v0, 0x1

    aput-boolean v0, v6, v9

    return-void
.end method

.method loadDicePrefs()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xb

    aget-object v2, v0, v2

    .line 193
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "buttons"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    aput-boolean v6, v2, v1

    if-nez v0, :cond_1

    aput-boolean v6, v2, v6

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 197
    const/4 v0, 0x2

    aput-boolean v6, v2, v0

    move v0, v1

    :goto_1
    array-length v1, v3

    const/4 v4, 0x3

    aput-boolean v6, v2, v4

    if-ge v0, v1, :cond_2

    .line 198
    sget-object v1, Lde/duenndns/gmdice/GameMasterDice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    aget-object v4, v3, v0

    invoke-static {v4}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v4

    aput-object v4, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->dicecache:Lde/duenndns/gmdice/DiceCache;

    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "cache"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/duenndns/gmdice/DiceCache;->loadFromString(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x5

    aput-boolean v6, v2, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xd

    aget-object v2, v0, v2

    .line 217
    check-cast p1, Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_more:Landroid/widget/Button;

    aput-boolean v4, v2, v1

    if-ne p1, v0, :cond_2

    .line 219
    invoke-static {}, Lde/duenndns/gmdice/DiceSet;->getDiceSet()Lde/duenndns/gmdice/DiceSet;

    move-result-object v0

    new-instance v1, Lde/duenndns/gmdice/GameMasterDice$2;

    invoke-direct {v1, p0}, Lde/duenndns/gmdice/GameMasterDice$2;-><init>(Lde/duenndns/gmdice/GameMasterDice;)V

    invoke-virtual {p0, v0, v4, v1}, Lde/duenndns/gmdice/GameMasterDice;->selectDice(Lde/duenndns/gmdice/DiceSet;ZLde/duenndns/gmdice/OnDiceChange;)V

    aput-boolean v4, v2, v4

    .line 232
    :cond_1
    const/4 v0, 0x7

    aput-boolean v4, v2, v0

    return-void

    .line 224
    :cond_2
    const/4 v0, 0x2

    aput-boolean v4, v2, v0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    array-length v1, v1

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    if-ne v1, p1, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v1

    .line 228
    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->button_colors:[I

    aget v3, v3, v0

    invoke-virtual {p0, v1, v3}, Lde/duenndns/gmdice/GameMasterDice;->roll(Lde/duenndns/gmdice/DiceSet;I)V

    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 75
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->setContentView(I)V

    .line 77
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->setTitle(I)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    .line 82
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_ids:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    .line 83
    aput-boolean v5, v2, v1

    :goto_0
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_ids:[I

    array-length v0, v0

    aput-boolean v5, v2, v5

    if-ge v1, v0, :cond_1

    .line 84
    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_ids:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v3, v1

    .line 85
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->button_colors:[I

    aget v3, v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_1
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_more:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_more:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_more:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_colors:[I

    aget v1, v1, v6

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->resultview:Landroid/widget/TextView;

    .line 93
    new-instance v0, Lde/duenndns/gmdice/RollResultAdapter;

    invoke-direct {v0, p0}, Lde/duenndns/gmdice/RollResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->resultlog:Lde/duenndns/gmdice/RollResultAdapter;

    .line 94
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->resultlog:Lde/duenndns/gmdice/RollResultAdapter;

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    const/4 v0, 0x3

    aput-boolean v5, v2, v0

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "resultlog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    aput-boolean v5, v2, v6

    .line 100
    :cond_2
    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 126
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v1, v0, v1

    .line 337
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->resultlog:Lde/duenndns/gmdice/RollResultAdapter;

    invoke-virtual {v0, p3}, Lde/duenndns/gmdice/RollResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/RollResult;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/RollResult;->showDetails(Landroid/content/Context;)V

    .line 338
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 247
    check-cast p1, Landroid/widget/Button;

    .line 248
    sget-object v1, Lde/duenndns/gmdice/GameMasterDice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lde/duenndns/gmdice/DiceSet;->getDiceSet(Ljava/lang/String;)Lde/duenndns/gmdice/DiceSet;

    move-result-object v1

    new-instance v2, Lde/duenndns/gmdice/GameMasterDice$3;

    invoke-direct {v2, p0, p1}, Lde/duenndns/gmdice/GameMasterDice$3;-><init>(Lde/duenndns/gmdice/GameMasterDice;Landroid/widget/Button;)V

    invoke-virtual {p0, v1, v4, v2}, Lde/duenndns/gmdice/GameMasterDice;->selectDice(Lde/duenndns/gmdice/DiceSet;ZLde/duenndns/gmdice/OnDiceChange;)V

    .line 259
    aput-boolean v5, v0, v4

    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v3, 0x7

    aget-object v0, v0, v3

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    aput-boolean v1, v0, v2

    packed-switch v3, :pswitch_data_0

    .line 153
    const/4 v3, 0x4

    aput-boolean v1, v0, v3

    move v0, v2

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->toggleKeepScreenOn()V

    .line 144
    aput-boolean v1, v0, v1

    move v0, v1

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->resultlog:Lde/duenndns/gmdice/RollResultAdapter;

    invoke-virtual {v2}, Lde/duenndns/gmdice/RollResultAdapter;->clear()V

    .line 147
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->resultview:Landroid/widget/TextView;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 148
    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->aboutDialog()V

    .line 151
    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f06000d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 114
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->storeDicePrefs()V

    .line 115
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v3, 0x6

    aget-object v3, v0, v3

    .line 131
    const v0, 0x7f06000d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 132
    aput-boolean v2, v3, v1

    if-nez v4, :cond_1

    .line 133
    aput-boolean v2, v3, v2

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "keepscreen"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x2

    aput-boolean v2, v3, v1

    if-eqz v0, :cond_2

    const v0, 0x108000d

    const/4 v1, 0x3

    aput-boolean v2, v3, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 137
    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0

    .line 134
    :cond_2
    const v0, 0x108000e

    const/4 v1, 0x4

    aput-boolean v2, v3, v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->loadDicePrefs()V

    .line 106
    aput-boolean v4, v2, v1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_ids:[I

    array-length v1, v1

    aput-boolean v4, v2, v4

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->buttons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lde/duenndns/gmdice/DiceSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    aput-boolean v4, v2, v5

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->configKeepScreenOn()V

    .line 109
    const/4 v0, 0x3

    aput-boolean v4, v2, v0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 119
    const-string v1, "resultlog"

    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public roll(Lde/duenndns/gmdice/DiceSet;I)V
    .locals 5

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 235
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->generator:Ljava/util/Random;

    invoke-virtual {p1, p0, v1}, Lde/duenndns/gmdice/DiceSet;->roll(Landroid/content/Context;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->dicecache:Lde/duenndns/gmdice/DiceCache;

    invoke-virtual {v2, p1}, Lde/duenndns/gmdice/DiceCache;->add(Lde/duenndns/gmdice/DiceSet;)V

    .line 238
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->resultview:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/duenndns/gmdice/DiceSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    sget-object v2, Lde/duenndns/gmdice/GameMasterDice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rolled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->resultlog:Lde/duenndns/gmdice/RollResultAdapter;

    new-instance v3, Lde/duenndns/gmdice/RollResult;

    invoke-direct {v3, v1, p2}, Lde/duenndns/gmdice/RollResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lde/duenndns/gmdice/RollResultAdapter;->add(Ljava/lang/Object;)V

    .line 243
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method selectDice(Lde/duenndns/gmdice/DiceSet;ZLde/duenndns/gmdice/OnDiceChange;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v1, v0, v1

    .line 314
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    invoke-direct {v2, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 316
    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->dicecache:Lde/duenndns/gmdice/DiceCache;

    const/4 v0, 0x0

    aput-boolean v5, v1, v0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-boolean v5, v1, v5

    :goto_0
    invoke-virtual {v3, v2, v0}, Lde/duenndns/gmdice/DiceCache;->populate(Landroid/widget/ArrayAdapter;Ljava/util/List;)V

    .line 318
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/GameMasterDice;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f040002

    .line 320
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lde/duenndns/gmdice/GameMasterDice$5;

    invoke-direct {v3, p0, v2, p1, p3}, Lde/duenndns/gmdice/GameMasterDice$5;-><init>(Lde/duenndns/gmdice/GameMasterDice;Landroid/widget/ArrayAdapter;Lde/duenndns/gmdice/DiceSet;Lde/duenndns/gmdice/OnDiceChange;)V

    .line 321
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 333
    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    goto :goto_0
.end method

.method setupNumPicker(Landroid/view/View;II)Lde/duenndns/gmdice/NumberPicker;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v1, v0, v1

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/NumberPicker;

    .line 269
    invoke-virtual {v0, p3}, Lde/duenndns/gmdice/NumberPicker;->setCurrent(I)V

    .line 270
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method setupSpinner(Landroid/view/View;I[Ljava/lang/Integer;I)Landroid/widget/Spinner;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x11

    aget-object v2, v0, v2

    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 275
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030003

    invoke-direct {v3, p0, v4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 276
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    aput-boolean v5, v2, v1

    :goto_0
    array-length v3, p3

    aput-boolean v5, v2, v5

    if-ge v1, v3, :cond_2

    .line 279
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-ne v3, p4, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 278
    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 283
    :cond_2
    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    return-object v0
.end method

.method storeDicePrefs()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xc

    aget-object v2, v0, v2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    aput-boolean v5, v2, v1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    array-length v1, v1

    aput-boolean v5, v2, v5

    if-ge v0, v1, :cond_2

    .line 206
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lde/duenndns/gmdice/GameMasterDice;->button_cfg:[Lde/duenndns/gmdice/DiceSet;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-ge v0, v1, :cond_1

    .line 208
    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buttons"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache"

    iget-object v3, p0, Lde/duenndns/gmdice/GameMasterDice;->dicecache:Lde/duenndns/gmdice/DiceCache;

    .line 211
    invoke-virtual {v3}, Lde/duenndns/gmdice/DiceCache;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    return-void
.end method

.method toggleKeepScreenOn()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lde/duenndns/gmdice/GameMasterDice;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/GameMasterDice;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x9

    aget-object v3, v0, v3

    .line 163
    iget-object v0, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "keepscreen"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    .line 164
    :goto_0
    iget-object v2, p0, Lde/duenndns/gmdice/GameMasterDice;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "keepscreen"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    invoke-virtual {p0}, Lde/duenndns/gmdice/GameMasterDice;->configKeepScreenOn()V

    .line 166
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    return-void

    .line 163
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method
