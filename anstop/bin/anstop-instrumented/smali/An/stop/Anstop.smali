.class public LAn/stop/Anstop;
.super Landroid/app/Activity;
.source "Anstop.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAn/stop/Anstop$lapButtonListener;,
        LAn/stop/Anstop$refreshButtonListener;,
        LAn/stop/Anstop$resetButtonListener;,
        LAn/stop/Anstop$startButtonListener;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final ABOUT_DIALOG:I = 0x0

.field private static final ABOUT_ITEM:I = 0x7

.field private static final COMMENT_DIALOG:I = 0x2

.field public static final COUNTDOWN:I = 0x1

.field private static final LOAD_ITEM:I = 0xb

.field private static final MENU_ABOUT:I = 0x6

.field private static final MENU_LOAD:I = 0xa

.field private static final MENU_MODE_GROUP:I = 0x0

.field private static final MENU_SAVE:I = 0x8

.field private static final MENU_SEND:I = 0xc

.field private static final MENU_SETTINGS:I = 0x4

.field private static final MODE_COUNTDOWN:I = 0x3

.field private static final MODE_STOP:I = 0x1

.field private static final OBSOL_LAP:I = 0x2

.field private static final SAVE_DIALOG:I = 0x1

.field private static final SAVE_ITEM:I = 0x9

.field private static final SEND_ITEM:I = 0xd

.field private static final SETTINGS_ACTIVITY:I = 0x0

.field private static final SETTINGS_ITEM:I = 0x5

.field public static final STOP_LAP:I = 0x0

.field private static final VIEW_SIZE:I = 0x3c

.field private static final serialVersionUID:J = -0x6fc09592057d7acfL


# instance fields
.field al:LAn/stop/AccelerometerListener;

.field clock:LAn/stop/Clock;

.field comment:Ljava/lang/String;

.field private transient commentEdit:Landroid/widget/EditText;

.field dbHelper:LAn/stop/AnstopDbAdapter;

.field dsecondsView:Landroid/widget/TextView;

.field private fmt_dow_meddate_time:Ljava/lang/StringBuffer;

.field gestureLibrary:Landroid/gesture/GestureLibrary;

.field gestureOverlay:Landroid/gesture/GestureOverlayView;

.field hourSpinner:Landroid/widget/Spinner;

.field hourView:Landroid/widget/TextView;

.field lapButton:Landroid/widget/Button;

.field lapScroll:Landroid/widget/ScrollView;

.field lapView:Landroid/widget/TextView;

.field laps:Ljava/lang/StringBuilder;

.field mContext:Landroid/content/Context;

.field minSpinner:Landroid/widget/Spinner;

.field minView:Landroid/widget/TextView;

.field modeMenuItem:Landroid/view/MenuItem;

.field private modeMenu_itemCountdown:Landroid/view/MenuItem;

.field private modeMenu_itemStop:Landroid/view/MenuItem;

.field refreshButton:Landroid/widget/Button;

.field resetButton:Landroid/widget/Button;

.field saveMenuItem:Landroid/view/MenuItem;

.field secSpinner:Landroid/widget/Spinner;

.field secondsView:Landroid/widget/TextView;

.field startButton:Landroid/widget/Button;

.field startTimeView:Landroid/widget/TextView;

.field vib:Landroid/os/Vibrator;

.field wroteStartTime:Z


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v0, 0x26

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Anstop;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x16

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const/4 v2, 0x4

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Z

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

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x11

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xd

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x15

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x12

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x11

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa

    new-array v2, v2, [Z

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

    const-string v1, "An/stop/Anstop"

    const-wide v2, -0x3e2ac6ee7532f717L    # -1.4242463152036688E9

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x25

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$400(LAn/stop/Anstop;Z)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 75
    invoke-direct {p0, p1}, LAn/stop/Anstop;->clickRefreshCountdownTime(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(LAn/stop/Anstop;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 75
    invoke-direct {p0}, LAn/stop/Anstop;->resetClockAndViews()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(LAn/stop/Anstop;ZI)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 75
    invoke-direct {p0, p1, p2}, LAn/stop/Anstop;->animateSwitch(ZI)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$700(LAn/stop/Anstop;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 75
    invoke-direct {p0}, LAn/stop/Anstop;->updateModeMenuFromCurrent()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$800(LAn/stop/Anstop;I)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 75
    invoke-direct {p0, p1}, LAn/stop/Anstop;->getLayout(I)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private animateSwitch(ZI)V
    .locals 4

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 1401
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1403
    invoke-direct {p0, p2}, LAn/stop/Anstop;->getLayout(I)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1404
    new-instance v3, LAn/stop/Anstop$9;

    invoke-direct {v3, p0, p1}, LAn/stop/Anstop$9;-><init>(LAn/stop/Anstop;Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1426
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1428
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static buildDateFormatDOWmedium(Landroid/content/Context;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    const/16 v4, 0x45

    const/16 v9, 0x20

    const/4 v8, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x18

    aget-object v2, v0, v2

    .line 929
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 931
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 932
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 933
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 935
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 938
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v4

    .line 939
    array-length v5, v4

    aput-boolean v8, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v8, v2, v8

    if-ge v0, v5, :cond_4

    aget-char v1, v4, v0

    .line 941
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 942
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 943
    const/16 v6, 0x79

    aput-boolean v8, v2, v10

    if-ne v1, v6, :cond_3

    .line 945
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 946
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x3

    aput-boolean v8, v2, v6

    .line 950
    :cond_1
    :goto_1
    aget-char v6, v4, v10

    const/4 v7, 0x6

    aput-boolean v8, v2, v7

    if-eq v1, v6, :cond_2

    .line 951
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x7

    aput-boolean v8, v2, v1

    .line 939
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 948
    :cond_3
    const/16 v6, 0x4d

    const/4 v7, 0x4

    aput-boolean v8, v2, v7

    if-ne v1, v6, :cond_1

    .line 949
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x5

    aput-boolean v8, v2, v6

    goto :goto_1

    .line 953
    :cond_4
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 956
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 957
    const/16 v0, 0x9

    aput-boolean v8, v2, v0

    if-eqz v1, :cond_7

    const/16 v0, 0x6b

    const/16 v4, 0xa

    aput-boolean v8, v2, v4

    .line 958
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 959
    const/16 v4, 0xc

    aput-boolean v8, v2, v4

    if-eqz v1, :cond_5

    .line 960
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xd

    aput-boolean v8, v2, v0

    .line 961
    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 962
    const/16 v0, 0x6d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 963
    const/16 v0, 0x6d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 964
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 965
    const/16 v0, 0x73

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    const/16 v0, 0x73

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 967
    const/16 v0, 0xe

    aput-boolean v8, v2, v0

    if-nez v1, :cond_6

    .line 969
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 970
    const/16 v0, 0x61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    const/16 v0, 0x61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xf

    aput-boolean v8, v2, v0

    .line 973
    :cond_6
    const/16 v0, 0x10

    aput-boolean v8, v2, v0

    return-object v3

    .line 957
    :cond_7
    const/16 v0, 0x68

    const/16 v4, 0xb

    aput-boolean v8, v2, v4

    goto :goto_2
.end method

.method private changeModeOrPopupConfirm(ZII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 1326
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->wasStarted:Z

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 1327
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-lez v1, :cond_2

    .line 1329
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LAn/stop/Anstop;->popupConfirmChangeMode(ZII)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 1342
    :goto_0
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void

    .line 1331
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1, p3}, LAn/stop/Clock;->changeMode(I)V

    .line 1332
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    if-eq p2, p3, :cond_3

    .line 1334
    invoke-direct {p0, p1, p2}, LAn/stop/Anstop;->animateSwitch(ZI)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 1336
    :cond_3
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    if-nez p3, :cond_4

    .line 1337
    invoke-virtual {p0}, LAn/stop/Anstop;->stopwatch()V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 1339
    :cond_4
    invoke-virtual {p0}, LAn/stop/Anstop;->countdown()V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private clickRefreshCountdownTime(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 986
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->isStarted:Z

    aput-boolean v8, v0, v9

    if-nez v1, :cond_4

    .line 988
    aput-boolean v8, v0, v8

    if-eqz p1, :cond_2

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->hour:I

    const/4 v2, 0x2

    aput-boolean v8, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    const/4 v2, 0x3

    aput-boolean v8, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    const/4 v2, 0x4

    aput-boolean v8, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->dsec:I

    const/4 v2, 0x5

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    aput-boolean v8, v0, v1

    .line 1018
    :goto_0
    return-void

    .line 995
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v1, p0, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 1000
    iget-object v2, p0, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 1001
    iget-object v3, p0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 1002
    iget-object v4, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3, v2, v1}, LAn/stop/Clock;->reset(IIII)Z

    .line 1003
    iget-object v4, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    iget-object v5, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v5, v5, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v5, v5, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v1, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    iget-object v4, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v4, v4, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v4, v4, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v1, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iput-boolean v9, p0, LAn/stop/Anstop;->wroteStartTime:Z

    .line 1008
    iget-object v1, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/4 v2, 0x7

    aput-boolean v8, v0, v2

    if-nez v1, :cond_3

    .line 1009
    iget-object v1, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    aput-boolean v8, v0, v1

    .line 1011
    :goto_1
    const/16 v1, 0xa

    aput-boolean v8, v0, v1

    .line 1018
    :goto_2
    const/16 v1, 0xc

    aput-boolean v8, v0, v1

    goto :goto_0

    .line 1011
    :cond_3
    iget-object v1, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    iget-object v2, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x9

    aput-boolean v8, v0, v1

    goto :goto_1

    .line 1015
    :cond_4
    iget-object v1, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    const v2, 0x7f070007

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xb

    aput-boolean v8, v0, v1

    goto :goto_2
.end method

.method private createBodyFromCurrent()Ljava/lang/String;
    .locals 7

    .prologue
    const v3, 0x7f07001a

    const v4, 0x7f070004

    const/4 v6, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v1, v0, v1

    .line 894
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->getMode()I

    move-result v0

    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    packed-switch v0, :pswitch_data_0

    .line 916
    const-string v0, "ModeError"

    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    .line 919
    :goto_0
    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    return-object v0

    .line 896
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    .line 897
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    .line 898
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    .line 899
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    .line 900
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    .line 901
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    .line 902
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v2, v2, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v2, v2, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget-object v3, p0, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    .line 903
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v2, v2, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v2, v2, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget-object v3, p0, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    .line 904
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    .line 905
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-boolean v6, v1, v6

    goto/16 :goto_0

    .line 908
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    .line 909
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    .line 910
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    .line 911
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    .line 912
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    .line 913
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private currentModeAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v1, v0, v1

    .line 870
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->getMode()I

    move-result v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    packed-switch v0, :pswitch_data_0

    .line 876
    const-string v0, "(unknown)"

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 878
    :goto_0
    return-object v0

    .line 872
    :pswitch_0
    const v0, 0x7f07000d

    aput-boolean v3, v1, v3

    .line 878
    :goto_1
    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 874
    :pswitch_1
    const v0, 0x7f07000c

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLayout(I)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 548
    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 556
    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 553
    :pswitch_1
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onRestoreInstanceState(Landroid/content/SharedPreferences;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xc

    aget-object v2, v0, v2

    .line 590
    const-string v0, "anstop_in_use"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v6, v2, v1

    if-nez v0, :cond_1

    aput-boolean v6, v2, v6

    .line 611
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v0, "anstop_state_current"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 593
    aput-boolean v6, v2, v3

    if-ne v0, v3, :cond_2

    .line 594
    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    move v0, v1

    .line 595
    :cond_2
    invoke-direct {p0, v0}, LAn/stop/Anstop;->setCurrentMode(I)V

    .line 596
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0, p1}, LAn/stop/Clock;->restoreFromSaveState(Landroid/content/SharedPreferences;)Z

    .line 597
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->laps:I

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    if-le v0, v6, :cond_5

    .line 599
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v0, v0, LAn/stop/Clock;->lap_elapsed:[J

    array-length v0, v0

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->laps:I

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    if-gt v0, v1, :cond_3

    .line 601
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->laps:I

    add-int/lit8 v1, v1, 0x20

    new-array v1, v1, [J

    iput-object v1, v0, LAn/stop/Clock;->lap_elapsed:[J

    .line 602
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->laps:I

    add-int/lit8 v1, v1, 0x20

    new-array v1, v1, [J

    iput-object v1, v0, LAn/stop/Clock;->lap_systime:[J

    const/4 v0, 0x6

    aput-boolean v6, v2, v0

    .line 604
    :cond_3
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    if-nez v0, :cond_4

    .line 606
    new-instance v0, LAn/stop/AnstopDbAdapter;

    invoke-direct {v0, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 607
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    const/16 v0, 0x8

    aput-boolean v6, v2, v0

    .line 609
    :cond_4
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const-wide/16 v4, 0x0

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->lap_elapsed:[J

    iget-object v3, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v3, v3, LAn/stop/Clock;->lap_systime:[J

    invoke-virtual {v0, v4, v5, v1, v3}, LAn/stop/AnstopDbAdapter;->fetchAllLaps(J[J[J)I

    const/16 v0, 0x9

    aput-boolean v6, v2, v0

    .line 611
    :cond_5
    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    goto :goto_0
.end method

.method private popupConfirmChangeMode(ZII)V
    .locals 4

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 1362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1363
    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1366
    const v2, 0x7f070029

    new-instance v3, LAn/stop/Anstop$7;

    invoke-direct {v3, p0, p3, p2, p1}, LAn/stop/Anstop$7;-><init>(LAn/stop/Anstop;IIZ)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    const/high16 v2, 0x1040000

    new-instance v3, LAn/stop/Anstop$8;

    invoke-direct {v3, p0}, LAn/stop/Anstop$8;-><init>(LAn/stop/Anstop;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1385
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1386
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static readLapFormatPrefFlags(Landroid/content/SharedPreferences;)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v6

    .line 332
    const-string v0, "lap_format_elapsed"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 333
    const-string v4, "lap_format_delta"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 334
    const-string v5, "lap_format_systime"

    invoke-interface {p0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 336
    aput-boolean v1, v3, v2

    if-eqz v0, :cond_3

    aput-boolean v1, v3, v1

    move v0, v1

    .line 337
    :goto_0
    const/4 v2, 0x2

    aput-boolean v1, v3, v2

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    aput-boolean v1, v3, v6

    .line 338
    :cond_1
    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x4

    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    .line 339
    :cond_2
    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private readSettings(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v8

    .line 257
    iget-object v0, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    const-string v0, "use_motion_sensor"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v2, v3, v1

    if-eqz v0, :cond_4

    .line 259
    new-instance v0, LAn/stop/AccelerometerListener;

    iget-object v5, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-direct {v0, p0, v5}, LAn/stop/AccelerometerListener;-><init>(Landroid/app/Activity;LAn/stop/Clock;)V

    iput-object v0, p0, LAn/stop/Anstop;->al:LAn/stop/AccelerometerListener;

    .line 260
    iget-object v0, p0, LAn/stop/Anstop;->al:LAn/stop/AccelerometerListener;

    invoke-virtual {v0}, LAn/stop/AccelerometerListener;->start()V

    aput-boolean v2, v3, v2

    .line 267
    :cond_1
    :goto_0
    const-string v0, "vibrate"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v5, 0x4

    aput-boolean v2, v3, v5

    if-eqz v0, :cond_5

    .line 268
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    .line 276
    :goto_1
    :try_start_0
    invoke-static {v4}, LAn/stop/Anstop;->readLapFormatPrefFlags(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 277
    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-nez v0, :cond_2

    .line 280
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "lap_format_elapsed"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    const/16 v0, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v3, v0

    move v0, v2

    .line 283
    :cond_2
    iget-object v5, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v5, v5, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget v5, v5, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    if-eq v0, v5, :cond_3

    .line 285
    iget-object v5, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    .line 286
    invoke-virtual {p0}, LAn/stop/Anstop;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, LAn/stop/Clock;->setLapFormat(ILjava/text/DateFormat;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->updateStartTimeCommentLapsView(Z)V

    const/16 v0, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_3
    const/16 v0, 0xb

    aput-boolean v2, v3, v0

    .line 291
    :goto_2
    const/16 v0, 0xd

    aput-boolean v2, v3, v0

    if-nez p1, :cond_6

    const/16 v0, 0xe

    aput-boolean v2, v3, v0

    .line 314
    :goto_3
    return-void

    .line 263
    :cond_4
    iget-object v0, p0, LAn/stop/Anstop;->al:LAn/stop/AccelerometerListener;

    aput-boolean v2, v3, v8

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, LAn/stop/Anstop;->al:LAn/stop/AccelerometerListener;

    invoke-virtual {v0}, LAn/stop/AccelerometerListener;->stop()V

    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    goto :goto_0

    .line 270
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    const/16 v0, 0xc

    aput-boolean v2, v3, v0

    goto :goto_2

    .line 296
    :cond_6
    :try_start_1
    const-string v0, "mode"

    const-string v5, "0"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-ne v0, v8, :cond_7

    .line 300
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    const-string v5, "mode"

    const-string v6, "0"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x10

    const/4 v5, 0x1

    aput-boolean v5, v3, v0

    move v0, v1

    .line 304
    :cond_7
    invoke-direct {p0, v0}, LAn/stop/Anstop;->setCurrentMode(I)V

    const/16 v0, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v3, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :goto_4
    const-string v0, "first_start"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v5, 0x13

    aput-boolean v2, v3, v5

    if-eqz v0, :cond_8

    .line 309
    invoke-virtual {p0}, LAn/stop/Anstop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f070028

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    const-string v4, "first_start"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x14

    aput-boolean v2, v3, v0

    .line 314
    :cond_8
    const/16 v0, 0x15

    aput-boolean v2, v3, v0

    goto :goto_3

    .line 305
    :catch_1
    move-exception v0

    const/16 v0, 0x12

    aput-boolean v2, v3, v0

    goto :goto_4
.end method

.method private resetClockAndViews()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x1a

    aget-object v3, v0, v3

    .line 1032
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    .line 1075
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->laps:I

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    if-le v0, v1, :cond_9

    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v1

    .line 1036
    :goto_1
    iget-object v4, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2, v2, v2}, LAn/stop/Clock;->reset(IIII)Z

    .line 1039
    iget-object v4, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v4, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    const-string v5, "00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v4, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    const-string v5, "00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v4, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v4, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    aput-boolean v1, v3, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x6

    aput-boolean v1, v3, v5

    if-lez v4, :cond_2

    .line 1044
    iget-object v4, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    iget-object v5, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    aput-boolean v1, v3, v4

    .line 1045
    :cond_2
    iget-object v4, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v5, 0x8

    aput-boolean v1, v3, v5

    if-eqz v4, :cond_4

    .line 1047
    invoke-virtual {p0}, LAn/stop/Anstop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1048
    iget-object v5, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    const/16 v6, 0x9

    aput-boolean v1, v3, v6

    if-nez v5, :cond_3

    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    aput-boolean v1, v3, v5

    .line 1050
    :cond_3
    iget-object v5, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    iget-object v5, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xb

    aput-boolean v1, v3, v4

    .line 1053
    :cond_4
    iget-object v4, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    const/16 v5, 0xc

    aput-boolean v1, v3, v5

    if-eqz v4, :cond_5

    .line 1054
    iget-object v4, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xd

    aput-boolean v1, v3, v4

    .line 1055
    :cond_5
    iput-boolean v2, p0, LAn/stop/Anstop;->wroteStartTime:Z

    .line 1056
    const/4 v4, 0x0

    iput-object v4, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 1057
    const/16 v4, 0xe

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_7

    .line 1059
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/16 v4, 0xf

    aput-boolean v1, v3, v4

    if-nez v0, :cond_6

    .line 1061
    new-instance v0, LAn/stop/AnstopDbAdapter;

    invoke-direct {v0, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 1062
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    .line 1064
    :cond_6
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->deleteTemporaryLaps()V

    const/16 v0, 0x11

    aput-boolean v1, v3, v0

    .line 1068
    :cond_7
    iget-object v0, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1069
    const-string v4, "anstop_in_use"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v5, 0x12

    aput-boolean v1, v3, v5

    if-eqz v4, :cond_8

    .line 1071
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1072
    const-string v4, "anstop_in_use"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1073
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x13

    aput-boolean v1, v3, v0

    .line 1075
    :cond_8
    const/16 v0, 0x14

    aput-boolean v1, v3, v0

    goto/16 :goto_0

    .line 1035
    :cond_9
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v2

    goto/16 :goto_1
.end method

.method private setCurrentMode(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 352
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->isStarted:Z

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->getMode()I

    move-result v1

    aput-boolean v3, v0, v3

    if-ne v1, p1, :cond_2

    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 369
    :goto_0
    return-void

    .line 355
    :cond_2
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 369
    :goto_1
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 358
    :pswitch_0
    invoke-virtual {p0}, LAn/stop/Anstop;->stopwatch()V

    aput-boolean v3, v0, v4

    goto :goto_1

    .line 362
    :pswitch_1
    invoke-virtual {p0}, LAn/stop/Anstop;->countdown()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 366
    :pswitch_2
    invoke-virtual {p0}, LAn/stop/Anstop;->stopwatch()V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupCommentLongPress(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 532
    new-instance v1, LAn/stop/Anstop$1;

    invoke-direct {v1, p0}, LAn/stop/Anstop$1;-><init>(LAn/stop/Anstop;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 538
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setupGesture()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v2, v0, v1

    .line 512
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->getMode()I

    move-result v0

    invoke-direct {p0, v0}, LAn/stop/Anstop;->getLayout(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 513
    new-instance v0, Landroid/gesture/GestureOverlayView;

    invoke-direct {v0, p0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/Anstop;->gestureOverlay:Landroid/gesture/GestureOverlayView;

    .line 514
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 517
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 518
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 519
    iget-object v1, p0, LAn/stop/Anstop;->gestureOverlay:Landroid/gesture/GestureOverlayView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v1, p0, LAn/stop/Anstop;->gestureOverlay:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v0}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 522
    iget-object v0, p0, LAn/stop/Anstop;->gestureOverlay:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 523
    iget-object v0, p0, LAn/stop/Anstop;->gestureOverlay:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v7}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 524
    const/4 v0, 0x1

    aput-boolean v0, v2, v7

    return-void
.end method

.method public static startSendMailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 745
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    .line 747
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 753
    aput-boolean v5, v0, v4

    return-void
.end method

.method private updateModeMenuFromCurrent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 684
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->getMode()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 693
    :cond_1
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 687
    :pswitch_0
    iget-object v1, p0, LAn/stop/Anstop;->modeMenu_itemStop:Landroid/view/MenuItem;

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, LAn/stop/Anstop;->modeMenu_itemStop:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 690
    :pswitch_1
    iget-object v1, p0, LAn/stop/Anstop;->modeMenu_itemStop:Landroid/view/MenuItem;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, LAn/stop/Anstop;->modeMenu_itemCountdown:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public countdown()V
    .locals 8

    .prologue
    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 376
    iput-object v4, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 377
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    aput-boolean v3, v1, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    aput-boolean v3, v1, v3

    if-lez v0, :cond_2

    .line 379
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    iget-object v2, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 380
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    if-nez v0, :cond_1

    .line 382
    new-instance v0, LAn/stop/AnstopDbAdapter;

    invoke-direct {v0, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 383
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 385
    :cond_1
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->deleteTemporaryLaps()V

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 389
    :cond_2
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->setContentView(I)V

    .line 392
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    .line 393
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    .line 394
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LAn/stop/Anstop;->setupCommentLongPress(Landroid/widget/TextView;)V

    .line 398
    iput-object v4, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    .line 399
    iput-object v4, p0, LAn/stop/Anstop;->lapScroll:Landroid/widget/ScrollView;

    .line 400
    iget-object v0, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    if-nez v0, :cond_3

    .line 401
    iput-boolean v6, p0, LAn/stop/Anstop;->wroteStartTime:Z

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 404
    :cond_3
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 405
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 407
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 408
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 410
    iget-object v0, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 411
    iget-object v0, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 412
    iget-object v0, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    iget-object v0, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 414
    iget-object v0, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 417
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    .line 418
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    .line 419
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    .line 422
    const/high16 v0, 0x7f060000

    const v2, 0x1090008

    invoke-static {p0, v0, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 424
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 427
    iget-object v2, p0, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 428
    iget-object v2, p0, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 429
    iget-object v2, p0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 432
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAn/stop/Anstop;->startButton:Landroid/widget/Button;

    .line 433
    iget-object v0, p0, LAn/stop/Anstop;->startButton:Landroid/widget/Button;

    new-instance v2, LAn/stop/Anstop$startButtonListener;

    invoke-direct {v2, p0, v4}, LAn/stop/Anstop$startButtonListener;-><init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAn/stop/Anstop;->refreshButton:Landroid/widget/Button;

    .line 436
    iget-object v0, p0, LAn/stop/Anstop;->refreshButton:Landroid/widget/Button;

    new-instance v2, LAn/stop/Anstop$refreshButtonListener;

    invoke-direct {v2, p0, v4}, LAn/stop/Anstop$refreshButtonListener;-><init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0, v3}, LAn/stop/Clock;->changeMode(I)V

    .line 441
    invoke-direct {p0}, LAn/stop/Anstop;->setupGesture()V

    .line 442
    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 860
    invoke-direct {p0, v2}, LAn/stop/Anstop;->readSettings(Z)V

    .line 862
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->setContentView(I)V

    .line 208
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 211
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    aput-boolean v1, v3, v2

    if-nez v0, :cond_2

    aput-boolean v1, v3, v1

    move v0, v1

    .line 212
    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    .line 213
    new-instance v2, LAn/stop/Clock;

    invoke-direct {v2, p0}, LAn/stop/Clock;-><init>(LAn/stop/Anstop;)V

    iput-object v2, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    .line 217
    :cond_1
    invoke-virtual {p0}, LAn/stop/Anstop;->stopwatch()V

    .line 219
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    if-nez v0, :cond_3

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    .line 245
    :goto_1
    return-void

    .line 211
    :cond_2
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0}, LAn/stop/Anstop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    .line 229
    invoke-direct {p0, v1}, LAn/stop/Anstop;->readSettings(Z)V

    .line 232
    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    if-eqz p1, :cond_4

    const-string v0, "clockAnstopCurrent"

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p0, p1}, LAn/stop/Anstop;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    .line 243
    :goto_2
    const/high16 v0, 0x7f050000

    invoke-static {p0, v0}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v0

    iput-object v0, p0, LAn/stop/Anstop;->gestureLibrary:Landroid/gesture/GestureLibrary;

    .line 244
    iget-object v0, p0, LAn/stop/Anstop;->gestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->load()Z

    .line 245
    const/16 v0, 0xb

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 239
    :cond_4
    iget-object v0, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, LAn/stop/Anstop;->onRestoreInstanceState(Landroid/content/SharedPreferences;)V

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const v7, 0x7f070020

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v1, v0, v1

    .line 758
    aput-boolean v5, v1, v6

    packed-switch p1, :pswitch_data_0

    .line 835
    const/4 v0, 0x0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    .line 839
    :goto_0
    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    return-object v0

    .line 760
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    const v2, 0x7f070010

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 762
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, LAn/stop/Anstop$2;

    invoke-direct {v4, p0}, LAn/stop/Anstop$2;-><init>(LAn/stop/Anstop;)V

    .line 763
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v5, v1, v5

    goto :goto_0

    .line 775
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 776
    const v2, 0x7f070011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 777
    const v2, 0x7f070013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 778
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 779
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 781
    const-string v3, "Ok"

    new-instance v4, LAn/stop/Anstop$3;

    invoke-direct {v4, p0, v2}, LAn/stop/Anstop$3;-><init>(LAn/stop/Anstop;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    new-instance v2, LAn/stop/Anstop$4;

    invoke-direct {v2, p0}, LAn/stop/Anstop$4;-><init>(LAn/stop/Anstop;)V

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 808
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 812
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 813
    const v2, 0x7f07002a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 814
    iget-object v2, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    const/4 v3, 0x3

    aput-boolean v5, v1, v3

    if-nez v2, :cond_1

    .line 815
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    .line 816
    :cond_1
    iget-object v2, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    .line 818
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 820
    const v3, 0x104000a

    new-instance v4, LAn/stop/Anstop$5;

    invoke-direct {v4, p0, v2}, LAn/stop/Anstop$5;-><init>(LAn/stop/Anstop;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 829
    new-instance v2, LAn/stop/Anstop$6;

    invoke-direct {v2, p0}, LAn/stop/Anstop$6;-><init>(LAn/stop/Anstop;)V

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    goto/16 :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 654
    const/16 v1, 0x8

    const/16 v2, 0x9

    const v3, 0x7f070011

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, LAn/stop/Anstop;->saveMenuItem:Landroid/view/MenuItem;

    .line 655
    const/16 v1, 0xc

    const/16 v2, 0xd

    const v3, 0x7f070023

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080050

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 656
    const/16 v1, 0xa

    const/16 v2, 0xb

    const v3, 0x7f070012

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080055

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 659
    const v1, 0x7f07001f

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v1

    const v2, 0x1080045

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 660
    const v2, 0x7f07000c

    invoke-interface {v1, v4, v5, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, LAn/stop/Anstop;->modeMenu_itemStop:Landroid/view/MenuItem;

    .line 661
    const/4 v2, 0x3

    const v3, 0x7f07000d

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, LAn/stop/Anstop;->modeMenu_itemCountdown:Landroid/view/MenuItem;

    .line 662
    invoke-interface {v1, v4, v5, v5}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 663
    invoke-direct {p0}, LAn/stop/Anstop;->updateModeMenuFromCurrent()V

    .line 664
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    .line 666
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->isStarted:Z

    aput-boolean v5, v0, v4

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 668
    iget-object v1, p0, LAn/stop/Anstop;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    aput-boolean v5, v0, v5

    .line 672
    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x5

    const v3, 0x7f070002

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 675
    const/4 v1, 0x6

    const/4 v2, 0x7

    const v3, 0x7f07000b

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080041

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 676
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    return v5
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v4, v0, v1

    .line 1282
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v3, v4, v2

    if-eqz v0, :cond_1

    aput-boolean v3, v4, v3

    .line 1308
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget-object v0, p0, LAn/stop/Anstop;->gestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x2

    aput-boolean v3, v4, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x3

    aput-boolean v3, v4, v1

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 1287
    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v6, v8

    const/4 v6, 0x4

    aput-boolean v3, v4, v6

    if-lez v1, :cond_3

    .line 1288
    iget-object v1, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    const-string v6, "SwipeRight"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x5

    aput-boolean v3, v4, v6

    if-eqz v1, :cond_2

    .line 1289
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->getMode()I

    move-result v6

    .line 1291
    const/4 v1, 0x6

    aput-boolean v3, v4, v1

    if-ne v6, v3, :cond_4

    .line 1292
    const/4 v1, 0x7

    aput-boolean v3, v4, v1

    move v1, v2

    .line 1295
    :goto_2
    invoke-direct {p0, v2, v6, v1}, LAn/stop/Anstop;->changeModeOrPopupConfirm(ZII)V

    const/16 v1, 0x9

    aput-boolean v3, v4, v1

    .line 1297
    :cond_2
    iget-object v0, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    const-string v1, "SwipeLeft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    aput-boolean v3, v4, v1

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->getMode()I

    move-result v1

    .line 1300
    const/16 v0, 0xb

    aput-boolean v3, v4, v0

    if-nez v1, :cond_5

    .line 1301
    const/16 v0, 0xc

    aput-boolean v3, v4, v0

    move v0, v3

    .line 1304
    :goto_3
    invoke-direct {p0, v3, v1, v0}, LAn/stop/Anstop;->changeModeOrPopupConfirm(ZII)V

    const/16 v0, 0xe

    aput-boolean v3, v4, v0

    .line 1307
    :cond_3
    const/16 v0, 0xf

    aput-boolean v3, v4, v0

    goto :goto_1

    .line 1294
    :cond_4
    add-int/lit8 v1, v6, 0x1

    const/16 v7, 0x8

    aput-boolean v3, v4, v7

    goto :goto_2

    .line 1303
    :cond_5
    add-int/lit8 v0, v1, -0x1

    const/16 v6, 0xd

    aput-boolean v3, v4, v6

    goto :goto_3

    .line 1308
    :cond_6
    const/16 v0, 0x10

    aput-boolean v3, v4, v0

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x11

    aget-object v0, v0, v3

    .line 697
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 699
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    aput-boolean v1, v0, v2

    packed-switch v4, :pswitch_data_0

    .line 734
    :pswitch_0
    const/16 v3, 0x8

    aput-boolean v1, v0, v3

    move v0, v2

    :goto_0
    return v0

    .line 701
    :pswitch_1
    const-class v4, LAn/stop/SettingsActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v3, v2}, LAn/stop/Anstop;->startActivityForResult(Landroid/content/Intent;I)V

    .line 704
    aput-boolean v1, v0, v1

    move v0, v1

    goto :goto_0

    .line 707
    :pswitch_2
    iget-object v3, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v3}, LAn/stop/Clock;->getMode()I

    move-result v3

    invoke-direct {p0, v1, v3, v2}, LAn/stop/Anstop;->changeModeOrPopupConfirm(ZII)V

    .line 708
    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 711
    :pswitch_3
    iget-object v3, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v3}, LAn/stop/Clock;->getMode()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, LAn/stop/Anstop;->changeModeOrPopupConfirm(ZII)V

    .line 712
    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 715
    :pswitch_4
    invoke-virtual {p0, v2}, LAn/stop/Anstop;->showDialog(I)V

    .line 716
    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 719
    :pswitch_5
    invoke-virtual {p0, v1}, LAn/stop/Anstop;->showDialog(I)V

    .line 720
    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 723
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    invoke-virtual {p0}, LAn/stop/Anstop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, LAn/stop/Anstop;->currentModeAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, LAn/stop/Anstop;->createBodyFromCurrent()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, LAn/stop/Anstop;->startSendMailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 728
    :pswitch_7
    const-class v2, LAn/stop/LoadActivity;

    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v3}, LAn/stop/Anstop;->startActivity(Landroid/content/Intent;)V

    .line 730
    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 625
    invoke-virtual {p0}, LAn/stop/Anstop;->isFinishing()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    .line 627
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->onAppPause()V

    aput-boolean v3, v0, v3

    .line 633
    :goto_0
    iget-object v1, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter;->close()V

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 638
    :cond_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 629
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v2, p0, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    .line 630
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, LAn/stop/Clock;->fillSaveState(Landroid/content/SharedPreferences;)Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 847
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    if-ne p1, v2, :cond_1

    iget-object v1, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    aput-boolean v3, v0, v3

    if-nez v1, :cond_2

    .line 849
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    aput-boolean v3, v0, v2

    .line 857
    :goto_0
    return-void

    .line 853
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 854
    iget-object v1, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    iget-object v2, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 857
    :goto_1
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 856
    :cond_3
    iget-object v1, p0, LAn/stop/Anstop;->commentEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xb

    aget-object v2, v0, v2

    .line 576
    aput-boolean v3, v2, v1

    if-nez p1, :cond_1

    aput-boolean v3, v2, v3

    .line 583
    :goto_0
    return-void

    .line 578
    :cond_1
    const-string v0, "clockAnstopCurrent"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 579
    aput-boolean v3, v2, v4

    if-ne v0, v4, :cond_2

    .line 580
    const/4 v0, 0x3

    aput-boolean v3, v2, v0

    move v0, v1

    .line 581
    :cond_2
    invoke-direct {p0, v0}, LAn/stop/Anstop;->setCurrentMode(I)V

    .line 582
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0, p1}, LAn/stop/Clock;->restoreFromSaveState(Landroid/os/Bundle;)Z

    .line 583
    const/4 v0, 0x4

    aput-boolean v3, v2, v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 643
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 644
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->isStarted:Z

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    aput-boolean v3, v0, v3

    .line 648
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->onAppResume()V

    .line 648
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 565
    iget-object v1, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1, p1}, LAn/stop/Clock;->fillSaveState(Landroid/os/Bundle;)Z

    .line 566
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public stopwatch()V
    .locals 9

    .prologue
    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v7, 0x42700000    # 60.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 449
    iput-object v5, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 450
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    aput-boolean v4, v1, v6

    if-nez v0, :cond_2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    aput-boolean v4, v1, v4

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LAn/stop/Anstop;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->setContentView(I)V

    .line 468
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    .line 470
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    .line 474
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 475
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 477
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    iget-object v0, p0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    iget-object v0, p0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 482
    iget-object v0, p0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    iget-object v0, p0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    iput-object v5, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    .line 487
    iget-object v0, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 488
    iget-object v0, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LAn/stop/Anstop;->setupCommentLongPress(Landroid/widget/TextView;)V

    .line 489
    iput-boolean v6, p0, LAn/stop/Anstop;->wroteStartTime:Z

    .line 491
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAn/stop/Anstop;->lapButton:Landroid/widget/Button;

    .line 492
    iget-object v0, p0, LAn/stop/Anstop;->lapButton:Landroid/widget/Button;

    new-instance v2, LAn/stop/Anstop$lapButtonListener;

    invoke-direct {v2, p0, v5}, LAn/stop/Anstop$lapButtonListener;-><init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAn/stop/Anstop;->startButton:Landroid/widget/Button;

    .line 495
    iget-object v0, p0, LAn/stop/Anstop;->startButton:Landroid/widget/Button;

    new-instance v2, LAn/stop/Anstop$startButtonListener;

    invoke-direct {v2, p0, v5}, LAn/stop/Anstop$startButtonListener;-><init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAn/stop/Anstop;->resetButton:Landroid/widget/Button;

    .line 498
    iget-object v0, p0, LAn/stop/Anstop;->resetButton:Landroid/widget/Button;

    new-instance v2, LAn/stop/Anstop$resetButtonListener;

    invoke-direct {v2, p0, v5}, LAn/stop/Anstop$resetButtonListener;-><init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, LAn/stop/Anstop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, LAn/stop/Anstop;->lapScroll:Landroid/widget/ScrollView;

    .line 503
    iget-object v0, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0, v6}, LAn/stop/Clock;->changeMode(I)V

    .line 505
    invoke-direct {p0}, LAn/stop/Anstop;->setupGesture()V

    .line 506
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void

    .line 452
    :cond_2
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    if-lez v0, :cond_1

    .line 454
    iget-object v0, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    iget-object v2, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 455
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    if-nez v0, :cond_3

    .line 457
    new-instance v0, LAn/stop/AnstopDbAdapter;

    invoke-direct {v0, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 458
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 460
    :cond_3
    iget-object v0, p0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->deleteTemporaryLaps()V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    goto/16 :goto_0
.end method

.method updateStartTimeCommentLapsView(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, LAn/stop/Anstop;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 1092
    iget-object v1, p0, LAn/stop/Anstop;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    aput-boolean v6, v0, v7

    if-nez v1, :cond_1

    .line 1093
    invoke-static {p0}, LAn/stop/Anstop;->buildDateFormatDOWmedium(Landroid/content/Context;)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, p0, LAn/stop/Anstop;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    aput-boolean v6, v0, v6

    .line 1095
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1097
    iget-object v2, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v2}, LAn/stop/Clock;->getStartTimeActual()J

    move-result-wide v2

    .line 1098
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x2

    aput-boolean v6, v0, v5

    if-eqz v4, :cond_2

    .line 1100
    invoke-virtual {p0}, LAn/stop/Anstop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1101
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    iget-object v4, p0, LAn/stop/Anstop;->fmt_dow_meddate_time:Ljava/lang/StringBuffer;

    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 1105
    :cond_2
    iget-object v2, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/4 v3, 0x4

    aput-boolean v6, v0, v3

    if-eqz v2, :cond_4

    iget-object v2, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    aput-boolean v6, v0, v3

    if-lez v2, :cond_4

    .line 1107
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x6

    aput-boolean v6, v0, v3

    if-lez v2, :cond_3

    .line 1108
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 1109
    :cond_3
    iget-object v2, p0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 1112
    :cond_4
    iget-object v2, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v3, 0x9

    aput-boolean v6, v0, v3

    if-eqz v2, :cond_8

    .line 1114
    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    if-eqz p1, :cond_5

    .line 1116
    iget-object v2, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    iget-object v3, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1117
    iget-object v2, p0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v3, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, LAn/stop/Clock;->formatTimeAllLaps(Ljava/lang/StringBuilder;)V

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 1119
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0xc

    aput-boolean v6, v0, v3

    if-lez v2, :cond_6

    .line 1120
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xd

    aput-boolean v6, v0, v2

    .line 1121
    :cond_6
    iget-object v2, p0, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1122
    iget-object v2, p0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 1128
    :cond_7
    :goto_0
    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    return-void

    .line 1124
    :cond_8
    iget-object v2, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    const/16 v3, 0xf

    aput-boolean v6, v0, v3

    if-eqz v2, :cond_7

    .line 1126
    iget-object v2, p0, LAn/stop/Anstop;->startTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
