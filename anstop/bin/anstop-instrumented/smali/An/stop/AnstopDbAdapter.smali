.class public LAn/stop/AnstopDbAdapter;
.super Ljava/lang/Object;
.source "AnstopDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAn/stop/AnstopDbAdapter$DataBaseHelper;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "Anstop_db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "times"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final FIELD_LAPS_COMMENT:Ljava/lang/String; = "lap_comment"

.field private static final FIELD_LAPS_ELAPSED:Ljava/lang/String; = "lap_elapsed"

.field private static final FIELD_LAPS_SYSTIME:Ljava/lang/String; = "lap_systime"

.field private static final FIELD_LAPS_TIMES_ROWID:Ljava/lang/String; = "times_id"

.field public static final FIELD_TIMES_ELAPSED:Ljava/lang/String; = "elapsed"

.field public static final FIELD_TIMES_MODE:Ljava/lang/String; = "mode"

.field public static final FIELD_TIMES_START_SYSTIME:Ljava/lang/String; = "start_systime"

.field public static final FIELD_TIMES_STOP_SYSTIME:Ljava/lang/String; = "stop_systime"

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TABLE_LAPS:Ljava/lang/String; = "laps"

.field private static final TABLE_TEMP_LAPS:Ljava/lang/String; = "temp_laps"

.field private static final serialVersionUID:J = -0x249cb04da8ae75c2L


# instance fields
.field private dbHelper:LAn/stop/AnstopDbAdapter$DataBaseHelper;

.field private fmt_dow_meddate_time:Ljava/lang/StringBuffer;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/16 v0, 0xe

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    const/16 v1, 0x1d

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/AnstopDbAdapter"

    const-wide v2, -0x5efa4ff8bcada9f5L    # -1.32508541888583E-149

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xd

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

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    .line 212
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 221
    iget-object v1, p0, LAn/stop/AnstopDbAdapter;->dbHelper:LAn/stop/AnstopDbAdapter$DataBaseHelper;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->close()V

    .line 222
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public countLaps(J)I
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v9, v0, v1

    .line 478
    iget-object v0, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    cmp-long v1, p1, v6

    aput-boolean v10, v9, v8

    if-eqz v1, :cond_1

    const-string v1, "laps"

    aput-boolean v10, v9, v10

    :goto_0
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "count(_id)"

    aput-object v3, v2, v8

    cmp-long v3, p1, v6

    const/4 v5, 0x3

    aput-boolean v10, v9, v5

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "times_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-boolean v10, v9, v5

    :goto_1
    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 479
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 483
    const/4 v0, 0x6

    aput-boolean v10, v9, v0

    if-nez v1, :cond_3

    .line 484
    const/4 v0, 0x7

    aput-boolean v10, v9, v0

    move v0, v8

    .line 492
    :goto_2
    return v0

    .line 478
    :cond_1
    const-string v1, "temp_laps"

    const/4 v2, 0x2

    aput-boolean v10, v9, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    aput-boolean v10, v9, v3

    move-object v3, v4

    goto :goto_1

    .line 485
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/16 v2, 0x8

    aput-boolean v10, v9, v2

    if-nez v0, :cond_4

    .line 487
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    const/16 v0, 0x9

    aput-boolean v10, v9, v0

    move v0, v8

    goto :goto_2

    .line 490
    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 492
    const/16 v1, 0xa

    aput-boolean v10, v9, v1

    goto :goto_2
.end method

.method public createNew(Ljava/lang/String;Ljava/lang/String;IJJJ)J
    .locals 6

    .prologue
    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 245
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 246
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-lez v2, :cond_3

    .line 248
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 251
    :goto_0
    const-string v2, "mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "start_systime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 254
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_2

    .line 255
    const-string v2, "stop_systime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 256
    :cond_2
    const-string v2, "elapsed"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    iget-object v2, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "times"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2

    .line 250
    :cond_3
    const-string v2, "body"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto :goto_0
.end method

.method public createNewLap(JJJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 455
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 456
    cmp-long v0, p1, v6

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    if-eqz v0, :cond_1

    .line 457
    const-string v0, "times_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aput-boolean v5, v1, v5

    .line 458
    :cond_1
    const-string v0, "lap_elapsed"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    const-string v0, "lap_systime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    iget-object v3, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    cmp-long v0, p1, v6

    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    if-eqz v0, :cond_2

    const-string v0, "laps"

    const/4 v4, 0x3

    aput-boolean v5, v1, v4

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 462
    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    return-void

    .line 461
    :cond_2
    const-string v0, "temp_laps"

    const/4 v4, 0x4

    aput-boolean v5, v1, v4

    goto :goto_0
.end method

.method public createNewLaps(JI[J[J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    sget-object v2, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v2, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v2

    :cond_0
    const/16 v4, 0x8

    aget-object v10, v2, v4

    .line 438
    move-object/from16 v0, p4

    array-length v2, v0

    aput-boolean v11, v10, v3

    move/from16 v0, p3

    if-lt v2, v0, :cond_1

    move-object/from16 v0, p5

    array-length v2, v0

    aput-boolean v11, v10, v11

    move/from16 v0, p3

    if-ge v2, v0, :cond_2

    .line 439
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v3, 0x2

    aput-boolean v11, v10, v3

    throw v2

    .line 440
    :cond_2
    const/4 v2, 0x3

    aput-boolean v11, v10, v2

    move v2, v3

    :goto_0
    const/4 v3, 0x4

    aput-boolean v11, v10, v3

    move/from16 v0, p3

    if-ge v2, v0, :cond_3

    .line 441
    aget-wide v6, p4, v2

    aget-wide v8, p5, v2

    move-object v3, p0

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, LAn/stop/AnstopDbAdapter;->createNewLap(JJJ)V

    .line 440
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    aput-boolean v11, v10, v3

    goto :goto_0

    .line 442
    :cond_3
    const/4 v2, 0x6

    aput-boolean v11, v10, v2

    return-void
.end method

.method public delete(J)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 268
    iget-object v0, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "times"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v0, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    aput-boolean v1, v3, v2

    if-lez v0, :cond_2

    aput-boolean v1, v3, v1

    move v0, v1

    .line 270
    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    .line 272
    iget-object v2, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "laps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "times_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    aput-boolean v1, v3, v7

    .line 274
    :cond_1
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    return v0

    .line 269
    :cond_2
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public deleteTemporaryLaps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 468
    iget-object v1, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "temp_laps"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public fetch(J)Landroid/database/Cursor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v10, v0, v7

    .line 292
    iget-object v0, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "times"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v11

    const-string v4, "title"

    aput-object v4, v3, v1

    const-string v4, "body"

    aput-object v4, v3, v12

    const/4 v4, 0x3

    const-string v6, "mode"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "start_systime"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "stop_systime"

    aput-object v6, v3, v4

    const-string v4, "elapsed"

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 293
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    aput-boolean v1, v10, v11

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    aput-boolean v1, v10, v1

    .line 301
    :cond_1
    aput-boolean v1, v10, v12

    return-object v0
.end method

.method public fetchAll()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v8, v0, v1

    .line 280
    iget-object v0, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "times"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v4, "title"

    aput-object v4, v2, v10

    const/4 v4, 0x2

    const-string v5, "body"

    aput-object v5, v2, v4

    const-string v7, "_id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-boolean v10, v8, v9

    return-object v0
.end method

.method public fetchAllLaps(J[J[J)I
    .locals 9

    .prologue
    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v8, v0, v1

    .line 508
    iget-object v0, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    if-eqz v1, :cond_1

    const-string v1, "laps"

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lap_elapsed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lap_systime"

    aput-object v4, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "times_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    .line 509
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 513
    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v8, v0

    if-nez v1, :cond_3

    .line 514
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    .line 532
    :goto_2
    return v0

    .line 508
    :cond_1
    const-string v1, "temp_laps"

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    goto :goto_1

    .line 516
    :cond_3
    const/4 v0, 0x0

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-nez v2, :cond_4

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto :goto_2

    .line 523
    :cond_4
    array-length v2, p3

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-lt v0, v2, :cond_5

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 530
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 532
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto :goto_2

    .line 525
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p3, v0

    .line 526
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v0

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 529
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-nez v2, :cond_4

    goto :goto_3
.end method

.method public getRowAndFormat(J)[Ljava/lang/String;
    .locals 23

    .prologue
    sget-object v4, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v4, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v4

    :cond_0
    const/4 v5, 0x7

    aget-object v19, v4, v5

    .line 319
    const/16 v17, 0x0

    .line 320
    const/4 v4, 0x0

    .line 322
    :try_start_0
    invoke-virtual/range {p0 .. p2}, LAn/stop/AnstopDbAdapter;->fetch(J)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 323
    const/4 v4, 0x2

    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 324
    const/4 v4, 0x0

    :try_start_2
    const-string v5, "title"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 326
    const-string v4, "body"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 327
    const-string v4, "mode"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 328
    const-string v4, "elapsed"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 329
    const-string v4, "start_systime"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 331
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v19, v5

    if-eqz v4, :cond_2

    .line 334
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v19, v4

    .line 409
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v4, 0x19

    const/4 v5, 0x1

    aput-boolean v5, v19, v4
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v4, v17

    .line 416
    :cond_1
    :goto_1
    const/16 v5, 0x1c

    const/4 v6, 0x1

    aput-boolean v6, v19, v5

    return-object v4

    .line 345
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, LAn/stop/AnstopDbAdapter;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    const/4 v5, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v19, v5

    if-nez v4, :cond_3

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, LAn/stop/Anstop;->buildDateFormatDOWmedium(Landroid/content/Context;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, LAn/stop/AnstopDbAdapter;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v19, v4

    .line 347
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    new-instance v4, LAn/stop/Clock$LapFormatter;

    invoke-direct {v4}, LAn/stop/Clock$LapFormatter;-><init>()V

    .line 352
    move-object/from16 v0, p0

    iget-object v7, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-boolean v9, v19, v8

    if-ne v7, v6, :cond_b

    .line 355
    move-object/from16 v0, p0

    iget-object v6, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    .line 358
    :goto_2
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    if-nez v6, :cond_4

    .line 363
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, LAn/stop/Clock$LapFormatter;->formatTimeLap(Ljava/lang/StringBuilder;ZIIIIIJJ[J)V

    .line 364
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    .line 368
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    if-nez v6, :cond_5

    .line 370
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 371
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    const/16 v9, 0xa

    const/4 v10, 0x1

    aput-boolean v10, v19, v9

    if-eqz v8, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v8, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 374
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v0, p0

    iget-object v8, v0, LAn/stop/AnstopDbAdapter;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    invoke-static {v8, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0xb

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    .line 380
    :cond_5
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 381
    const/16 v7, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v19, v8

    if-lez v7, :cond_7

    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v19, v8

    if-lez v7, :cond_6

    .line 384
    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    .line 385
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    .line 389
    :cond_7
    invoke-virtual/range {p0 .. p2}, LAn/stop/AnstopDbAdapter;->countLaps(J)I

    move-result v6

    .line 390
    const/16 v7, 0x11

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    if-lez v6, :cond_a

    .line 392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x12

    const/4 v9, 0x1

    aput-boolean v9, v19, v8

    if-lez v7, :cond_8

    .line 393
    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x13

    const/4 v8, 0x1

    aput-boolean v8, v19, v7

    .line 394
    :cond_8
    new-array v7, v6, [J

    .line 395
    new-array v8, v6, [J

    .line 396
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7, v8}, LAn/stop/AnstopDbAdapter;->fetchAllLaps(J[J[J)I

    .line 397
    move-object/from16 v0, p0

    iget-object v9, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    .line 398
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9}, LAn/stop/Anstop;->readLapFormatPrefFlags(Landroid/content/SharedPreferences;)I

    move-result v9

    .line 399
    const/16 v10, 0x14

    const/4 v11, 0x1

    aput-boolean v11, v19, v10

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v19, v11

    if-eq v9, v10, :cond_9

    .line 400
    move-object/from16 v0, p0

    iget-object v10, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    .line 401
    invoke-static {v10}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, LAn/stop/Clock$LapFormatter;->setLapFormat(ILjava/text/DateFormat;)V

    const/16 v9, 0x16

    const/4 v10, 0x1

    aput-boolean v10, v19, v9

    .line 402
    :cond_9
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, LAn/stop/Clock$LapFormatter;->formatTimeAllLaps(Ljava/lang/StringBuilder;I[J[J)V

    const/16 v4, 0x17

    const/4 v6, 0x1

    aput-boolean v6, v19, v4

    .line 406
    :cond_a
    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/16 v4, 0x18

    const/4 v5, 0x1

    aput-boolean v5, v19, v4
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception v4

    move-object/from16 v5, v18

    move-object/from16 v4, v17

    .line 412
    :goto_3
    const/16 v6, 0x1a

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    if-eqz v5, :cond_1

    .line 413
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v19, v5

    goto/16 :goto_1

    .line 357
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v19, v6
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 411
    :catch_1
    move-exception v5

    move-object v5, v4

    move-object/from16 v4, v17

    goto :goto_3

    :catch_2
    move-exception v4

    move-object/from16 v5, v18

    move-object/from16 v4, v17

    goto :goto_3
.end method

.method public open()LAn/stop/AnstopDbAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/AnstopDbAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/AnstopDbAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 215
    new-instance v1, LAn/stop/AnstopDbAdapter$DataBaseHelper;

    iget-object v2, p0, LAn/stop/AnstopDbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, LAn/stop/AnstopDbAdapter$DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAn/stop/AnstopDbAdapter;->dbHelper:LAn/stop/AnstopDbAdapter$DataBaseHelper;

    .line 216
    iget-object v1, p0, LAn/stop/AnstopDbAdapter;->dbHelper:LAn/stop/AnstopDbAdapter$DataBaseHelper;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, LAn/stop/AnstopDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 217
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-object p0
.end method
