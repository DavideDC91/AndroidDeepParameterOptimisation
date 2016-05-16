.class LAn/stop/AnstopDbAdapter$DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnstopDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/AnstopDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataBaseHelper"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x28d63a8294a4494eL


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x5

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/AnstopDbAdapter$DataBaseHelper"

    const-wide v2, 0x2b8a1debd770896fL    # 5.970252886582376E-99

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 157
    const-string v1, "Anstop_db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 158
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 163
    const-string v1, "create table times (_id integer primary key autoincrement, title text not null, body text not null, mode int not null, start_systime int null, stop_systime int null, elapsed int not null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v1, "create table laps (_id integer primary key autoincrement, times_id int not null, lap_elapsed int not null, lap_systime int not null, lap_comment text null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v1, "create index \"laps~t\" ON laps(times_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v1, "create table temp_laps (_id integer primary key autoincrement, lap_elapsed int not null, lap_systime int not null, lap_comment text null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 182
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    packed-switch p2, :pswitch_data_0

    .line 206
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 186
    :pswitch_0
    const-string v1, "DROP TABLE IF EXISTS times"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-boolean v2, v0, v2

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v1, "create table laps (_id integer primary key autoincrement, times_id int not null, lap_elapsed int not null, lap_systime int not null, lap_comment text null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v1, "create index \"laps~t\" ON laps(times_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v1, "alter table times add column mode int;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v1, "alter table times add column start_systime int;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v1, "alter table times add column stop_systime int;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v2, v0, v3

    .line 201
    :pswitch_2
    const-string v1, "create table temp_laps (_id integer primary key autoincrement, lap_elapsed int not null, lap_systime int not null, lap_comment text null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v1, "alter table times add column elapsed int;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
