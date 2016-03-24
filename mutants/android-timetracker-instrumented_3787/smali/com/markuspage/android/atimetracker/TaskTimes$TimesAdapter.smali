.class Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markuspage/android/atimetracker/TaskTimes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x789d974194a06819L


# instance fields
.field private dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

.field private savedContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/markuspage/android/atimetracker/TimeRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/16 v0, 0x16

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const/16 v2, 0xd

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/TaskTimes$TimesAdapter"

    const-wide v2, 0x19a1d971310e2924L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x15

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/markuspage/android/atimetracker/TaskTimes;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 210
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    .line 212
    new-instance v1, Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-direct {v1, p2}, Lcom/markuspage/android/atimetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    .line 213
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    .line 215
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;Lcom/markuspage/android/atimetracker/TimeRange;I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->assignTimeToTaskAt(Lcom/markuspage/android/atimetracker/TimeRange;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addSeparators()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x11

    aget-object v6, v0, v3

    .line 472
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 473
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 474
    aput-boolean v12, v6, v1

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    aput-boolean v12, v6, v12

    if-ge v1, v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    .line 476
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 477
    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 478
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 479
    aput-boolean v12, v6, v13

    if-lt v5, v3, :cond_1

    const/4 v8, 0x3

    aput-boolean v12, v6, v8

    if-eq v4, v2, :cond_3

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v3, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v8

    const-wide/16 v10, -0x63

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    aput-boolean v12, v6, v0

    move v0, v1

    move v2, v5

    move v1, v4

    .line 474
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    aput-boolean v12, v6, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 486
    :cond_2
    aput-boolean v12, v6, v14

    return-void

    :cond_3
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private assignTimeToTaskAt(Lcom/markuspage/android/atimetracker/TimeRange;I)V
    .locals 10

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v2, v0, v1

    .line 335
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->getTaskNames()Landroid/database/Cursor;

    move-result-object v3

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    if-eqz v0, :cond_1

    .line 337
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    if-lez p2, :cond_1

    .line 338
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 339
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 343
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    if-nez v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 346
    const-string v0, "start = ? AND task_id = ?"

    .line 348
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-nez v1, :cond_5

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND end ISNULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 351
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    .line 352
    invoke-virtual {v7}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "task_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 362
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 363
    const-string v7, "task_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v4, "ranges"

    invoke-virtual {v5, v4, v6, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 366
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 367
    const/4 v0, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v2, v0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v0, v4, v6

    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v0, v4, v6

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-nez v0, :cond_3

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    const/16 v0, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 373
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 374
    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    return-void

    .line 355
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND end = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 357
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    .line 358
    invoke-virtual {v7}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "task_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    .line 359
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    goto/16 :goto_1
.end method

.method private insert(Ljava/util/ArrayList;Lcom/markuspage/android/atimetracker/TimeRange;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/markuspage/android/atimetracker/TimeRange;",
            ">;",
            "Lcom/markuspage/android/atimetracker/TimeRange;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x63

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xf

    aget-object v2, v0, v2

    .line 435
    aput-boolean v8, v2, v1

    .line 436
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    aput-boolean v8, v2, v8

    if-ge v1, v0, :cond_1

    .line 437
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0, p2}, Lcom/markuspage/android/atimetracker/TimeRange;->compareTo(Lcom/markuspage/android/atimetracker/TimeRange;)I

    move-result v0

    const/4 v3, -0x1

    aput-boolean v8, v2, v4

    if-eq v0, v3, :cond_4

    const/4 v0, 0x3

    aput-boolean v8, v2, v0

    .line 441
    :cond_1
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 442
    const/4 v0, 0x5

    aput-boolean v8, v2, v0

    if-lez v1, :cond_5

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 444
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 445
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    .line 446
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 447
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 448
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 449
    invoke-virtual {p2}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aput-boolean v8, v2, v9

    if-ne v4, v5, :cond_2

    .line 451
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x7

    aput-boolean v8, v2, v4

    if-eq v0, v3, :cond_3

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v3, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {p2}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v0, 0x8

    aput-boolean v8, v2, v0

    :cond_3
    const/16 v0, 0x9

    aput-boolean v8, v2, v0

    .line 457
    :goto_1
    const/16 v0, 0xb

    aput-boolean v8, v2, v0

    return-void

    .line 436
    :cond_4
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x4

    aput-boolean v8, v2, v1

    move v1, v0

    goto :goto_0

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v3, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {p2}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v0, 0xa

    aput-boolean v8, v2, v0

    goto :goto_1
.end method

.method private startOfDay(J)J
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 461
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 462
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 463
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 465
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 466
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 467
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method


# virtual methods
.method public addTimeRange(JJ)V
    .locals 7

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 422
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 423
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 424
    const-string v3, "task_id"

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v3, "start"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    const-string v3, "end"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string v3, "ranges"

    const-string v4, "end"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 428
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v2, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    invoke-direct {p0, v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->insert(Ljava/util/ArrayList;Lcom/markuspage/android/atimetracker/TimeRange;)V

    .line 429
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 430
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 219
    aput-boolean v2, v0, v1

    return v1
.end method

.method public clear()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 418
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 419
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 228
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->close()V

    .line 229
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public deleteTimeRange(Lcom/markuspage/android/atimetracker/TimeRange;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v12

    .line 232
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 234
    const-string v0, "start = ? AND task_id = ?"

    .line 236
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    aput-boolean v8, v2, v9

    if-nez v1, :cond_3

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND end ISNULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    new-array v0, v10, [Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    .line 240
    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    aput-boolean v8, v2, v8

    .line 250
    :goto_0
    const-string v4, "ranges"

    invoke-virtual {v3, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 252
    const/4 v0, -0x1

    aput-boolean v8, v2, v11

    if-le v1, v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 257
    aput-boolean v8, v2, v12

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v0, v4, v6

    const/4 v3, 0x5

    aput-boolean v8, v2, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x6

    aput-boolean v8, v2, v3

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v0, v4, v6

    const/4 v3, 0x7

    aput-boolean v8, v2, v3

    if-nez v0, :cond_2

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v0, 0x8

    aput-boolean v8, v2, v0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 263
    const/16 v0, 0x9

    aput-boolean v8, v2, v0

    return-void

    .line 243
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND end = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    new-array v0, v11, [Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    .line 246
    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 247
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    aput-boolean v8, v2, v10

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 323
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 327
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 331
    int-to-long v2, p1

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method protected getTaskNames()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v8, v0, v1

    .line 521
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 522
    const-string v1, "tasks"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const-string v7, "name"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 524
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v10

    .line 293
    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 294
    const/4 v0, 0x0

    aput-boolean v8, v2, v0

    if-nez v1, :cond_1

    .line 295
    aput-boolean v8, v2, v8

    .line 319
    :goto_0
    return-object p2

    :cond_1
    move-object v0, v1

    .line 297
    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    .line 298
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v3, v4, v6

    aput-boolean v8, v2, v9

    if-nez v3, :cond_4

    .line 300
    const/4 v1, 0x3

    aput-boolean v8, v2, v1

    if-eqz p2, :cond_2

    instance-of v1, p2, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-boolean v8, v2, v3

    if-nez v1, :cond_3

    .line 301
    :cond_2
    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$100()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 303
    const/16 v1, -0x100

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 305
    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$200()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v8, v2, v1

    .line 309
    :goto_1
    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$200()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const/4 v0, 0x7

    aput-boolean v8, v2, v0

    goto :goto_0

    .line 307
    :cond_3
    check-cast p2, Landroid/widget/TextView;

    const/4 v1, 0x6

    aput-boolean v8, v2, v1

    goto :goto_1

    .line 313
    :cond_4
    aput-boolean v8, v2, v10

    if-eqz p2, :cond_5

    instance-of v0, p2, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;

    const/16 v3, 0x9

    aput-boolean v8, v2, v3

    if-nez v0, :cond_6

    .line 314
    :cond_5
    new-instance p2, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    move-object v0, v1

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-direct {p2, p0, v3, v0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;-><init>(Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;Landroid/content/Context;Lcom/markuspage/android/atimetracker/TimeRange;)V

    const/16 v0, 0xa

    aput-boolean v8, v2, v0

    .line 318
    :goto_2
    check-cast v1, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {p2, v1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->setTimeRange(Lcom/markuspage/android/atimetracker/TimeRange;)V

    .line 319
    const/16 v0, 0xc

    aput-boolean v8, v2, v0

    goto/16 :goto_0

    .line 316
    :cond_6
    check-cast p2, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;

    const/16 v0, 0xb

    aput-boolean v8, v2, v0

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v8

    .line 224
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    cmp-long v0, v4, v6

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    aput-boolean v1, v3, v8

    move v0, v2

    goto :goto_0
.end method

.method protected loadTimes(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 266
    const-string v1, "task_id = ?"

    new-array v2, v5, [Ljava/lang/String;

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 266
    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->loadTimes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    aput-boolean v5, v0, v4

    return-void
.end method

.method protected loadTimes(IJJ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 271
    const-string v1, "task_id = ? AND start < ? AND start > ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 273
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    .line 274
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 271
    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->loadTimes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 275
    aput-boolean v6, v0, v5

    return-void
.end method

.method protected loadTimes(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v8, v0, v1

    .line 278
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 279
    const-string v1, "ranges"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v7, "start,end"

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    aput-boolean v9, v8, v10

    if-eqz v0, :cond_2

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v4, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 284
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    aput-boolean v9, v8, v9

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    const/4 v5, 0x2

    aput-boolean v9, v8, v5

    :goto_0
    invoke-direct {v4, v6, v7, v0, v1}, Lcom/markuspage/android/atimetracker/TimeRange;-><init>(JJ)V

    .line 283
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x4

    aput-boolean v9, v8, v1

    if-nez v0, :cond_1

    .line 287
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->addSeparators()V

    .line 289
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 290
    const/4 v0, 0x5

    aput-boolean v9, v8, v0

    return-void

    .line 284
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v5, 0x3

    aput-boolean v9, v8, v5

    goto :goto_0
.end method

.method public updateTimeRange(JJILcom/markuspage/android/atimetracker/TimeRange;)V
    .locals 15

    .prologue
    sget-object v4, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRc:[[Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->$VRi()[[Z

    move-result-object v4

    :cond_0
    const/16 v5, 0x12

    aget-object v6, v4, v5

    .line 489
    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 490
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 491
    const-string v4, "start"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 493
    const-string v4, "start=? AND task_id=?"

    .line 495
    const-wide/16 v10, -0x1

    cmp-long v5, p3, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    if-eqz v5, :cond_1

    .line 496
    const-string v5, "end"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND end=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    .line 499
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    .line 500
    invoke-virtual/range {p6 .. p6}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 508
    :goto_0
    const-string v10, "ranges"

    invoke-virtual {v7, v10, v8, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 511
    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    move/from16 v0, p5

    if-eq v0, v9, :cond_2

    .line 512
    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    .line 517
    :goto_1
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 518
    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    return-void

    .line 503
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND end ISNULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    .line 505
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    goto :goto_0

    .line 514
    :cond_2
    move-object/from16 v0, p6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/markuspage/android/atimetracker/TimeRange;->setStart(J)V

    .line 515
    move-object/from16 v0, p6

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/markuspage/android/atimetracker/TimeRange;->setEnd(J)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    goto :goto_1
.end method
