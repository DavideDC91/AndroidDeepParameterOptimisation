.class public Lcom/maxfierke/sandwichroulette/SandwichDataSource;
.super Ljava/lang/Object;
.source "SandwichDataSource.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x7af5b9814c623c07L


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/maxfierke/sandwichroulette/SandwichDBHelper;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xe

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichDataSource"

    const-wide v2, -0x20b3f69a77741a6fL    # -1.1471886068349063E151

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "base"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "bread"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cheese"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pickles"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "onions"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "lettuce"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "tomato"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "grnPepper"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "spinach"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "cucumber"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "banPepper"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "olive"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "jalapeno"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "chipotle"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "hnyMustard"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "swtOnion"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mayo"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "mustard"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "oil"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "vinaigrette"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "vinegar"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "italDressing"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "ranch"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "csrDressing"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "hummus"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->allColumns:[Ljava/lang/String;

    .line 47
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    invoke-direct {v1, p1}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->dbHelper:Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    .line 48
    aput-boolean v5, v0, v4

    return-void
.end method

.method private cursorToSandwich(Landroid/database/Cursor;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 138
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    invoke-direct {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;-><init>()V

    .line 139
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setId(J)V

    .line 140
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setTitle(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBase(I)V

    .line 142
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBread(I)V

    .line 143
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setCheese(I)V

    .line 144
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setPickles(Z)V

    .line 145
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOnions(Z)V

    .line 146
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setLettuce(Z)V

    .line 147
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setTomato(Z)V

    .line 148
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setGrnPepper(Z)V

    .line 149
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setSpinach(Z)V

    .line 150
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setCucumber(Z)V

    .line 151
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setBanPepper(Z)V

    .line 152
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOlive(Z)V

    .line 153
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setJalapeno(Z)V

    .line 154
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setChipotle(Z)V

    .line 155
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setHnyMustard(Z)V

    .line 156
    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setSwtOnion(Z)V

    .line 157
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setMayo(Z)V

    .line 158
    const/16 v2, 0x13

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setMustard(Z)V

    .line 159
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setOil(Z)V

    .line 160
    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setVinaigrette(Z)V

    .line 161
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setVinegar(Z)V

    .line 162
    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setItalDressing(Z)V

    .line 163
    const/16 v2, 0x18

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->fromSQLiteBool(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->setRanch(Z)V

    .line 164
    aput-boolean v5, v0, v4

    return-object v1
.end method

.method private fromSQLiteBool(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xc

    aget-object v3, v0, v3

    .line 168
    aput-boolean v1, v3, v2

    if-ne p1, v1, :cond_1

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


# virtual methods
.method public close()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 59
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->dbHelper:Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->close()V

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public createSandwich(Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 63
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sammiches"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 65
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sandwich created with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public deleteSandwich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 7

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 75
    invoke-virtual {p1}, Lcom/maxfierke/sandwichroulette/SandwichDataModel;->getId()J

    move-result-wide v2

    .line 76
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "sammiches"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sandwich deleted with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getAllSandwiches()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/maxfierke/sandwichroulette/SandwichDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v8, v0, v1

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sammiches"

    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->allColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    aput-boolean v10, v8, v1

    .line 120
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    aput-boolean v10, v8, v10

    if-nez v1, :cond_1

    .line 121
    invoke-direct {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->cursorToSandwich(Landroid/database/Cursor;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v1

    .line 122
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x2

    aput-boolean v10, v8, v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 127
    const/4 v0, 0x3

    aput-boolean v10, v8, v0

    return-object v9
.end method

.method public getDBSize()I
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 131
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->openSafe()V

    .line 132
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getAllSandwiches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 134
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getSandwich(J)Lcom/maxfierke/sandwichroulette/SandwichDataModel;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v8, v0, v1

    .line 82
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sammiches"

    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->allColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v9, v8, v2

    if-lez v1, :cond_1

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    invoke-direct {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->cursorToSandwich(Landroid/database/Cursor;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v4

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    aput-boolean v9, v8, v9

    .line 93
    :goto_0
    return-object v4

    .line 92
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    const/4 v0, 0x2

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method public getSandwich(Ljava/lang/String;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v8, v0, v1

    .line 98
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sammiches"

    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->allColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v9, v8, v2

    if-lez v1, :cond_1

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    invoke-direct {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->cursorToSandwich(Landroid/database/Cursor;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v4

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    aput-boolean v9, v8, v9

    .line 109
    :goto_0
    return-object v4

    .line 108
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    const/4 v0, 0x2

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 51
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->dbHelper:Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public openSafe()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 55
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->dbHelper:Lcom/maxfierke/sandwichroulette/SandwichDBHelper;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateSandwich(JLandroid/content/ContentValues;)V
    .locals 5

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 69
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sammiches"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sandwich updated with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
