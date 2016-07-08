.class public Lcom/maxfierke/sandwichroulette/SandwichDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SandwichDBHelper.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final COLUMN_BANPEPPER:Ljava/lang/String; = "banPepper"

.field public static final COLUMN_BASE:Ljava/lang/String; = "base"

.field public static final COLUMN_BREAD:Ljava/lang/String; = "bread"

.field public static final COLUMN_CHEESE:Ljava/lang/String; = "cheese"

.field public static final COLUMN_CHIPOTLE:Ljava/lang/String; = "chipotle"

.field public static final COLUMN_CSRDRESSING:Ljava/lang/String; = "csrDressing"

.field public static final COLUMN_CUCUMBER:Ljava/lang/String; = "cucumber"

.field public static final COLUMN_GRNPEPPER:Ljava/lang/String; = "grnPepper"

.field public static final COLUMN_HNYMUSTARD:Ljava/lang/String; = "hnyMustard"

.field public static final COLUMN_HUMMUS:Ljava/lang/String; = "hummus"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_ITALDRESSING:Ljava/lang/String; = "italDressing"

.field public static final COLUMN_JALAPENO:Ljava/lang/String; = "jalapeno"

.field public static final COLUMN_LETTUCE:Ljava/lang/String; = "lettuce"

.field public static final COLUMN_MAYO:Ljava/lang/String; = "mayo"

.field public static final COLUMN_MUSTARD:Ljava/lang/String; = "mustard"

.field public static final COLUMN_OIL:Ljava/lang/String; = "oil"

.field public static final COLUMN_OLIVE:Ljava/lang/String; = "olive"

.field public static final COLUMN_ONIONS:Ljava/lang/String; = "onions"

.field public static final COLUMN_PICKLES:Ljava/lang/String; = "pickles"

.field public static final COLUMN_RANCH:Ljava/lang/String; = "ranch"

.field public static final COLUMN_SPINACH:Ljava/lang/String; = "spinach"

.field public static final COLUMN_SWTONION:Ljava/lang/String; = "swtOnion"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOMATO:Ljava/lang/String; = "tomato"

.field public static final COLUMN_VINAIGRETTE:Ljava/lang/String; = "vinaigrette"

.field public static final COLUMN_VINEGAR:Ljava/lang/String; = "vinegar"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE sammiches (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL UNIQUE DEFAULT (\'\'),base INTEGER NOT NULL DEFAULT (0),bread INTEGER NOT NULL DEFAULT (0),cheese INTEGER NOT NULL DEFAULT (0),pickles NUMERIC NOT NULL DEFAULT (0),onions NUMERIC NOT NULL DEFAULT (0),lettuce NUMERIC NOT NULL DEFAULT (0),tomato NUMERIC NOT NULL DEFAULT (0),grnPepper NUMERIC NOT NULL DEFAULT (0),spinach NUMERIC NOT NULL DEFAULT (0),cucumber NUMERIC NOT NULL DEFAULT (0),banPepper NUMERIC NOT NULL DEFAULT (0),olive NUMERIC NOT NULL DEFAULT (0),jalapeno NUMERIC NOT NULL DEFAULT (0),chipotle NUMERIC NOT NULL DEFAULT (0),hnyMustard NUMERIC NOT NULL DEFAULT (0),swtOnion NUMERIC NOT NULL DEFAULT (0),mayo NUMERIC NOT NULL DEFAULT (0),mustard NUMERIC NOT NULL DEFAULT (0),oil NUMERIC NOT NULL DEFAULT (0),vinaigrette NUMERIC NOT NULL DEFAULT (0),vinegar NUMERIC NOT NULL DEFAULT (0),italDressing NUMERIC NOT NULL DEFAULT (0),ranch NUMERIC NOT NULL DEFAULT (0),csrDressing NUMERIC NOT NULL DEFAULT (0),hummus NUMERIC NOT NULL DEFAULT (0))"

.field private static final DATABASE_NAME:Ljava/lang/String; = "sammiches.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DATABASE_VERSION_1:I = 0x1

.field public static final TABLE_SAMMICHES:Ljava/lang/String; = "sammiches"

.field private static final serialVersionUID:J = -0x3157fe878e45ad35L


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichDBHelper"

    const-wide v2, -0x5fe260223318cf7eL    # -5.523736301703789E-154

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 83
    const-string v1, "sammiches.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    aput-boolean v4, v0, v3

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 88
    const-string v1, "CREATE TABLE sammiches (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL UNIQUE DEFAULT (\'\'),base INTEGER NOT NULL DEFAULT (0),bread INTEGER NOT NULL DEFAULT (0),cheese INTEGER NOT NULL DEFAULT (0),pickles NUMERIC NOT NULL DEFAULT (0),onions NUMERIC NOT NULL DEFAULT (0),lettuce NUMERIC NOT NULL DEFAULT (0),tomato NUMERIC NOT NULL DEFAULT (0),grnPepper NUMERIC NOT NULL DEFAULT (0),spinach NUMERIC NOT NULL DEFAULT (0),cucumber NUMERIC NOT NULL DEFAULT (0),banPepper NUMERIC NOT NULL DEFAULT (0),olive NUMERIC NOT NULL DEFAULT (0),jalapeno NUMERIC NOT NULL DEFAULT (0),chipotle NUMERIC NOT NULL DEFAULT (0),hnyMustard NUMERIC NOT NULL DEFAULT (0),swtOnion NUMERIC NOT NULL DEFAULT (0),mayo NUMERIC NOT NULL DEFAULT (0),mustard NUMERIC NOT NULL DEFAULT (0),oil NUMERIC NOT NULL DEFAULT (0),vinaigrette NUMERIC NOT NULL DEFAULT (0),vinegar NUMERIC NOT NULL DEFAULT (0),italDressing NUMERIC NOT NULL DEFAULT (0),ranch NUMERIC NOT NULL DEFAULT (0),csrDressing NUMERIC NOT NULL DEFAULT (0),hummus NUMERIC NOT NULL DEFAULT (0))"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 94
    const-class v1, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    if-ne p2, v4, :cond_1

    .line 102
    :cond_1
    aput-boolean v4, v0, v4

    return-void
.end method
