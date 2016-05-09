.class public Lcom/markuspage/android/atimetracker/DBBackup;
.super Landroid/os/AsyncTask;
.source "DBBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markuspage/android/atimetracker/DBBackup$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final SETMAX:I = 0x2

.field private static final serialVersionUID:J = -0x4b975970d1543eb6L


# instance fields
.field private callback:Lcom/markuspage/android/atimetracker/Tasks;

.field private cancel:Z

.field private fail_string:I

.field private message:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private result:Lcom/markuspage/android/atimetracker/DBBackup$Result;

.field private success_string:I


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/DBBackup"

    const-wide v2, -0x3df840fad99242bdL    # -1.2748629197717413E10

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/app/ProgressDialog;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-boolean v2, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->message:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->callback:Lcom/markuspage/android/atimetracker/Tasks;

    .line 60
    iput-object p2, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    .line 61
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 62
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 63
    iput p3, p0, Lcom/markuspage/android/atimetracker/DBBackup;->success_string:I

    .line 64
    iput p4, p0, Lcom/markuspage/android/atimetracker/DBBackup;->fail_string:I

    .line 65
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private copyTask(Landroid/database/sqlite/SQLiteDatabase;Lcom/markuspage/android/atimetracker/Task;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 191
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    aput-boolean v4, v0, v4

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 195
    const-string v2, "name"

    invoke-virtual {p2}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "tasks"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 197
    invoke-virtual {p2}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v1

    long-to-int v2, v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/markuspage/android/atimetracker/DBBackup;->copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V

    .line 198
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V
    .locals 12

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v8, v0, v1

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 148
    const-string v1, "ranges"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v3, "task_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 149
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 148
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 150
    const-string v1, "ranges"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v3, "task_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 151
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-eqz v3, :cond_4

    .line 156
    :cond_1
    iget-boolean v3, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 188
    :goto_0
    return-void

    .line 159
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 160
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-nez v3, :cond_3

    .line 161
    new-instance v3, Lcom/markuspage/android/atimetracker/TimeRange;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    .line 163
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-nez v3, :cond_1

    .line 165
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-eqz v0, :cond_8

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    .line 169
    :cond_5
    iget-boolean v3, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-eqz v3, :cond_6

    const/16 v0, 0x9

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_0

    .line 172
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 173
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 174
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 175
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v10, 0xa

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    if-nez v3, :cond_7

    .line 176
    new-instance v3, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v10, 0xb

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    if-nez v3, :cond_7

    .line 178
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 179
    const-string v3, "task_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v3, "start"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v3, "end"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v3, "ranges"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    .line 185
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-nez v3, :cond_5

    .line 187
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 188
    const/16 v0, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto/16 :goto_0
.end method

.method private readTasks(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/markuspage/android/atimetracker/Task;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    aput-boolean v5, v0, v6

    if-eqz v2, :cond_2

    .line 204
    :cond_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 205
    new-instance v3, Lcom/markuspage/android/atimetracker/Task;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/markuspage/android/atimetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 206
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    aput-boolean v5, v0, v5

    if-nez v2, :cond_1

    .line 209
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, [Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/DBBackup;->doInBackground([Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 13

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object v9, v0, v1

    .line 69
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 70
    const/4 v1, 0x1

    aget-object v10, p1, v1

    .line 73
    const-string v1, "tasks"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 74
    invoke-direct {p0, v1}, Lcom/markuspage/android/atimetracker/DBBackup;->readTasks(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v11

    .line 77
    const-string v2, "tasks"

    sget-object v3, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid"

    move-object v1, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lcom/markuspage/android/atimetracker/DBBackup;->readTasks(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v4

    .line 80
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v2, v6

    double-to-int v5, v2

    .line 86
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/markuspage/android/atimetracker/Task;

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 89
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v2, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v9, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x3

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/markuspage/android/atimetracker/Task;

    .line 90
    iget-boolean v8, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    const/4 v11, 0x4

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    if-eqz v8, :cond_1

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 106
    :goto_2
    return-object v0

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x6

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    if-eqz v8, :cond_3

    .line 94
    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v7

    invoke-direct {p0, v0, v3, v10, v7}, Lcom/markuspage/android/atimetracker/DBBackup;->copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V

    .line 95
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v9, v3

    .line 100
    :goto_3
    const/16 v3, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v9, v3

    if-nez v2, :cond_2

    .line 101
    invoke-direct {p0, v0, v1, v10}, Lcom/markuspage/android/atimetracker/DBBackup;->copyTask(Landroid/database/sqlite/SQLiteDatabase;Lcom/markuspage/android/atimetracker/Task;Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 103
    :cond_2
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto/16 :goto_0

    .line 97
    :cond_3
    const/16 v2, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v9, v2

    goto :goto_1

    .line 104
    :cond_4
    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup$Result;->SUCCESS:Lcom/markuspage/android/atimetracker/DBBackup$Result;

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/DBBackup;->result:Lcom/markuspage/android/atimetracker/DBBackup$Result;

    .line 105
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/DBBackup;->message:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 142
    iput-boolean v2, p0, Lcom/markuspage/android/atimetracker/DBBackup;->cancel:Z

    .line 143
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/DBBackup;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 111
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->callback:Lcom/markuspage/android/atimetracker/Tasks;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/DBBackup;->result:Lcom/markuspage/android/atimetracker/DBBackup$Result;

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/DBBackup;->message:Ljava/lang/String;

    iget v4, p0, Lcom/markuspage/android/atimetracker/DBBackup;->success_string:I

    iget v5, p0, Lcom/markuspage/android/atimetracker/DBBackup;->fail_string:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/markuspage/android/atimetracker/Tasks;->finishedCopy(Lcom/markuspage/android/atimetracker/DBBackup$Result;Ljava/lang/String;II)V

    .line 113
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/DBBackup;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/DBBackup;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 117
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-boolean v3, v0, v4

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void

    .line 119
    :pswitch_0
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-boolean v3, v0, v3

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    aput-boolean v3, v0, v5

    goto :goto_0

    .line 126
    :pswitch_1
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/DBBackup;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
