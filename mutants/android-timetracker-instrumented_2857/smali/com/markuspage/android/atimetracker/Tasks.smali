.class public Lcom/markuspage/android/atimetracker/Tasks;
.super Landroid/app/ListActivity;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;,
        Lcom/markuspage/android/atimetracker/Tasks$TaskView;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field protected static final ADD_TASK:I = 0x0

.field protected static final BACKUP:I = 0xe

.field protected static final CHANGE_VIEW:I = 0x5

.field protected static final CONCURRENT:Ljava/lang/String; = "concurrent-tasks"

.field private static final DECIMAL_FORMAT:Ljava/lang/String; = "%02d.%02d"

.field protected static final DELETE_TASK:I = 0x2

.field private static final D_M:D = 1.6666666666666667

.field private static final D_S:D = 0.027777777777777776

.field protected static final EDIT_TASK:I = 0x1

.field protected static final END_DATE:Ljava/lang/String; = "end_date"

.field protected static final ERROR_DIALOG:I = 0xb

.field protected static final EXPORT_VIEW:I = 0x9

.field protected static final FONTSIZE:Ljava/lang/String; = "font-size"

.field private static final FORMAT:Ljava/lang/String; = "%02d:%02d"

.field protected static final HELP:I = 0x8

.field protected static final MILITARY:Ljava/lang/String; = "military-time"

.field protected static final MORE:I = 0xd

.field private static final MS_H:J = 0x36ee80L

.field private static final MS_M:J = 0xea60L

.field private static final MS_S:J = 0x3e8L

.field protected static final PREFERENCES:I = 0xf

.field protected static final PROGRESS_DIALOG:I = 0x10

.field private static final REFRESH_MS:I = 0xea60

.field protected static final REPORT:I = 0x3

.field protected static final REPORT_DATE:Ljava/lang/String; = "report_date"

.field protected static final ROUND_REPORT_TIMES:Ljava/lang/String; = "round_report_times"

.field static final SDCARD:Ljava/lang/String; = "/sdcard/"

.field protected static final SELECT_END_DATE:I = 0x7

.field protected static final SELECT_START_DATE:I = 0x6

.field protected static final SET_WEEK_START_DAY:I = 0xc

.field protected static final SHOW_TIMES:I = 0x4

.field protected static final SOUND:Ljava/lang/String; = "sound-enabled"

.field protected static final START_DATE:Ljava/lang/String; = "start_date"

.field protected static final START_DAY:Ljava/lang/String; = "start_day"

.field protected static final SUCCESS_DIALOG:I = 0xa

.field protected static final TIMEDISPLAY:Ljava/lang/String; = "time_display"

.field public static final TIMETRACKERPREF:Ljava/lang/String; = "timetracker.pref"

.field protected static final VIBRATE:Ljava/lang/String; = "vibrate-enabled"

.field protected static final VIEW_MODE:Ljava/lang/String; = "view_mode"

.field private static clickPlayer:Landroid/media/MediaPlayer; = null

.field private static final dbPath:Ljava/lang/String; = "/data/data/com.markuspage.android.atimetracker/databases/timetracker.db"

.field private static fontSize:I


# instance fields
.field private adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

.field private baseTitle:Ljava/lang/String;

.field private concurrency:Z

.field private final dbBackup:Ljava/io/File;

.field private decimalFormat:Z

.field private exportMessage:Ljava/lang/String;

.field private operationFailed:Landroid/app/AlertDialog;

.field private operationSucceed:Landroid/app/AlertDialog;

.field private playClick:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private running:Z

.field private selectedTask:Lcom/markuspage/android/atimetracker/Task;

.field private timer:Landroid/os/Handler;

.field private updater:Ljava/util/TimerTask;

.field private vibrateAgent:Landroid/os/Vibrator;

.field private vibrateClick:Z


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x2b

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    new-array v1, v5, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x19

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks"

    const-wide v2, -0x227f80444c13e038L    # -2.5149217678424757E142

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    .line 151
    const/16 v1, 0x10

    sput v1, Lcom/markuspage/android/atimetracker/Tasks;->fontSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 105
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 145
    iput-boolean v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    .line 154
    iput-boolean v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    .line 155
    iput-boolean v5, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateClick:Z

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    .line 158
    iput-boolean v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "timetracker.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->dbBackup:Ljava/io/File;

    aput-boolean v5, v0, v4

    return-void
.end method

.method static synthetic access$000(Lcom/markuspage/android/atimetracker/Tasks;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 105
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lcom/markuspage/android/atimetracker/Tasks;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x29

    aget-object v0, v0, v1

    .line 105
    iput-boolean p1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100(Lcom/markuspage/android/atimetracker/Tasks;)Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1100(Lcom/markuspage/android/atimetracker/Tasks;I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x25

    aget-object v0, v0, v1

    .line 105
    invoke-direct {p0, p1}, Lcom/markuspage/android/atimetracker/Tasks;->switchView(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1300(Lcom/markuspage/android/atimetracker/Tasks;)Lcom/markuspage/android/atimetracker/Task;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x26

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1400()I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x27

    aget-object v0, v0, v1

    .line 105
    sget v1, Lcom/markuspage/android/atimetracker/Tasks;->fontSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1500(Lcom/markuspage/android/atimetracker/Tasks;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x28

    aget-object v0, v0, v1

    .line 105
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200(Lcom/markuspage/android/atimetracker/Tasks;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 105
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->setTitle()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/os/Handler;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 105
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->export()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->dbBackup:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$902(Lcom/markuspage/android/atimetracker/Tasks;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 105
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method private export()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x11

    aget-object v3, v0, v2

    .line 650
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getRangeName()Ljava/lang/String;

    move-result-object v4

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".csv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    aput-boolean v7, v3, v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 655
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    aput-boolean v7, v3, v7

    if-eqz v5, :cond_1

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 661
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 662
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->getCurrentRange()Landroid/database/Cursor;

    move-result-object v1

    .line 663
    invoke-static {v0, v1}, Lcom/markuspage/android/atimetracker/CSVExporter;->exportRows(Ljava/io/OutputStream;Landroid/database/Cursor;)V

    .line 664
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 666
    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v3, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_1
    return-object v2

    .line 667
    :catch_0
    move-exception v0

    .line 668
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 669
    const/4 v2, 0x0

    const/4 v0, 0x4

    aput-boolean v7, v3, v0

    goto :goto_1
.end method

.method static formatTotal(ZJJ)Ljava/lang/String;
    .locals 7

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v6, v0, v1

    .line 797
    const-string v1, "%02d:%02d"

    move v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    return-object v0
.end method

.method static formatTotal(ZJJJJ)Ljava/lang/String;
    .locals 11

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v10, v0, v1

    .line 814
    const-string v1, "%02d:%02d"

    move v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJJJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    return-object v0
.end method

.method static formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;
    .locals 14

    .prologue
    sget-object v2, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v2

    :cond_0
    const/16 v3, 0x16

    aget-object v12, v2, v3

    .line 801
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v12, v3

    if-lez v2, :cond_1

    .line 802
    const-wide/32 v2, 0xea60

    div-long v2, p2, v2

    .line 803
    long-to-float v2, v2

    move-wide/from16 v0, p4

    long-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, p4

    const-wide/32 v4, 0xea60

    mul-long p2, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v12, v2

    .line 805
    :cond_1
    const-wide/32 v2, 0x36ee80

    div-long v4, p2, v2

    .line 806
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v4

    .line 807
    sub-long v6, p2, v2

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    .line 808
    const-wide/32 v8, 0xea60

    mul-long/2addr v8, v6

    .line 809
    sub-long v2, p2, v2

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    move v2, p0

    move-object v3, p1

    move-wide/from16 v10, p4

    .line 810
    invoke-static/range {v2 .. v11}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJJJ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v12, v3

    return-object v2
.end method

.method static formatTotal(ZLjava/lang/String;JJJJ)Ljava/lang/String;
    .locals 8

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 818
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    if-eqz p0, :cond_1

    .line 819
    const-string p1, "%02d.%02d"

    .line 820
    const-wide v2, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    long-to-double v4, p4

    mul-double/2addr v2, v4

    const-wide v4, 0x3f9c71c71c71c71cL    # 0.027777777777777776

    long-to-double v6, p6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p4

    .line 821
    const-wide/16 p6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 823
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRangeName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v1, v0, v1

    .line 674
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$400(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    if-nez v0, :cond_1

    .line 675
    const-string v0, "all"

    aput-boolean v6, v1, v6

    .line 680
    :goto_0
    return-object v0

    .line 677
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 678
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 679
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$400(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 680
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private openAboutDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v1, v0, v1

    .line 684
    const-string v0, ""

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.markuspage.android.atimetracker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 687
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    const v2, 0x7f060038

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 695
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 697
    const v0, 0x7f080001

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 698
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const v0, 0x7f080002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 700
    invoke-static {v0, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 701
    const v0, 0x7f080003

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 702
    invoke-static {v0, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 704
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    return-object v0

    .line 688
    :catch_0
    move-exception v2

    aput-boolean v5, v1, v5

    goto :goto_0
.end method

.method private openChangeViewDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 473
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f050000

    new-instance v3, Lcom/markuspage/android/atimetracker/Tasks$3;

    invoke-direct {v3, p0}, Lcom/markuspage/android/atimetracker/Tasks$3;-><init>(Lcom/markuspage/android/atimetracker/Tasks;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private openDeleteTaskDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x10

    aget-object v2, v0, v2

    .line 634
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    aput-boolean v5, v2, v6

    if-nez v0, :cond_1

    .line 635
    aput-boolean v5, v2, v5

    move-object v0, v1

    .line 644
    :goto_0
    return-object v0

    .line 637
    :cond_1
    const v0, 0x7f060008

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    .line 638
    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 637
    invoke-virtual {p0, v0, v3}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f060006

    new-instance v4, Lcom/markuspage/android/atimetracker/Tasks$6;

    invoke-direct {v4, p0}, Lcom/markuspage/android/atimetracker/Tasks$6;-><init>(Lcom/markuspage/android/atimetracker/Tasks;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    .line 644
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method private openEditTaskDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xf

    aget-object v2, v0, v2

    .line 609
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    const/4 v3, 0x0

    aput-boolean v6, v2, v3

    if-nez v0, :cond_1

    .line 610
    aput-boolean v6, v2, v6

    move-object v0, v1

    .line 624
    :goto_0
    return-object v0

    .line 612
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 613
    const v3, 0x7f030002

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 614
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/markuspage/android/atimetracker/Tasks$5;

    invoke-direct {v5, p0, v0}, Lcom/markuspage/android/atimetracker/Tasks$5;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    .line 624
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    goto :goto_0
.end method

.method private openNewTaskDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 588
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 589
    const v2, 0x7f030002

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 590
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060009

    .line 591
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060003

    new-instance v4, Lcom/markuspage/android/atimetracker/Tasks$4;

    invoke-direct {v4, p0, v1}, Lcom/markuspage/android/atimetracker/Tasks$4;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 598
    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setTitle()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v6, v0, v1

    .line 575
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    iget-object v0, v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x0

    aput-boolean v8, v6, v0

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v8, v6, v8

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    .line 576
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->getTotal()J

    move-result-wide v0

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aput-boolean v8, v6, v2

    move-wide v2, v0

    .line 577
    goto :goto_0

    .line 578
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->baseTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZJJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    const/4 v0, 0x3

    aput-boolean v8, v6, v0

    return-void
.end method

.method private switchView(I)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v7, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v1, v0, v1

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 531
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "start_day"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 532
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 533
    const v0, 0x7f060017

    new-array v4, v8, [Ljava/lang/Object;

    .line 534
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f050000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    aput-object v5, v4, v9

    .line 533
    invoke-virtual {p0, v0, v4}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    aput-boolean v8, v1, v9

    packed-switch p1, :pswitch_data_0

    .line 568
    :goto_0
    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->baseTitle:Ljava/lang/String;

    .line 569
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->setTitle()V

    .line 570
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 571
    const/4 v0, 0x7

    aput-boolean v8, v1, v0

    return-void

    .line 537
    :pswitch_0
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v3, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;)V

    aput-boolean v8, v1, v8

    goto :goto_0

    .line 540
    :pswitch_1
    iget-object v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v2, v3}, Lcom/markuspage/android/atimetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/markuspage/android/atimetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    const/4 v2, 0x2

    aput-boolean v8, v1, v2

    goto :goto_0

    .line 543
    :pswitch_2
    invoke-virtual {v2, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 544
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v3, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;)V

    aput-boolean v8, v1, v10

    goto :goto_0

    .line 547
    :pswitch_3
    invoke-virtual {v2, v10, v7}, Ljava/util/Calendar;->add(II)V

    .line 548
    iget-object v4, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v2, v3}, Lcom/markuspage/android/atimetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/markuspage/android/atimetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    const/4 v2, 0x4

    aput-boolean v8, v1, v2

    goto :goto_0

    .line 551
    :pswitch_4
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$1200(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)V

    aput-boolean v8, v1, v11

    goto :goto_0

    .line 554
    :pswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 555
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "start_date"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 556
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 558
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "end_date"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 559
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 561
    invoke-static {v10}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 562
    const v4, 0x7f060017

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 562
    invoke-virtual {p0, v4, v5}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v8, v1, v2

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected finishedCopy(Lcom/markuspage/android/atimetracker/DBBackup$Result;Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 1186
    sget-object v1, Lcom/markuspage/android/atimetracker/DBBackup$Result;->SUCCESS:Lcom/markuspage/android/atimetracker/DBBackup$Result;

    aput-boolean v3, v0, v4

    if-ne p1, v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "view_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->switchView(I)V

    .line 1188
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->dbBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-boolean v3, v0, v3

    .line 1190
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/markuspage/android/atimetracker/Tasks;->perform(Ljava/lang/String;II)V

    .line 1191
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xf

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    .line 1139
    aput-boolean v7, v1, v8

    if-ne p1, v9, :cond_7

    aput-boolean v7, v1, v7

    if-eqz p3, :cond_7

    .line 1140
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1141
    const-string v0, "start_day"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "view_mode"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->switchView(I)V

    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    .line 1144
    :cond_1
    const-string v0, "military-time"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "military-time"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x5

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_9

    .line 1146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x6

    aput-boolean v7, v1, v0

    .line 1151
    :cond_2
    :goto_0
    const-string v0, "concurrent-tasks"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x8

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_3

    .line 1152
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "concurrent-tasks"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->concurrency:Z

    const/16 v0, 0x9

    aput-boolean v7, v1, v0

    .line 1154
    :cond_3
    const-string v0, "sound-enabled"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xa

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_4

    .line 1155
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sound-enabled"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    .line 1156
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    const/16 v3, 0xb

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_4

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0xc

    aput-boolean v7, v1, v3

    if-nez v0, :cond_4

    .line 1157
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    .line 1159
    :try_start_0
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1160
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/16 v0, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :cond_4
    :goto_1
    const-string v0, "vibrate-enabled"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    aput-boolean v7, v1, v9

    if-eqz v0, :cond_5

    .line 1170
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "vibrate-enabled"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateClick:Z

    aput-boolean v7, v1, v10

    .line 1172
    :cond_5
    const-string v0, "font-size"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x11

    aput-boolean v7, v1, v3

    if-eqz v0, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "font-size"

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/markuspage/android/atimetracker/Tasks;->fontSize:I

    const/16 v0, 0x12

    aput-boolean v7, v1, v0

    .line 1175
    :cond_6
    const-string v0, "time_display"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x13

    aput-boolean v7, v1, v2

    if-eqz v0, :cond_7

    .line 1176
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "time_display"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    const/16 v0, 0x14

    aput-boolean v7, v1, v0

    .line 1180
    :cond_7
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x15

    aput-boolean v7, v1, v2

    if-eqz v0, :cond_8

    .line 1181
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    const/16 v0, 0x16

    aput-boolean v7, v1, v0

    .line 1183
    :cond_8
    const/16 v0, 0x17

    aput-boolean v7, v1, v0

    return-void

    .line 1148
    :cond_9
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x7

    aput-boolean v7, v1, v0

    goto/16 :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1163
    const-string v3, "TimeTracker"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set up audio player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1165
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    goto/16 :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 281
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v4

    invoke-virtual {v2, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 296
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    return v0

    .line 284
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/markuspage/android/atimetracker/TaskTimes;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    const-string v2, "task_id"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    invoke-virtual {v3}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$400(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    aput-boolean v6, v1, v6

    if-eqz v2, :cond_1

    .line 287
    const-string v2, "start"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$400(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string v2, "end"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->access$500(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 290
    :cond_1
    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 174
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v7}, Lcom/markuspage/android/atimetracker/Tasks;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    .line 177
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "font-size"

    const/16 v3, 0x10

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/markuspage/android/atimetracker/Tasks;->fontSize:I

    .line 178
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "concurrent-tasks"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->concurrency:Z

    .line 179
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "military-time"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v6, v1, v7

    if-eqz v0, :cond_6

    .line 180
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    aput-boolean v6, v1, v6

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "view_mode"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 186
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    const/4 v3, 0x3

    aput-boolean v6, v1, v3

    if-nez v2, :cond_1

    .line 187
    new-instance v2, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-direct {v2, p0, p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    .line 188
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Tasks;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->switchView(I)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    const/4 v2, 0x7

    aput-boolean v6, v1, v2

    if-nez v0, :cond_3

    .line 195
    new-instance v0, Lcom/markuspage/android/atimetracker/Tasks$1;

    invoke-direct {v0, p0}, Lcom/markuspage/android/atimetracker/Tasks$1;-><init>(Lcom/markuspage/android/atimetracker/Tasks;)V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    aput-boolean v6, v1, v8

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "sound-enabled"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    .line 208
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    if-nez v0, :cond_4

    .line 209
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    .line 211
    :try_start_0
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/16 v0, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "time_display"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    .line 220
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->registerForContextMenu(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    iget-object v0, v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    if-eqz v0, :cond_5

    .line 222
    invoke-virtual {p0, v8}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    .line 224
    :cond_5
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Tasks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateAgent:Landroid/os/Vibrator;

    .line 225
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "vibrate-enabled"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateClick:Z

    .line 226
    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    return-void

    .line 182
    :cond_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm a"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    const-string v2, "TimeTracker"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set up audio player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 216
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v0, 0xc

    aput-boolean v6, v1, v0

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 272
    const-string v1, "Task menu"

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 273
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 274
    const/4 v1, 0x2

    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 275
    const/4 v1, 0x4

    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 276
    aput-boolean v4, v0, v3

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x104000a

    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 327
    aput-boolean v4, v2, v3

    packed-switch p1, :pswitch_data_0

    .line 445
    :pswitch_0
    const/16 v0, 0xa

    aput-boolean v4, v2, v0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 329
    :pswitch_1
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->openNewTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->openEditTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->openDeleteTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 335
    :pswitch_4
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->openChangeViewDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 337
    :pswitch_5
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Tasks;->openAboutDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 339
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003f

    .line 340
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108007a

    .line 341
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 342
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    .line 345
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    const/4 v1, 0x6

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 347
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060040

    .line 348
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108007a

    .line 349
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    .line 353
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    const/4 v1, 0x7

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 355
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    .line 356
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Copying records..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 358
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x8

    aput-boolean v4, v2, v1

    goto/16 :goto_0

    .line 361
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050002

    new-instance v3, Lcom/markuspage/android/atimetracker/Tasks$2;

    invoke-direct {v3, p0}, Lcom/markuspage/android/atimetracker/Tasks$2;-><init>(Lcom/markuspage/android/atimetracker/Tasks;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v2, v5

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 262
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 263
    const v1, 0x7f060009

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 264
    const/4 v1, 0x3

    const v2, 0x7f06000b

    invoke-interface {p1, v4, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080058

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 265
    const/16 v1, 0xd

    const/4 v2, 0x2

    const v3, 0x7f060042

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080045

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    aput-boolean v5, v0, v4

    return v5
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x19

    aget-object v4, v0, v2

    .line 1073
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateClick:Z

    aput-boolean v3, v4, v1

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->vibrateAgent:Landroid/os/Vibrator;

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    aput-boolean v3, v4, v3

    .line 1076
    :cond_1
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Tasks;->playClick:Z

    const/4 v2, 0x2

    aput-boolean v3, v4, v2

    if-eqz v0, :cond_2

    .line 1079
    :try_start_0
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1096
    const/4 v2, 0x5

    aput-boolean v3, v4, v2

    if-eqz v0, :cond_7

    .line 1097
    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    .line 1098
    iget-boolean v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->concurrency:Z

    const/4 v5, 0x6

    aput-boolean v3, v4, v5

    if-nez v2, :cond_8

    .line 1099
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->isRunning()Z

    move-result v2

    const/4 v5, 0x7

    aput-boolean v3, v4, v5

    if-nez v2, :cond_3

    const/16 v2, 0x8

    aput-boolean v3, v4, v2

    move v2, v3

    .line 1100
    :goto_1
    iget-boolean v5, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    const/16 v6, 0xa

    aput-boolean v3, v4, v6

    if-eqz v5, :cond_4

    .line 1101
    iput-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    .line 1102
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v5

    const/16 v1, 0xb

    aput-boolean v3, v4, v1

    .line 1105
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v6, 0xc

    aput-boolean v3, v4, v6

    if-eqz v1, :cond_4

    .line 1106
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/markuspage/android/atimetracker/Task;

    .line 1107
    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Task;->stop()V

    .line 1108
    iget-object v6, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v6, v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->updateTask(Lcom/markuspage/android/atimetracker/Task;)V

    const/16 v1, 0xd

    aput-boolean v3, v4, v1

    goto :goto_2

    .line 1080
    :catch_0
    move-exception v0

    .line 1084
    const-string v2, "TimeTracker"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to play audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1086
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-virtual {v2, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v3, v4, v0

    goto/16 :goto_0

    .line 1099
    :cond_3
    const/16 v2, 0x9

    aput-boolean v3, v4, v2

    move v2, v1

    goto :goto_1

    .line 1111
    :cond_4
    const/16 v1, 0xe

    aput-boolean v3, v4, v1

    if-eqz v2, :cond_5

    .line 1112
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->start()V

    .line 1113
    iput-boolean v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    .line 1114
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v1, 0xf

    aput-boolean v3, v4, v1

    :cond_5
    const/16 v1, 0x10

    aput-boolean v3, v4, v1

    .line 1131
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v1, v0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->updateTask(Lcom/markuspage/android/atimetracker/Task;)V

    const/16 v0, 0x16

    aput-boolean v3, v4, v0

    .line 1133
    :cond_7
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 1134
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1135
    const/16 v0, 0x17

    aput-boolean v3, v4, v0

    return-void

    .line 1117
    :cond_8
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->isRunning()Z

    move-result v1

    const/16 v2, 0x11

    aput-boolean v3, v4, v2

    if-eqz v1, :cond_9

    .line 1118
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->stop()V

    .line 1119
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iput-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    .line 1120
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    const/16 v2, 0x12

    aput-boolean v3, v4, v2

    if-nez v1, :cond_6

    .line 1121
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x13

    aput-boolean v3, v4, v1

    goto :goto_3

    .line 1124
    :cond_9
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->start()V

    .line 1125
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    const/16 v2, 0x14

    aput-boolean v3, v4, v2

    if-nez v1, :cond_6

    .line 1126
    iput-boolean v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    .line 1127
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v1, 0x15

    aput-boolean v3, v4, v1

    goto :goto_3
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 305
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    aput-boolean v6, v0, v7

    sparse-switch v1, :sswitch_data_0

    .line 322
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    return v1

    .line 308
    :sswitch_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    aput-boolean v6, v0, v6

    goto :goto_0

    .line 311
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/markuspage/android/atimetracker/Report;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    const-string v2, "report_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    const-string v2, "start_day"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "start_day"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v2, "time_display"

    iget-boolean v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->decimalFormat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v2, "round_report_times"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "round_report_times"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 231
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    aput-boolean v3, v0, v3

    .line 234
    :cond_1
    aput-boolean v3, v0, v4

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    .prologue
    const v2, 0x7f08000a

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v1, v0, v1

    .line 710
    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 722
    :goto_0
    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    return-void

    .line 712
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 713
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 716
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 717
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->selectedTask:Lcom/markuspage/android/atimetracker/Task;

    invoke-virtual {v2}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 249
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 252
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "view_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 253
    invoke-direct {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->switchView(I)V

    .line 255
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    aput-boolean v3, v0, v4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->running:Z

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 258
    :cond_1
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 238
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->adapter:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->close()V

    aput-boolean v3, v0, v3

    .line 241
    :cond_1
    sget-object v1, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Lcom/markuspage/android/atimetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    aput-boolean v3, v0, v4

    .line 244
    :cond_2
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 245
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected perform(Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 449
    aput-boolean v3, v0, v2

    if-eqz p1, :cond_2

    .line 450
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 454
    :cond_1
    invoke-virtual {p0, v4}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 462
    :goto_0
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void

    .line 456
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p3, v1}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 457
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 460
    :cond_3
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
