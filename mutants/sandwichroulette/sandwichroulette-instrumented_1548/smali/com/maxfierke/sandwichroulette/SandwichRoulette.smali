.class public Lcom/maxfierke/sandwichroulette/SandwichRoulette;
.super Landroid/app/Activity;
.source "SandwichRoulette.java"

# interfaces
.implements Lcom/commonsware/android/shaker/Shaker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field protected static final DEL_SAMMICH_TIEM:I = 0xb6b

.field protected static final OPEN_SAMMICH_TIEM:I = 0xb6a

.field static id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData; = null

.field public static final prefFile:Ljava/lang/String; = "swRoulettePrefs"

.field private static final serialVersionUID:J = 0x64b0aec7193ffb5L


# instance fields
.field alert:Landroid/app/AlertDialog;

.field private allowBaseRandom:Z

.field private allowBreadRandom:Z

.field private allowCheeseRandom:Z

.field private allowShake:Z

.field private baseArray:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private baseSpinner:Landroid/widget/Spinner;

.field private breadArray:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private breadSpinner:Landroid/widget/Spinner;

.field builder:Landroid/app/AlertDialog$Builder;

.field private cheeseArray:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private cheeseSpinner:Landroid/widget/Spinner;

.field dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

.field edit:Landroid/content/SharedPreferences$Editor;

.field protected mSplashDialog:Landroid/app/Dialog;

.field preferences:Landroid/content/SharedPreferences;

.field private rnd:Ljava/util/Random;

.field private sammichName:Landroid/widget/EditText;

.field private shaker:Lcom/commonsware/android/shaker/Shaker;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x1a

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x13

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x15

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x2b

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Z

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

    const-string v1, "com/maxfierke/sandwichroulette/SandwichRoulette"

    const-wide v2, -0x2000dd23328c8201L    # -2.6091746476854752E154

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x19

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$100(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 26
    invoke-direct {p0, p1}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->delSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v0, v0, v1

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)Landroid/widget/EditText;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 26
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private delSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 412
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->open()V

    .line 413
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-eqz p1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1, p1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->deleteSandwich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    aput-boolean v2, v0, v2

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 417
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method private isBlank(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x13

    aget-object v3, v0, v3

    .line 472
    aput-boolean v2, v3, v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    aput-boolean v2, v3, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    aput-boolean v2, v3, v4

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    move v0, v2

    :goto_0
    const/4 v1, 0x5

    aput-boolean v2, v3, v1

    return v0

    :cond_2
    const/4 v0, 0x4

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0
.end method

.method private notifyDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 292
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 296
    const-string v2, "OK"

    new-instance v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette$6;

    invoke-direct {v3, p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$6;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    .line 302
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 303
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method private toSQLiteBool(Z)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x12

    aget-object v3, v0, v3

    .line 467
    aput-boolean v1, v3, v2

    if-eqz p1, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method private uiToValues()Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 431
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 437
    const-string v2, "title"

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "base"

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v2, "bread"

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v2, "cheese"

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v2, "pickles"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v2, "onions"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v2, "lettuce"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v2, "tomato"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v8}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    const-string v2, "grnPepper"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v9}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v2, "spinach"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v2, "cucumber"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v2, "banPepper"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v2, "olive"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v2, "jalapeno"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v2, "chipotle"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v2, "hnyMustard"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v2, "swtOnion"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v2, "mayo"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v8}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v2, "mustard"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v9}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v2, "oil"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v2, "vinaigrette"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v2, "vinegar"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v2, "italDressing"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v2, "ranch"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v2, "csrDressing"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v2, "hummus"

    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->toSQLiteBool(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    aput-boolean v6, v0, v5

    return-object v1
.end method

.method private updateStateFromPrefs()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 126
    const-string v0, "swRoulettePrefs"

    invoke-virtual {p0, v0, v1}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    .line 127
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "baseRandom"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowBaseRandom:Z

    .line 128
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "breadRandom"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowBreadRandom:Z

    .line 129
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "cheeseRandom"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowCheeseRandom:Z

    .line 130
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "allowShake"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowShake:Z

    .line 131
    aput-boolean v5, v2, v1

    move v0, v1

    :goto_0
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIngredients()[Landroid/widget/CheckBox;

    move-result-object v3

    array-length v3, v3

    aput-boolean v5, v2, v5

    if-ge v0, v3, :cond_2

    .line 132
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 131
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 136
    :cond_1
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 140
    :cond_2
    aput-boolean v5, v2, v6

    move v0, v1

    :goto_2
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauces()[Landroid/widget/CheckBox;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x7

    aput-boolean v5, v2, v4

    if-ge v0, v3, :cond_4

    .line 141
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0x8

    aput-boolean v5, v2, v4

    if-eqz v3, :cond_3

    .line 143
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    .line 140
    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xb

    aput-boolean v5, v2, v3

    goto :goto_2

    .line 145
    :cond_3
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v3, 0xa

    aput-boolean v5, v2, v3

    goto :goto_3

    .line 149
    :cond_4
    const/16 v0, 0xc

    aput-boolean v5, v2, v0

    return-void
.end method


# virtual methods
.method public generateRandomSammich()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v7

    .line 307
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    .line 308
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Random;->setSeed(J)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    const-string v3, "A Deliciously Random Sandwich"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowBaseRandom:Z

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f050000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowBreadRandom:Z

    const/4 v3, 0x4

    aput-boolean v6, v2, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x5

    aput-boolean v6, v2, v0

    .line 316
    :cond_2
    iget-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowCheeseRandom:Z

    const/4 v3, 0x6

    aput-boolean v6, v2, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x7

    aput-boolean v6, v2, v0

    .line 317
    :cond_3
    const/16 v0, 0x8

    aput-boolean v6, v2, v0

    move v0, v1

    :goto_1
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIngredients()[Landroid/widget/CheckBox;

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    if-ge v0, v3, :cond_5

    .line 319
    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0xa

    aput-boolean v6, v2, v4

    if-eqz v3, :cond_4

    .line 320
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 321
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v3, 0xb

    aput-boolean v6, v2, v3

    .line 317
    :goto_2
    add-int/lit8 v0, v0, 0x1

    aput-boolean v6, v2, v7

    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v0, "Error!"

    const-string v3, "Your device is not capable of randomizing sandwiches with the power of a thousand suns. Falling back to the legacy randomizer."

    invoke-direct {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    aput-boolean v6, v2, v6

    goto/16 :goto_0

    .line 323
    :cond_4
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    goto :goto_2

    .line 327
    :cond_5
    const/16 v0, 0xe

    aput-boolean v6, v2, v0

    move v0, v1

    :goto_3
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauces()[Landroid/widget/CheckBox;

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0xf

    aput-boolean v6, v2, v4

    if-ge v0, v3, :cond_7

    .line 329
    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->preferences:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v4, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    if-eqz v3, :cond_6

    .line 330
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 331
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v3, 0x11

    aput-boolean v6, v2, v3

    .line 327
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x13

    aput-boolean v6, v2, v3

    goto :goto_3

    .line 333
    :cond_6
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 334
    sget-object v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v3, v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/16 v3, 0x12

    aput-boolean v6, v2, v3

    goto :goto_4

    .line 337
    :cond_7
    const/16 v0, 0x14

    aput-boolean v6, v2, v0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v1, v0, v1

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    const/16 v0, 0xb6a

    const/4 v2, 0x0

    aput-boolean v5, v1, v2

    if-ne p1, v0, :cond_2

    .line 190
    aput-boolean v5, v1, v5

    if-ne p2, v3, :cond_1

    .line 191
    const-string v0, "sandwich"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    .line 192
    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->openSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 218
    :cond_1
    :goto_0
    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    return-void

    .line 194
    :cond_2
    const/16 v0, 0xb6b

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    if-ne p1, v0, :cond_1

    .line 195
    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    if-ne p2, v3, :cond_1

    .line 196
    const-string v0, "sandwich"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    .line 197
    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "Delete Sandwich?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Are you sure you wish to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\nYou cannot undo this."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 200
    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "Yes"

    new-instance v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;

    invoke-direct {v4, p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v2, "No"

    new-instance v3, Lcom/maxfierke/sandwichroulette/SandwichRoulette$3;

    invoke-direct {v3, p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$3;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    .line 215
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v4, 0x7f030005

    const v3, 0x1090009

    const v2, 0x1090008

    const/4 v8, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v8

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;

    .line 58
    const/4 v1, 0x0

    aput-boolean v8, v7, v1

    if-eqz v0, :cond_2

    .line 60
    iget-boolean v0, v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->showSplashScreen:Z

    aput-boolean v8, v7, v8

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->showSplashScreen()V

    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    .line 63
    :cond_1
    invoke-virtual {p0, v4}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    .line 71
    :goto_0
    new-instance v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    .line 72
    new-instance v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-direct {v0, p0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    .line 74
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseSpinner:Landroid/widget/Spinner;

    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getBaseArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseArray:Landroid/widget/ArrayAdapter;

    .line 77
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadSpinner:Landroid/widget/Spinner;

    .line 81
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getBreadArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadArray:Landroid/widget/ArrayAdapter;

    .line 82
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 83
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseSpinner:Landroid/widget/Spinner;

    .line 86
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getCheeseArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseArray:Landroid/widget/ArrayAdapter;

    .line 87
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseArray:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    invoke-direct {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->updateStateFromPrefs()V

    .line 92
    iget-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowShake:Z

    const/4 v1, 0x5

    aput-boolean v8, v7, v1

    if-eqz v0, :cond_3

    new-instance v0, Lcom/commonsware/android/shaker/Shaker;

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/commonsware/android/shaker/Shaker;-><init>(Landroid/content/Context;DJLcom/commonsware/android/shaker/Shaker$Callback;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    .line 94
    :goto_1
    const/16 v0, 0x8

    aput-boolean v8, v7, v0

    return-void

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->showSplashScreen()V

    .line 67
    invoke-virtual {p0, v4}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->setContentView(I)V

    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    goto/16 :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    const/4 v0, 0x7

    aput-boolean v8, v7, v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 182
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 183
    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    invoke-virtual {v1}, Lcom/commonsware/android/shaker/Shaker;->close()V

    aput-boolean v3, v0, v3

    .line 107
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v4

    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getDBSize()I

    move-result v0

    aput-boolean v1, v2, v1

    if-lez v0, :cond_1

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/maxfierke/sandwichroulette/SandwichListView;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const/16 v3, 0xb6a

    invoke-virtual {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 232
    :goto_1
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "No Sandwiches Found"

    const-string v3, "By the Earl of Sandwich\'s beard! There are no sandwiches here!"

    invoke-direct {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->openSafe()V

    .line 236
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getSandwich(Ljava/lang/String;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "Overwrite Sandwich?"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists! Overwrite?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "Yes"

    new-instance v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;

    invoke-direct {v4, p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "No"

    new-instance v4, Lcom/maxfierke/sandwichroulette/SandwichRoulette$5;

    invoke-direct {v4, p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$5;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    .line 256
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    .line 266
    :goto_2
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 267
    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->open()V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->saveSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    .line 260
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 261
    const-string v0, "Sandwich Saved!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was saved."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    goto :goto_2

    .line 264
    :cond_3
    const-string v0, "Save Error!"

    const-string v3, "Your delicious sandwich creation must have a name!"

    invoke-direct {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    goto :goto_2

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getDBSize()I

    move-result v0

    aput-boolean v1, v2, v4

    if-lez v0, :cond_4

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/maxfierke/sandwichroulette/SandwichListView;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const/16 v3, 0xb6b

    invoke-virtual {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0xc

    aput-boolean v1, v2, v0

    .line 276
    :goto_3
    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 274
    :cond_4
    const-string v0, "No Sandwiches Found"

    const-string v3, "By the Earl of Sandwich\'s beard! There are no sandwiches here!"

    invoke-direct {p0, v0, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->notifyDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    goto :goto_3

    .line 278
    :pswitch_3
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->generateRandomSammich()V

    .line 279
    const/16 v0, 0xf

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 281
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/maxfierke/sandwichroulette/SandwichRouletteAbout;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->startActivity(Landroid/content/Intent;)V

    .line 282
    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 284
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->startActivity(Landroid/content/Intent;)V

    .line 285
    const/16 v0, 0x11

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x7f090041
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    invoke-virtual {v1}, Lcom/commonsware/android/shaker/Shaker;->close()V

    aput-boolean v3, v0, v3

    .line 112
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v2

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->updateStateFromPrefs()V

    .line 99
    iget-boolean v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->allowShake:Z

    const/4 v1, 0x0

    aput-boolean v8, v7, v1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/commonsware/android/shaker/Shaker;

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/commonsware/android/shaker/Shaker;-><init>(Landroid/content/Context;DJLcom/commonsware/android/shaker/Shaker$Callback;)V

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    aput-boolean v8, v7, v8

    .line 101
    :goto_0
    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->shaker:Lcom/commonsware/android/shaker/Shaker;

    aput-boolean v8, v7, v2

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 115
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichRoulette$1;)V

    .line 118
    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_1

    .line 119
    iput-boolean v4, v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette$SandwichRouletteStateSaver;->showSplashScreen:Z

    .line 120
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->removeSplashScreen()V

    aput-boolean v4, v0, v4

    .line 122
    :cond_1
    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public openSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 340
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->sammichName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->baseSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getBase()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 342
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->breadSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getBread()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 343
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->cheeseSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getCheese()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 345
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    aput-boolean v3, v0, v4

    if-eqz v1, :cond_1

    .line 346
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isPickles()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    aput-boolean v3, v0, v3

    .line 348
    :cond_1
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    aput-boolean v3, v0, v5

    if-eqz v1, :cond_2

    .line 349
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isOnions()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    aput-boolean v3, v0, v6

    .line 351
    :cond_2
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    aput-boolean v3, v0, v7

    if-eqz v1, :cond_3

    .line 352
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isLettuce()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 354
    :cond_3
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_4

    .line 355
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isTomato()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 357
    :cond_4
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_5

    .line 358
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isGrnPepper()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 360
    :cond_5
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_6

    .line 361
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isSpinach()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 363
    :cond_6
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_7

    .line 364
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isCucumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    .line 366
    :cond_7
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_8

    .line 367
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isBanPepper()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    .line 369
    :cond_8
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_9

    .line 370
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isOlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    .line 372
    :cond_9
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_a

    .line 373
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isJalapeno()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    .line 376
    :cond_a
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_b

    .line 377
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isChipotle()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 379
    :cond_b
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_c

    .line 380
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isHnyMustard()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    .line 382
    :cond_c
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x18

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_d

    .line 383
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isSwtOnion()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 385
    :cond_d
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_e

    .line 386
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isMayo()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    .line 388
    :cond_e
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x1c

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_f

    .line 389
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isMustard()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 391
    :cond_f
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x1e

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_10

    .line 392
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isVinaigrette()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 394
    :cond_10
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x20

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_11

    .line 395
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isVinegar()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 397
    :cond_11
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x22

    aput-boolean v3, v0, v2

    if-nez v1, :cond_12

    .line 398
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isItalDressing()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    .line 400
    :cond_12
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x24

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_13

    .line 401
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isRanch()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    .line 403
    :cond_13
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x26

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_14

    .line 404
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isCaesarDressing()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    .line 406
    :cond_14
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    const/16 v2, 0x28

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_15

    .line 407
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    sget-object v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->isHummus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x29

    aput-boolean v3, v0, v1

    .line 409
    :cond_15
    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected removeSplashScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 155
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    aput-boolean v3, v0, v3

    .line 159
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public saveSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 420
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->open()V

    .line 421
    const/4 v1, 0x0

    aput-boolean v6, v0, v1

    if-eqz p1, :cond_1

    .line 422
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current sandwich id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getId()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->uiToValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->updateSandwich(JLandroid/content/ContentValues;)V

    aput-boolean v6, v0, v6

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 428
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-direct {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->uiToValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->createSandwich(Landroid/content/ContentValues;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public shakingStarted()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 481
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->generateRandomSammich()V

    .line 482
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public shakingStopped()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 487
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected showSplashScreen()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 165
    new-instance v1, Landroid/app/Dialog;

    const/high16 v2, 0x7f070000

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    .line 166
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 167
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 168
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 171
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 172
    new-instance v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette$1;

    invoke-direct {v2, p0}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$1;-><init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method
