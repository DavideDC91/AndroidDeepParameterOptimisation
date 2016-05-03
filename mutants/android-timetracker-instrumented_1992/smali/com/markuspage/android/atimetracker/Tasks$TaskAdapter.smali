.class Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markuspage/android/atimetracker/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskAdapter"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x315486bd06a029dbL


# instance fields
.field private currentRangeEnd:J

.field private currentRangeStart:J

.field private dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

.field private savedContext:Landroid/content/Context;

.field protected tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/markuspage/android/atimetracker/Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x14

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const/16 v2, 0xe

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v5

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$TaskAdapter"

    const-wide v2, 0x5f5a48abec0d127cL    # 2.1509346018389546E151

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x13

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 834
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 835
    iput-object p2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->savedContext:Landroid/content/Context;

    .line 836
    new-instance v1, Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-direct {v1, p2}, Lcom/markuspage/android/atimetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    .line 837
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 838
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    .line 839
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$1200(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 826
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 826
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeStart:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$500(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 826
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method private loadTasks()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 849
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeStart:J

    .line 850
    const-string v1, ""

    invoke-direct {p0, v1, v4}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/lang/String;Z)V

    .line 851
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method private loadTasks(Ljava/lang/String;Z)V
    .locals 11

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v8, v0, v1

    .line 902
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 904
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 905
    const-string v1, "tasks"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 908
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    if-eqz v1, :cond_5

    .line 910
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 911
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 912
    new-instance v10, Lcom/markuspage/android/atimetracker/Task;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/markuspage/android/atimetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT SUM(end) - SUM(start) AS total FROM ranges WHERE task_id = ? AND end NOTNULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 914
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v8, v3

    if-eqz v2, :cond_2

    .line 915
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/markuspage/android/atimetracker/Task;->setCollapsed(J)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 917
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 918
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    if-eqz p2, :cond_4

    .line 919
    const-string v1, "ranges"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v3, "task_id = ? AND end ISNULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 922
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-eqz v2, :cond_3

    .line 923
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/markuspage/android/atimetracker/Task;->setStartTime(J)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 925
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    .line 927
    :cond_4
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    if-nez v1, :cond_1

    .line 930
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 931
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 932
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$002(Lcom/markuspage/android/atimetracker/Tasks;Z)Z

    .line 933
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 934
    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    return-void
.end method

.method private makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;
    .locals 12

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v2, v0, v1

    .line 872
    const-string v3, "AND start < %d AND start >= %d"

    .line 873
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 874
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "start_day"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 875
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 876
    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    array-length v6, v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v2, v1

    :goto_0
    const/4 v1, 0x1

    const/4 v7, 0x1

    aput-boolean v7, v2, v1

    if-ge v0, v6, :cond_2

    aget v7, v5, v0

    .line 879
    const/4 v1, 0x3

    new-array v8, v1, [Ljava/util/Calendar;

    const/4 v1, 0x0

    aput-object v4, v8, v1

    const/4 v1, 0x1

    aput-object p1, v8, v1

    const/4 v1, 0x2

    aput-object p2, v8, v1

    array-length v9, v8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    aput-boolean v11, v2, v10

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x1

    aput-boolean v11, v2, v10

    if-ge v1, v9, :cond_1

    aget-object v10, v8, v1

    .line 880
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 879
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x1

    aput-boolean v11, v2, v10

    goto :goto_1

    .line 876
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 883
    :cond_2
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 884
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeStart:J

    .line 885
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    .line 886
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    if-eq v0, v1, :cond_3

    .line 887
    invoke-virtual {v4, p2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 888
    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 889
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v2, v0

    move-object v0, v1

    :goto_3
    aput-object v0, v3, v4

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    return-object v3

    .line 887
    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    goto :goto_2

    .line 889
    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    goto :goto_3

    .line 876
    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method


# virtual methods
.method protected addTask(Ljava/lang/String;)V
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 995
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 996
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 997
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v3, "tasks"

    const-string v4, "name"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 999
    new-instance v1, Lcom/markuspage/android/atimetracker/Task;

    long-to-int v2, v2

    invoke-direct {v1, p1, v2}, Lcom/markuspage/android/atimetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 1000
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1002
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 1003
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 842
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->close()V

    .line 843
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public deleteTask(Lcom/markuspage/android/atimetracker/Task;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 1033
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1034
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1035
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1036
    const-string v3, "tasks"

    const-string v4, "ROWID = ?"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1037
    const-string v3, "ranges"

    const-string v4, "task_id = ?"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 1039
    aput-boolean v6, v0, v5

    return-void
.end method

.method public findCurrentlyActive()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/markuspage/android/atimetracker/Task;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 961
    new-instance v1, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;

    invoke-direct {v1, p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;-><init>(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCount()I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 1042
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected getCurrentRange()Landroid/database/Cursor;
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 942
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v7

    .line 943
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeStart:J

    cmp-long v2, v2, v4

    aput-boolean v6, v1, v7

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    cmp-long v2, v2, v4

    aput-boolean v6, v1, v6

    if-eqz v2, :cond_1

    .line 944
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 945
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks;->access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "start_day"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 946
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeStart:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 947
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 948
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Tasks;->access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "start_day"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 949
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 950
    invoke-direct {p0, v0, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v2}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT t.name, r.start, r.end  FROM tasks t, ranges r  WHERE r.task_id = t.ROWID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ORDER BY t.name, r.start ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 957
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 1046
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

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
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 1050
    int-to-long v2, p1

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v2, v0, v1

    .line 1054
    const/4 v1, 0x0

    .line 1055
    const/4 v0, 0x0

    aput-boolean v5, v2, v0

    if-nez p2, :cond_2

    .line 1056
    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1057
    aput-boolean v5, v2, v5

    if-eqz v0, :cond_3

    .line 1058
    new-instance v1, Lcom/markuspage/android/atimetracker/Tasks$TaskView;

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->savedContext:Landroid/content/Context;

    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    invoke-direct {v1, v3, v4, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/content/Context;Lcom/markuspage/android/atimetracker/Task;)V

    const/4 v0, 0x2

    aput-boolean v5, v2, v0

    move-object v0, v1

    .line 1060
    :goto_0
    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    move-object p2, v0

    .line 1067
    :cond_1
    :goto_1
    const/4 v0, 0x6

    aput-boolean v5, v2, v0

    return-object p2

    .line 1061
    :cond_2
    check-cast p2, Lcom/markuspage/android/atimetracker/Tasks$TaskView;

    .line 1062
    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1063
    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    if-eqz v0, :cond_1

    .line 1064
    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    invoke-virtual {p2, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->setTask(Lcom/markuspage/android/atimetracker/Task;)V

    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected loadTasks(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 854
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, p1, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 855
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method protected loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v3, 0x4

    aget-object v3, v0, v3

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v0

    .line 859
    aget-object v4, v0, v1

    aget-object v0, v0, v2

    aput-boolean v2, v3, v1

    if-nez v0, :cond_1

    aput-boolean v2, v3, v2

    move v0, v1

    :goto_0
    invoke-direct {p0, v4, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/lang/String;Z)V

    .line 860
    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    return-void

    .line 859
    :cond_1
    const/4 v0, 0x2

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method protected updateTask(Lcom/markuspage/android/atimetracker/Task;)V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 1006
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1007
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1008
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1010
    new-array v4, v8, [Ljava/lang/String;

    aput-object v3, v4, v9

    .line 1011
    const-string v5, "tasks"

    const-string v6, "ROWID = ?"

    invoke-virtual {v1, v5, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v4, v12

    aput-boolean v8, v0, v9

    if-eqz v4, :cond_2

    .line 1014
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1015
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getStartTime()J

    move-result-wide v4

    .line 1016
    const-string v6, "start"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    new-array v6, v10, [Ljava/lang/String;

    aput-object v3, v6, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 1018
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getEndTime()J

    move-result-wide v4

    cmp-long v3, v4, v12

    aput-boolean v8, v0, v8

    if-eqz v3, :cond_1

    .line 1019
    const-string v3, "end"

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getEndTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aput-boolean v8, v0, v10

    .line 1022
    :cond_1
    const-string v3, "ranges"

    const-string v4, "task_id = ? AND start = ?"

    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput-boolean v8, v0, v4

    if-nez v3, :cond_2

    .line 1023
    const-string v3, "task_id"

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    const-string v3, "ranges"

    const-string v4, "end"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v1, 0x4

    aput-boolean v8, v0, v1

    .line 1028
    :cond_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1029
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 1030
    const/4 v1, 0x5

    aput-boolean v8, v0, v1

    return-void
.end method
