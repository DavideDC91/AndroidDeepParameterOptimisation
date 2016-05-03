.class public Lcom/github/wdkapps/fillup/GasLog;
.super Ljava/lang/Object;
.source "GasLog.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final DATABASE_CREATE:[Ljava/lang/String;

.field public static final DATABASE_DELETE:[Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "gaslog.db"

.field public static final DATABASE_VERSION:I = 0x5

.field private static final RECORDS_TABLE:Ljava/lang/String; = "Records"

.field private static final RECORDS_TABLE_COLUMNS:[Ljava/lang/String;

.field private static final RECORD_COST:Ljava/lang/String; = "cost"

.field private static final RECORD_FULLTANK:Ljava/lang/String; = "fulltank"

.field private static final RECORD_GALLONS:Ljava/lang/String; = "gallons"

.field private static final RECORD_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final RECORD_ID:Ljava/lang/String; = "_id"

.field private static final RECORD_NOTES:Ljava/lang/String; = "notes"

.field private static final RECORD_ODOMETER:Ljava/lang/String; = "odometer"

.field private static final RECORD_TIME:Ljava/lang/String; = "time"

.field private static final RECORD_VEHICLE_ID:Ljava/lang/String; = "_vid"

.field private static final TAG:Ljava/lang/String;

.field private static final VEHICLES_TABLE:Ljava/lang/String; = "Vehicles"

.field private static final VEHICLES_TABLE_COLUMNS:[Ljava/lang/String;

.field private static final VEHICLE_ID:Ljava/lang/String; = "_id"

.field private static final VEHICLE_NAME:Ljava/lang/String; = "name"

.field private static final VEHICLE_TANK_SIZE:Ljava/lang/String; = "tanksize"

.field private static instance:Lcom/github/wdkapps/fillup/GasLog;


# instance fields
.field private final context:Landroid/content/Context;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final helper:Lcom/github/wdkapps/fillup/GasLogOpenHelper;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xb

    const/4 v5, 0x3

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/16 v0, 0x17

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xf

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x10

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasLog"

    const-wide v2, 0x29b3b6847a6c7b2aL    # 8.393698756740412E-108

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 54
    const-class v1, Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    .line 78
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "name"

    aput-object v2, v1, v5

    const-string v2, "tanksize"

    aput-object v2, v1, v6

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->VEHICLES_TABLE_COLUMNS:[Ljava/lang/String;

    .line 82
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "_vid"

    aput-object v2, v1, v5

    const-string v2, "time"

    aput-object v2, v1, v6

    const-string v2, "odometer"

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "gallons"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "fulltank"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hidden"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "cost"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "notes"

    aput-object v3, v1, v2

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->RECORDS_TABLE_COLUMNS:[Ljava/lang/String;

    .line 94
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "create table Vehicles ( _id integer primary key autoincrement, name text not null unique, tanksize real not null); "

    aput-object v2, v1, v4

    const-string v2, "create table Records ( _id integer primary key autoincrement, _vid integer not null, time integer not null, odometer integer not null, gallons real not null, fulltank integer not null, hidden integer not null default 0, cost real not null default 0, notes text, unique (_vid,odometer), foreign key (_vid) references Vehicles (_id));"

    aput-object v2, v1, v5

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->DATABASE_CREATE:[Ljava/lang/String;

    .line 116
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "drop table if exists Records;"

    aput-object v2, v1, v4

    const-string v2, "drop table if exists Vehicles;"

    aput-object v2, v1, v5

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->DATABASE_DELETE:[Ljava/lang/String;

    aput-boolean v5, v0, v4

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    .line 176
    new-instance v1, Lcom/github/wdkapps/fillup/GasLogOpenHelper;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasLog;->helper:Lcom/github/wdkapps/fillup/GasLogOpenHelper;

    .line 177
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLog;->helper:Lcom/github/wdkapps/fillup/GasLogOpenHelper;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 178
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private ASSERT(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 198
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    if-nez p1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASSERT failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    throw v2

    .line 203
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static exists()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 142
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gaslog.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v3

    return v1
.end method

.method private getContentValues(Lcom/github/wdkapps/fillup/GasRecord;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 215
    const-string v2, "_id"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v2, "_vid"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getVehicleID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v2, "time"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v2, "odometer"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v2, "gallons"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 220
    const-string v2, "fulltank"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    const-string v2, "hidden"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 222
    const-string v2, "cost"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getCost()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 223
    const-string v2, "notes"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getContentValues(Lcom/github/wdkapps/fillup/Vehicle;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 236
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 237
    const-string v2, "_id"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "tanksize"

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 240
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getInstance()Lcom/github/wdkapps/fillup/GasLog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 152
    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Lcom/github/wdkapps/fillup/GasLog;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/GasLog;-><init>()V

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    aput-boolean v3, v0, v3

    .line 155
    :cond_1
    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRecordFromCursor(Landroid/database/Cursor;)Lcom/github/wdkapps/fillup/GasRecord;
    .locals 14

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v2, v0, v1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getRecordFromCursor()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    const/4 v0, 0x0

    .line 253
    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    if-eqz p1, :cond_1

    .line 254
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 255
    const-string v1, "_vid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 256
    const-string v1, "time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 257
    const-string v1, "odometer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 258
    const-string v1, "gallons"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    .line 259
    const-string v1, "fulltank"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 260
    const-string v1, "hidden"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 261
    const-string v1, "cost"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 262
    const-string v1, "notes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 264
    new-instance v1, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/GasRecord;-><init>()V

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setID(Ljava/lang/Integer;)V

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setVehicleID(Ljava/lang/Integer;)V

    .line 267
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setDate(Ljava/util/Date;)V

    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setOdometer(Ljava/lang/Integer;)V

    .line 269
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/Float;)V

    .line 270
    const/4 v0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-ne v9, v0, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/Boolean;)V

    .line 271
    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-ne v10, v0, :cond_3

    const/4 v0, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setHiddenCalculation(Ljava/lang/Boolean;)V

    .line 272
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/Double;)V

    .line 273
    invoke-virtual {v1, v11}, Lcom/github/wdkapps/fillup/GasRecord;->setNotes(Ljava/lang/String;)V

    .line 276
    :try_start_0
    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->calculatePrice()V

    const/4 v0, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 281
    :cond_1
    :goto_2
    const/16 v1, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    return-object v0

    .line 270
    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    move-object v0, v1

    goto :goto_2
.end method

.method private getVehicleFromCursor(Landroid/database/Cursor;)Lcom/github/wdkapps/fillup/Vehicle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 292
    const/4 v0, 0x0

    .line 293
    const/4 v2, 0x0

    aput-boolean v5, v1, v2

    if-eqz p1, :cond_1

    .line 294
    new-instance v0, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v0}, Lcom/github/wdkapps/fillup/Vehicle;-><init>()V

    .line 295
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 296
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v4, "tanksize"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/Vehicle;->setID(Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {v0, v3}, Lcom/github/wdkapps/fillup/Vehicle;->setName(Ljava/lang/String;)V

    .line 300
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/Vehicle;->setTankSize(Ljava/lang/Float;)V

    aput-boolean v5, v1, v5

    .line 302
    :cond_1
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    return-object v0
.end method


# virtual methods
.method public createRecord(Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/GasRecord;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xf

    aget-object v3, v0, v3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".createRecord()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "vehicle id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x3

    aput-boolean v1, v3, v5

    if-nez v0, :cond_2

    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    const-string v5, "record id must be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setVehicleID(Ljava/lang/Integer;)V

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Records"

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/github/wdkapps/fillup/GasLog;->getContentValues(Lcom/github/wdkapps/fillup/GasRecord;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 480
    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setID(Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    const/4 v0, 0x6

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v3, v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    .line 489
    :goto_2
    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    return v0

    .line 474
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 475
    :cond_2
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 482
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    .line 483
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteConstraintException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const v5, 0x7f070088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 485
    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    .line 486
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 485
    :catch_2
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_4

    .line 482
    :catch_3
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_3
.end method

.method public createVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xa

    aget-object v3, v0, v3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".createVehicle()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "vehicle id must be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Vehicles"

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/GasLog;->getContentValues(Lcom/github/wdkapps/fillup/Vehicle;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 317
    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/wdkapps/fillup/Vehicle;->setID(Ljava/lang/Integer;)V

    .line 318
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    const/4 v2, 0x6

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 325
    :goto_2
    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    return v0

    .line 313
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x5

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 320
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteConstraintException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const v5, 0x7f070087

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 322
    :catch_1
    move-exception v0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 323
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 322
    :catch_2
    move-exception v2

    goto :goto_4

    .line 319
    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method public deleteAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x13

    aget-object v3, v0, v3

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".deleteAllRecords()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "vehicle id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 605
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_vid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    const/4 v5, 0x0

    .line 607
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Records"

    invoke-virtual {v6, v7, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    const/4 v0, 0x3

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v3, v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 613
    :goto_1
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    return v0

    .line 602
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    .line 610
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 609
    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_2
.end method

.method public deleteRecord(Lcom/github/wdkapps/fillup/GasRecord;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x12

    aget-object v3, v0, v3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".deleteRecord()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "record id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 583
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    const/4 v5, 0x0

    .line 585
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Records"

    invoke-virtual {v6, v7, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 586
    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    const/4 v2, 0x6

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :goto_2
    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    return v0

    .line 578
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 586
    :cond_2
    const/4 v0, 0x5

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_1

    .line 587
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    .line 588
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 587
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public deleteVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xd

    aget-object v3, v0, v3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".deleteVehicle()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "vehicle id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasLog;->deleteAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Z

    move-result v0

    const/4 v5, 0x3

    aput-boolean v1, v3, v5

    if-nez v0, :cond_2

    .line 407
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    .line 420
    :goto_1
    return v2

    .line 401
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 412
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    const/4 v5, 0x0

    .line 414
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Vehicles"

    invoke-virtual {v6, v7, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 415
    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    const/16 v2, 0x8

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :goto_3
    const/16 v2, 0xa

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    .line 415
    :cond_3
    const/4 v0, 0x7

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_2

    .line 416
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    .line 417
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    goto :goto_3

    .line 416
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public exportData(Lcom/github/wdkapps/fillup/Vehicle;Ljava/io/File;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x15

    aget-object v5, v0, v3

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".exportData()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v0

    .line 685
    const/4 v4, 0x0

    .line 687
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 689
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->toStringCSV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    :goto_1
    :try_start_2
    const-string v4, "export failed"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 695
    const/4 v0, 0x5

    aput-boolean v1, v5, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x6

    aput-boolean v1, v5, v0

    move v0, v2

    .line 698
    :goto_2
    const/16 v2, 0xa

    aput-boolean v1, v5, v2

    return v0

    .line 695
    :cond_1
    const/4 v0, 0x3

    aput-boolean v1, v5, v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x4

    aput-boolean v1, v5, v0

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_3
    const/4 v2, 0x7

    aput-boolean v1, v5, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    const/16 v2, 0x8

    aput-boolean v1, v5, v2

    :cond_2
    const/16 v2, 0x9

    aput-boolean v1, v5, v2

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 692
    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 163
    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 164
    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v1, v1, Lcom/github/wdkapps/fillup/GasLog;->helper:Lcom/github/wdkapps/fillup/GasLogOpenHelper;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->close()V

    .line 165
    const/4 v1, 0x0

    sput-object v1, Lcom/github/wdkapps/fillup/GasLog;->instance:Lcom/github/wdkapps/fillup/GasLog;

    aput-boolean v3, v0, v3

    .line 167
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    aput-boolean v3, v0, v4

    return-void
.end method

.method public getDatabaseVersion()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 186
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public importData(Lcom/github/wdkapps/fillup/Vehicle;Ljava/io/InputStream;)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x14

    aget-object v5, v0, v2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".importData()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 633
    const/4 v3, 0x0

    .line 635
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v4

    .line 639
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 640
    add-int/lit8 v3, v3, 0x1

    .line 641
    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    if-eqz v0, :cond_3

    .line 642
    new-instance v7, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-direct {v7, v0}, Lcom/github/wdkapps/fillup/GasRecord;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0, p1, v7}, Lcom/github/wdkapps/fillup/GasLog;->createRecord(Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    if-nez v7, :cond_3

    .line 644
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v7, "create failed"

    invoke-direct {v0, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 652
    :catch_0
    move-exception v0

    move-object v10, v0

    move v0, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v10

    .line 653
    :goto_0
    :try_start_3
    const-string v7, "import failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const v7, 0x7f070089

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 655
    iget-object v7, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 657
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    const/16 v2, 0x8

    aput-boolean v1, v5, v2

    if-eqz v3, :cond_2

    .line 660
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v5, v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 667
    :cond_2
    :goto_1
    const/16 v2, 0xf

    aput-boolean v1, v5, v2

    return v0

    .line 647
    :cond_3
    const/4 v7, 0x4

    const/4 v8, 0x1

    :try_start_5
    aput-boolean v8, v5, v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_1

    .line 650
    :try_start_6
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 657
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    const/4 v0, 0x5

    aput-boolean v1, v5, v0

    if-eqz v2, :cond_5

    .line 660
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v5, v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move v0, v1

    .line 663
    goto :goto_1

    .line 661
    :catch_1
    move-exception v0

    .line 662
    const-string v2, "close() failed"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x7

    aput-boolean v1, v5, v0

    move v0, v1

    .line 663
    goto :goto_1

    .line 661
    :catch_2
    move-exception v2

    .line 662
    const-string v3, "close() failed"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0xa

    aput-boolean v1, v5, v2

    goto :goto_1

    .line 657
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    const/16 v3, 0xb

    aput-boolean v1, v5, v3

    if-eqz v2, :cond_4

    .line 660
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v5, v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 663
    :cond_4
    :goto_3
    const/16 v2, 0xe

    aput-boolean v1, v5, v2

    throw v0

    .line 661
    :catch_3
    move-exception v2

    .line 662
    const-string v3, "close() failed"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0xd

    aput-boolean v1, v5, v2

    goto :goto_3

    .line 657
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 652
    :catch_4
    move-exception v0

    move-object v2, v0

    move v0, v4

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move v0, v4

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x11

    aget-object v11, v0, v2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".readAllRecords()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 525
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v9, v11, v1

    if-eqz v0, :cond_4

    aput-boolean v9, v11, v9

    move v0, v9

    :goto_0
    const-string v1, "vehicle id cannot be null"

    invoke-direct {p0, v0, v12, v1}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 533
    :try_start_0
    const-string v7, "odometer"

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Records"

    sget-object v2, Lcom/github/wdkapps/fillup/GasLog;->RECORDS_TABLE_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 545
    const/4 v0, 0x3

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v11, v0

    if-eqz v1, :cond_2

    .line 546
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v11, v2

    if-eqz v0, :cond_2

    .line 548
    :cond_1
    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/GasLog;->getRecordFromCursor(Landroid/database/Cursor;)Lcom/github/wdkapps/fillup/GasRecord;

    move-result-object v0

    .line 549
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v11, v2

    if-nez v0, :cond_1

    .line 555
    :cond_2
    invoke-static {v13}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    const/4 v0, 0x6

    aput-boolean v9, v11, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x7

    aput-boolean v9, v11, v0

    .line 565
    :cond_3
    :goto_1
    const/16 v0, 0xd

    aput-boolean v9, v11, v0

    return-object v13

    .line 525
    :cond_4
    const/4 v0, 0x2

    aput-boolean v9, v11, v0

    move v0, v1

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 558
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 561
    const/16 v0, 0x8

    aput-boolean v9, v11, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x9

    aput-boolean v9, v11, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    const/16 v2, 0xa

    aput-boolean v9, v11, v2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v1, 0xb

    aput-boolean v9, v11, v1

    :cond_5
    const/16 v1, 0xc

    aput-boolean v9, v11, v1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 557
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public readAllVehicles()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v10, v0, v1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".readAllVehicles()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 360
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 364
    :try_start_0
    const-string v7, "name"

    .line 365
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Vehicles"

    sget-object v2, Lcom/github/wdkapps/fillup/GasLog;->VEHICLES_TABLE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 374
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v10, v0

    if-eqz v1, :cond_2

    .line 375
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    if-eqz v0, :cond_2

    .line 377
    :cond_1
    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/GasLog;->getVehicleFromCursor(Landroid/database/Cursor;)Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v0

    .line 378
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 386
    :cond_2
    const/4 v0, 0x3

    aput-boolean v13, v10, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x4

    aput-boolean v13, v10, v0

    .line 390
    :cond_3
    :goto_0
    const/16 v0, 0xa

    aput-boolean v13, v10, v0

    return-object v12

    .line 382
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 383
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    const/4 v0, 0x5

    aput-boolean v13, v10, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x6

    aput-boolean v13, v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    const/4 v2, 0x7

    aput-boolean v13, v10, v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x8

    aput-boolean v13, v10, v1

    :cond_4
    const/16 v1, 0x9

    aput-boolean v13, v10, v1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 382
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public readCurrentOdometer(Lcom/github/wdkapps/fillup/Vehicle;)I
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xe

    aget-object v11, v0, v2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".readCurrentOdometer()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v8, v11, v1

    if-eqz v0, :cond_2

    aput-boolean v8, v11, v8

    move v0, v8

    :goto_0
    const-string v1, "vehicle id cannot be null"

    invoke-direct {p0, v0, v12, v1}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v9, -0x1

    .line 439
    :try_start_0
    const-string v0, "MAX(odometer)"

    .line 440
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MAX(odometer)"

    aput-object v1, v2, v0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Records"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 449
    const/4 v0, 0x3

    const/4 v1, 0x1

    :try_start_1
    aput-boolean v1, v11, v0

    if-eqz v2, :cond_5

    .line 450
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v11, v1

    if-eqz v0, :cond_5

    .line 452
    :goto_1
    const-string v0, "MAX(odometer)"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 453
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v11, v3
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_4

    .line 459
    :goto_2
    const/4 v1, 0x6

    aput-boolean v8, v11, v1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x7

    aput-boolean v8, v11, v1

    .line 463
    :cond_1
    :goto_3
    const/16 v1, 0xd

    aput-boolean v8, v11, v1

    return v0

    .line 431
    :cond_2
    const/4 v0, 0x2

    aput-boolean v8, v11, v0

    move v0, v1

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    move v0, v9

    .line 457
    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    const/16 v1, 0x8

    aput-boolean v8, v11, v1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x9

    aput-boolean v8, v11, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v10

    :goto_5
    const/16 v1, 0xa

    aput-boolean v8, v11, v1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/16 v1, 0xb

    aput-boolean v8, v11, v1

    :cond_3
    const/16 v1, 0xc

    aput-boolean v8, v11, v1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 456
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v9

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_4
    move v9, v0

    goto :goto_1

    :cond_5
    move v0, v9

    goto :goto_2
.end method

.method public updateRecord(Lcom/github/wdkapps/fillup/GasRecord;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x10

    aget-object v3, v0, v3

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".updateRecord()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "record id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 503
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/GasLog;->getContentValues(Lcom/github/wdkapps/fillup/GasRecord;)Landroid/content/ContentValues;

    move-result-object v0

    .line 504
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Records"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 507
    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-lez v0, :cond_2

    const/4 v0, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    const/4 v2, 0x6

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 514
    :goto_2
    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    return v0

    .line 500
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 507
    :cond_2
    const/4 v0, 0x5

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v2

    move-object v2, v9

    .line 509
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteConstraintException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const v5, 0x7f070088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 511
    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v2

    move-object v2, v9

    .line 512
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 511
    :catch_2
    move-exception v2

    goto :goto_4

    .line 508
    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method public updateVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xb

    aget-object v3, v0, v3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".updateVehicle()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const-string v5, "vehicle id cannot be null"

    invoke-direct {p0, v0, v4, v5}, Lcom/github/wdkapps/fillup/GasLog;->ASSERT(ZLjava/lang/String;Ljava/lang/String;)V

    .line 339
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/GasLog;->getContentValues(Lcom/github/wdkapps/fillup/Vehicle;)Landroid/content/ContentValues;

    move-result-object v0

    .line 340
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLog;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Vehicles"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 343
    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    const/4 v2, 0x6

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 350
    :goto_2
    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    return v0

    .line 336
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, 0x5

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v3, v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v2

    move-object v2, v9

    .line 345
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteConstraintException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasLog;->context:Landroid/content/Context;

    const v5, 0x7f070087

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 347
    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v2

    move-object v2, v9

    .line 348
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 347
    :catch_2
    move-exception v2

    goto :goto_4

    .line 344
    :catch_3
    move-exception v2

    goto :goto_3
.end method
