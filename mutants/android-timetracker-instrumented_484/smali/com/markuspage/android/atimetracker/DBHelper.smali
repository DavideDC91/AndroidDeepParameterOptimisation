.class public Lcom/markuspage/android/atimetracker/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final CREATE_TASK_TABLE:Ljava/lang/String; = "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

.field public static final DBVERSION:I = 0x5

.field public static final END:Ljava/lang/String; = "end"

.field public static final ID_NAME:Ljava/lang/String; = "_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final RANGES_TABLE:Ljava/lang/String; = "ranges"

.field public static final RANGE_COLUMNS:[Ljava/lang/String;

.field public static final START:Ljava/lang/String; = "start"

.field public static final TASK_COLUMNS:[Ljava/lang/String;

.field public static final TASK_ID:Ljava/lang/String; = "task_id"

.field public static final TASK_NAME:Ljava/lang/String; = "name"

.field public static final TASK_TABLE:Ljava/lang/String; = "tasks"

.field public static final TIMETRACKER_DB_NAME:Ljava/lang/String; = "timetracker.db"

.field private static instance:Lcom/markuspage/android/atimetracker/DBHelper;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/DBHelper;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/DBHelper"

    const-wide v2, 0x52ff08c0caeb4ac5L    # 6.321776515725656E91

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBHelper;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 37
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "start"

    aput-object v2, v1, v3

    const-string v2, "end"

    aput-object v2, v1, v4

    sput-object v1, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 39
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ROWID"

    aput-object v2, v1, v3

    const-string v2, "name"

    aput-object v2, v1, v4

    sput-object v1, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    aput-boolean v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/DBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 48
    const-string v1, "timetracker.db"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    sput-object p0, Lcom/markuspage/android/atimetracker/DBHelper;->instance:Lcom/markuspage/android/atimetracker/DBHelper;

    .line 50
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method public static getInstance()Lcom/markuspage/android/atimetracker/DBHelper;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 57
    sget-object v1, Lcom/markuspage/android/atimetracker/DBHelper;->instance:Lcom/markuspage/android/atimetracker/DBHelper;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/DBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 67
    const-string v1, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tasks"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v1, "CREATE TABLE ranges(task_id INTEGER NOT NULL,start INTEGER NOT NULL,end INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    aput-boolean v5, v0, v4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 77
    aput-boolean v4, v0, v5

    if-ge p2, v7, :cond_2

    .line 78
    const-string v1, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "temp"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v1, "insert into temp(rowid,name) select rowid,name from tasks;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v1, "drop table tasks;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v1, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "tasks"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v1, "insert into tasks(_id,name) select rowid,name from temp;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v1, "drop table temp;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 96
    :cond_1
    :goto_0
    aput-boolean v4, v0, v7

    return-void

    .line 86
    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-ge p2, v1, :cond_1

    .line 87
    const-string v1, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "temp"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v1, "insert into temp(_id,name) select rowid,name from tasks;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v1, "drop table tasks;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v1, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "tasks"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v1, "insert into tasks(_id,name) select _id,name from temp;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v1, "drop table temp;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v4, v0, v6

    goto :goto_0
.end method
