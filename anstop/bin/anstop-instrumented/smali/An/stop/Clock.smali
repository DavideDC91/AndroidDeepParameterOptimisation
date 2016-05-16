.class public LAn/stop/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAn/stop/Clock$LapFormatter;,
        LAn/stop/Clock$hourhandler;,
        LAn/stop/Clock$minhandler;,
        LAn/stop/Clock$sechandler;,
        LAn/stop/Clock$dsechandler;,
        LAn/stop/Clock$countDownThread;,
        LAn/stop/Clock$clockThread;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field public static final LAP_FMT_FLAG_DELTA:I = 0x2

.field public static final LAP_FMT_FLAG_ELAPSED:I = 0x1

.field public static final LAP_FMT_FLAG_SYSTIME:I = 0x4

.field private static final serialVersionUID:J = -0x7a03537578f17cbbL


# instance fields
.field private appPauseTime:J

.field private appStateRestoreTime:J

.field private countdnTotalSeconds:I

.field dsec:I

.field dsech:LAn/stop/Clock$dsechandler;

.field hour:I

.field hourh:LAn/stop/Clock$hourhandler;

.field public isStarted:Z

.field lap_elapsed:[J

.field lap_systime:[J

.field public lapf:LAn/stop/Clock$LapFormatter;

.field laps:I

.field min:I

.field minh:LAn/stop/Clock$minhandler;

.field parent:LAn/stop/Anstop;

.field sec:I

.field sech:LAn/stop/Clock$sechandler;

.field private startTimeActual:J

.field private startTimeAdj:J

.field private stopTime:J

.field threadC:LAn/stop/Clock$countDownThread;

.field threadS:LAn/stop/Clock$clockThread;

.field private v:I

.field public wasStarted:Z


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v0, 0x15

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Clock;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x15

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x23

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x1b

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x19

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Clock"

    const-wide v2, -0x2b875b6326c84fcL    # -3.00687727305769E295

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x14

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(LAn/stop/Anstop;)V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v2, p0, LAn/stop/Clock;->isStarted:Z

    .line 116
    iput-boolean v2, p0, LAn/stop/Clock;->wasStarted:Z

    .line 126
    iput v2, p0, LAn/stop/Clock;->dsec:I

    .line 127
    iput v2, p0, LAn/stop/Clock;->sec:I

    .line 128
    iput v2, p0, LAn/stop/Clock;->min:I

    .line 129
    iput v2, p0, LAn/stop/Clock;->hour:I

    .line 136
    iput v6, p0, LAn/stop/Clock;->laps:I

    .line 148
    new-array v1, v7, [J

    iput-object v1, p0, LAn/stop/Clock;->lap_elapsed:[J

    .line 161
    new-array v1, v7, [J

    iput-object v1, p0, LAn/stop/Clock;->lap_systime:[J

    .line 169
    iput v2, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    .line 206
    iput-object p1, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    .line 207
    new-instance v1, LAn/stop/Clock$LapFormatter;

    invoke-direct {v1}, LAn/stop/Clock$LapFormatter;-><init>()V

    iput-object v1, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    .line 209
    new-instance v1, LAn/stop/Clock$dsechandler;

    invoke-direct {v1, p0, v3}, LAn/stop/Clock$dsechandler;-><init>(LAn/stop/Clock;LAn/stop/Clock$1;)V

    iput-object v1, p0, LAn/stop/Clock;->dsech:LAn/stop/Clock$dsechandler;

    .line 210
    new-instance v1, LAn/stop/Clock$sechandler;

    invoke-direct {v1, p0, v3}, LAn/stop/Clock$sechandler;-><init>(LAn/stop/Clock;LAn/stop/Clock$1;)V

    iput-object v1, p0, LAn/stop/Clock;->sech:LAn/stop/Clock$sechandler;

    .line 211
    new-instance v1, LAn/stop/Clock$minhandler;

    invoke-direct {v1, p0, v3}, LAn/stop/Clock$minhandler;-><init>(LAn/stop/Clock;LAn/stop/Clock$1;)V

    iput-object v1, p0, LAn/stop/Clock;->minh:LAn/stop/Clock$minhandler;

    .line 212
    new-instance v1, LAn/stop/Clock$hourhandler;

    invoke-direct {v1, p0, v3}, LAn/stop/Clock$hourhandler;-><init>(LAn/stop/Clock;LAn/stop/Clock$1;)V

    iput-object v1, p0, LAn/stop/Clock;->hourh:LAn/stop/Clock$hourhandler;

    .line 215
    iput-wide v4, p0, LAn/stop/Clock;->appPauseTime:J

    .line 216
    iput-wide v4, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 217
    iput-wide v4, p0, LAn/stop/Clock;->stopTime:J

    .line 218
    iput-wide v4, p0, LAn/stop/Clock;->startTimeActual:J

    .line 219
    iput-wide v4, p0, LAn/stop/Clock;->startTimeAdj:J

    .line 220
    aput-boolean v6, v0, v2

    return-void
.end method

.method private adjClockOnAppResume(ZJ)V
    .locals 6

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v2, v0, v1

    .line 640
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    if-nez p1, :cond_2

    .line 645
    iget v0, p0, LAn/stop/Clock;->v:I

    const/4 v1, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    iget v0, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iget-wide v4, p0, LAn/stop/Clock;->startTimeAdj:J

    sub-long v4, p2, v4

    sub-long/2addr v0, v4

    .line 654
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    if-gez v3, :cond_1

    .line 655
    const-wide/16 v0, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 658
    :cond_1
    :goto_0
    const-wide/16 v4, 0x3e8

    rem-long v4, v0, v4

    long-to-int v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, LAn/stop/Clock;->dsec:I

    .line 659
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 660
    const-wide/16 v4, 0x3c

    rem-long v4, v0, v4

    long-to-int v3, v4

    iput v3, p0, LAn/stop/Clock;->sec:I

    .line 661
    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 662
    const-wide/16 v4, 0x3c

    rem-long v4, v0, v4

    long-to-int v3, v4

    iput v3, p0, LAn/stop/Clock;->min:I

    .line 663
    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 664
    long-to-int v0, v0

    iput v0, p0, LAn/stop/Clock;->hour:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 667
    :cond_2
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    iget v1, p0, LAn/stop/Clock;->dsec:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 669
    :cond_3
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->secondsView:Landroid/widget/TextView;

    iget-object v1, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v1, v1, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget v3, p0, LAn/stop/Clock;->sec:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 671
    :cond_4
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    const/16 v1, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_5

    .line 672
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->minView:Landroid/widget/TextView;

    iget-object v1, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v1, v1, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget v3, p0, LAn/stop/Clock;->min:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 673
    :cond_5
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    const/16 v1, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_6

    .line 674
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->hourView:Landroid/widget/TextView;

    iget v1, p0, LAn/stop/Clock;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 675
    :cond_6
    const/16 v0, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    return-void

    .line 648
    :pswitch_0
    iget-wide v0, p0, LAn/stop/Clock;->startTimeAdj:J

    sub-long v0, p2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto/16 :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeMode(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 868
    invoke-virtual {p0, p1, v2, v2, v2}, LAn/stop/Clock;->reset(IIII)Z

    .line 869
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public count()V
    .locals 10

    .prologue
    const/16 v4, 0x13

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 887
    iget-boolean v1, p0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v8, v0, v9

    if-nez v1, :cond_9

    .line 889
    iget-boolean v1, p0, LAn/stop/Clock;->wasStarted:Z

    aput-boolean v8, v0, v8

    if-nez v1, :cond_4

    .line 891
    iput-wide v2, p0, LAn/stop/Clock;->startTimeActual:J

    .line 892
    iget-wide v2, p0, LAn/stop/Clock;->startTimeActual:J

    iput-wide v2, p0, LAn/stop/Clock;->startTimeAdj:J

    const/4 v1, 0x2

    aput-boolean v8, v0, v1

    .line 899
    :cond_1
    :goto_0
    iput-boolean v8, p0, LAn/stop/Clock;->isStarted:Z

    .line 900
    iput-boolean v8, p0, LAn/stop/Clock;->wasStarted:Z

    .line 901
    iget v1, p0, LAn/stop/Clock;->v:I

    const/4 v2, 0x5

    aput-boolean v8, v0, v2

    if-nez v1, :cond_5

    .line 902
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/4 v2, 0x6

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v1

    const/4 v2, 0x7

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->interrupt()V

    const/16 v1, 0x8

    aput-boolean v8, v0, v1

    .line 904
    :cond_2
    new-instance v1, LAn/stop/Clock$clockThread;

    invoke-direct {v1, p0}, LAn/stop/Clock$clockThread;-><init>(LAn/stop/Clock;)V

    iput-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    .line 905
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->start()V

    const/16 v1, 0x9

    aput-boolean v8, v0, v1

    .line 939
    :cond_3
    :goto_1
    const/16 v1, 0x18

    aput-boolean v8, v0, v1

    return-void

    .line 894
    :cond_4
    iget-wide v4, p0, LAn/stop/Clock;->stopTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    const/4 v4, 0x3

    aput-boolean v8, v0, v4

    if-eqz v1, :cond_1

    .line 896
    iget-wide v4, p0, LAn/stop/Clock;->startTimeAdj:J

    iget-wide v6, p0, LAn/stop/Clock;->stopTime:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, LAn/stop/Clock;->startTimeAdj:J

    const/4 v1, 0x4

    aput-boolean v8, v0, v1

    goto :goto_0

    .line 910
    :cond_5
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    const/16 v2, 0xa

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v1

    const/16 v2, 0xb

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_6

    .line 911
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->interrupt()V

    const/16 v1, 0xc

    aput-boolean v8, v0, v1

    .line 912
    :cond_6
    iget v1, p0, LAn/stop/Clock;->dsec:I

    const/16 v2, 0xd

    aput-boolean v8, v0, v2

    if-gtz v1, :cond_7

    iget v1, p0, LAn/stop/Clock;->sec:I

    const/16 v2, 0xe

    aput-boolean v8, v0, v2

    if-gtz v1, :cond_7

    iget v1, p0, LAn/stop/Clock;->min:I

    const/16 v2, 0xf

    aput-boolean v8, v0, v2

    if-gtz v1, :cond_7

    iget v1, p0, LAn/stop/Clock;->hour:I

    const/16 v2, 0x10

    aput-boolean v8, v0, v2

    if-lez v1, :cond_8

    .line 914
    :cond_7
    new-instance v1, LAn/stop/Clock$countDownThread;

    invoke-direct {v1, p0}, LAn/stop/Clock$countDownThread;-><init>(LAn/stop/Clock;)V

    iput-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    .line 915
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->start()V

    const/16 v1, 0x11

    aput-boolean v8, v0, v1

    goto :goto_1

    .line 917
    :cond_8
    iput-boolean v9, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v1, 0x12

    aput-boolean v8, v0, v1

    goto :goto_1

    .line 924
    :cond_9
    iput-boolean v9, p0, LAn/stop/Clock;->isStarted:Z

    .line 925
    iput-wide v2, p0, LAn/stop/Clock;->stopTime:J

    .line 927
    iget v1, p0, LAn/stop/Clock;->v:I

    aput-boolean v8, v0, v4

    if-nez v1, :cond_a

    .line 928
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v1

    const/16 v2, 0x14

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_3

    .line 929
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->interrupt()V

    const/16 v1, 0x15

    aput-boolean v8, v0, v1

    goto/16 :goto_1

    .line 934
    :cond_a
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v1

    const/16 v2, 0x16

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_3

    .line 935
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->interrupt()V

    const/16 v1, 0x17

    aput-boolean v8, v0, v1

    goto/16 :goto_1
.end method

.method public fillSaveState(Landroid/content/SharedPreferences;)Z
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v4

    .line 307
    invoke-virtual {p0}, LAn/stop/Clock;->isInUse()Z

    move-result v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    .line 308
    :goto_0
    const/4 v4, 0x3

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_2

    const-string v4, "anstop_in_use"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x4

    aput-boolean v1, v3, v5

    if-nez v4, :cond_2

    .line 310
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    .line 364
    :goto_1
    return v2

    .line 307
    :cond_1
    aput-boolean v1, v3, v4

    move v0, v2

    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 316
    const/4 v5, 0x6

    aput-boolean v1, v3, v5

    if-eqz v0, :cond_3

    .line 318
    const-string v0, "anstop_in_use"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    .line 362
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    iget-boolean v2, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v0, 0x14

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 320
    :cond_3
    const-string v0, "anstop_in_use"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v0, "anstop_state_current"

    iget v5, p0, LAn/stop/Clock;->v:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    const-string v0, "anstop_state_wroteStart"

    iget-object v5, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-boolean v5, v5, LAn/stop/Anstop;->wroteStartTime:Z

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    const-string v0, "anstop_state_clockDigits_h"

    iget v5, p0, LAn/stop/Clock;->hour:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string v0, "anstop_state_clockDigits_m"

    iget v5, p0, LAn/stop/Clock;->min:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v0, "anstop_state_clockDigits_s"

    iget v5, p0, LAn/stop/Clock;->sec:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v0, "anstop_state_clockDigits_d"

    iget v5, p0, LAn/stop/Clock;->dsec:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string v0, "anstop_state_clockActive"

    iget-boolean v5, p0, LAn/stop/Clock;->isStarted:Z

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v0, "anstop_state_clockWasActive"

    iget-boolean v5, p0, LAn/stop/Clock;->wasStarted:Z

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v0, "anstop_state_clockStateSaveTime"

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 335
    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v5, 0x8

    aput-boolean v1, v3, v5

    if-nez v0, :cond_4

    .line 336
    const-string v0, "anstop_state_clockStopTime"

    iget-wide v6, p0, LAn/stop/Clock;->stopTime:J

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    .line 339
    :goto_3
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v5, 0xb

    aput-boolean v1, v3, v5

    if-eqz v0, :cond_5

    .line 340
    const-string v0, "anstop_state_clockComment"

    iget-object v5, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v5, v5, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0xc

    aput-boolean v1, v3, v0

    .line 343
    :goto_4
    const-string v0, "anstop_state_clockLapCount"

    iget v5, p0, LAn/stop/Clock;->laps:I

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v5, 0xe

    aput-boolean v1, v3, v5

    if-eqz v0, :cond_6

    .line 345
    const-string v0, "anstop_state_clockLaps"

    iget-object v5, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v5, v5, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0xf

    aput-boolean v1, v3, v0

    .line 348
    :goto_5
    const-string v0, "anstop_state_clockStartTimeActual"

    iget-wide v6, p0, LAn/stop/Clock;->startTimeActual:J

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v0, "anstop_state_clockStartTimeAdj"

    iget-wide v6, p0, LAn/stop/Clock;->startTimeAdj:J

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 350
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    const/16 v5, 0x11

    aput-boolean v1, v3, v5

    if-eqz v0, :cond_7

    .line 353
    const-string v0, "anstop_state_clockCountHour"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    const-string v0, "anstop_state_clockCountMin"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string v0, "anstop_state_clockCountSec"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x12

    aput-boolean v1, v3, v0

    goto/16 :goto_2

    .line 338
    :cond_4
    const-string v0, "anstop_state_clockStopTime"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    goto/16 :goto_3

    .line 342
    :cond_5
    const-string v0, "anstop_state_clockComment"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    goto :goto_4

    .line 347
    :cond_6
    const-string v0, "anstop_state_clockLaps"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    goto :goto_5

    .line 357
    :cond_7
    const-string v0, "anstop_state_clockCountHour"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    const-string v0, "anstop_state_clockCountMin"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 359
    const-string v0, "anstop_state_clockCountSec"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x13

    aput-boolean v1, v3, v0

    goto/16 :goto_2
.end method

.method public fillSaveState(Landroid/os/Bundle;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 258
    const-string v0, "clockAnstopCurrent"

    iget v6, p0, LAn/stop/Clock;->v:I

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v0, "clockAnstopWroteStart"

    iget-object v6, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-boolean v6, v6, LAn/stop/Anstop;->wroteStartTime:Z

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    new-array v0, v9, [I

    iget v6, p0, LAn/stop/Clock;->hour:I

    aput v6, v0, v2

    iget v6, p0, LAn/stop/Clock;->min:I

    aput v6, v0, v1

    iget v6, p0, LAn/stop/Clock;->sec:I

    aput v6, v0, v7

    iget v6, p0, LAn/stop/Clock;->dsec:I

    aput v6, v0, v8

    .line 261
    const-string v6, "clockDigits"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 262
    const-string v6, "clockActive"

    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_3

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string v0, "clockWasActive"

    iget-boolean v6, p0, LAn/stop/Clock;->wasStarted:Z

    aput-boolean v1, v3, v8

    if-eqz v6, :cond_4

    aput-boolean v1, v3, v9

    move v2, v1

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string v0, "clockStateSaveTime"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    if-nez v0, :cond_5

    .line 266
    const-string v0, "clockStopTime"

    iget-wide v4, p0, LAn/stop/Clock;->stopTime:J

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    .line 269
    :goto_2
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_6

    .line 270
    const-string v0, "clockComment"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    .line 273
    :goto_3
    const-string v0, "clockLapCount"

    iget v2, p0, LAn/stop/Clock;->laps:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v2, 0xc

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_7

    .line 275
    const-string v0, "clockLaps"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    .line 278
    :goto_4
    iget v0, p0, LAn/stop/Clock;->laps:I

    const/16 v2, 0xf

    aput-boolean v1, v3, v2

    if-le v0, v1, :cond_1

    .line 280
    const-string v0, "clockLapsElapsed"

    iget-object v2, p0, LAn/stop/Clock;->lap_elapsed:[J

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 281
    const-string v0, "clockLapsSystime"

    iget-object v2, p0, LAn/stop/Clock;->lap_systime:[J

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    .line 283
    :cond_1
    const-string v0, "clockStartTimeActual"

    iget-wide v4, p0, LAn/stop/Clock;->startTimeActual:J

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    const-string v0, "clockStartTimeAdj"

    iget-wide v4, p0, LAn/stop/Clock;->startTimeAdj:J

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    iget-object v0, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x11

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_2

    .line 288
    const-string v0, "clockCountHour"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v0, "clockCountMin"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v0, "clockCountSec"

    iget-object v2, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x12

    aput-boolean v1, v3, v0

    .line 293
    :cond_2
    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v2, 0x13

    aput-boolean v1, v3, v2

    return v0

    .line 262
    :cond_3
    aput-boolean v1, v3, v7

    move v0, v2

    goto/16 :goto_0

    .line 263
    :cond_4
    const/4 v6, 0x5

    aput-boolean v1, v3, v6

    goto/16 :goto_1

    .line 268
    :cond_5
    const-string v0, "clockStopTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    goto/16 :goto_2

    .line 272
    :cond_6
    const-string v0, "clockComment"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-boolean v1, v3, v0

    goto/16 :goto_3

    .line 277
    :cond_7
    const-string v0, "clockLaps"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v0, 0xe

    aput-boolean v1, v3, v0

    goto/16 :goto_4
.end method

.method public formatTimeAllLaps(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 734
    iget-object v1, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget v2, p0, LAn/stop/Clock;->laps:I

    iget-object v3, p0, LAn/stop/Clock;->lap_elapsed:[J

    iget-object v4, p0, LAn/stop/Clock;->lap_systime:[J

    invoke-virtual {v1, p1, v2, v3, v4}, LAn/stop/Clock$LapFormatter;->formatTimeAllLaps(Ljava/lang/StringBuilder;I[J[J)V

    .line 735
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCurrentValue()Ljava/lang/StringBuffer;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 685
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 686
    iget v2, p0, LAn/stop/Clock;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 687
    const-string v2, "h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    iget-object v2, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v2, v2, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget v3, p0, LAn/stop/Clock;->min:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 690
    iget-object v2, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget-object v2, v2, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    iget v3, p0, LAn/stop/Clock;->sec:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 692
    iget v2, p0, LAn/stop/Clock;->dsec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 693
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCurrentValueMillis(Ljava/lang/StringBuilder;Z)J
    .locals 14

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v13, v0, v1

    .line 714
    iget v6, p0, LAn/stop/Clock;->dsec:I

    iget v5, p0, LAn/stop/Clock;->sec:I

    iget v4, p0, LAn/stop/Clock;->min:I

    iget v3, p0, LAn/stop/Clock;->hour:I

    .line 715
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    int-to-long v0, v0

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    .line 719
    iget-object v0, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    iget v7, p0, LAn/stop/Clock;->laps:I

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, LAn/stop/Clock;->lap_elapsed:[J

    move-object v1, p1

    move/from16 v2, p2

    .line 720
    invoke-virtual/range {v0 .. v12}, LAn/stop/Clock$LapFormatter;->formatTimeLap(Ljava/lang/StringBuilder;ZIIIIIJJ[J)V

    .line 723
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v13, v0

    return-wide v8
.end method

.method public getMode()I
    .locals 4

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 765
    iget v1, p0, LAn/stop/Clock;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getStartTimeActual()J
    .locals 5

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 742
    iget-wide v2, p0, LAn/stop/Clock;->startTimeActual:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getStopTime()J
    .locals 5

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 751
    iget-wide v2, p0, LAn/stop/Clock;->stopTime:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public isInUse()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xd

    aget-object v3, v0, v3

    .line 757
    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v2, v3, v1

    if-nez v0, :cond_1

    iget v0, p0, LAn/stop/Clock;->hour:I

    aput-boolean v2, v3, v2

    if-gtz v0, :cond_1

    iget v0, p0, LAn/stop/Clock;->min:I

    const/4 v4, 0x2

    aput-boolean v2, v3, v4

    if-gtz v0, :cond_1

    iget v0, p0, LAn/stop/Clock;->sec:I

    const/4 v4, 0x3

    aput-boolean v2, v3, v4

    if-gtz v0, :cond_1

    iget v0, p0, LAn/stop/Clock;->dsec:I

    const/4 v4, 0x4

    aput-boolean v2, v3, v4

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    move v0, v2

    :goto_0
    const/4 v1, 0x7

    aput-boolean v2, v3, v1

    return v0

    :cond_2
    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0
.end method

.method public lap(Ljava/lang/StringBuilder;)I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 793
    invoke-virtual {p0, p1, v12}, LAn/stop/Clock;->getCurrentValueMillis(Ljava/lang/StringBuilder;Z)J

    move-result-wide v4

    .line 794
    iget v1, p0, LAn/stop/Clock;->laps:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, LAn/stop/Clock;->laps:I

    .line 795
    add-int/lit8 v6, v1, -0x1

    .line 796
    iget-object v7, p0, LAn/stop/Clock;->lap_systime:[J

    array-length v7, v7

    aput-boolean v12, v0, v11

    if-lt v6, v7, :cond_1

    .line 799
    iget-object v7, p0, LAn/stop/Clock;->lap_systime:[J

    array-length v7, v7

    .line 800
    add-int/lit8 v8, v7, 0x40

    .line 801
    new-array v9, v8, [J

    .line 802
    new-array v8, v8, [J

    .line 803
    iget-object v10, p0, LAn/stop/Clock;->lap_systime:[J

    invoke-static {v10, v11, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iget-object v10, p0, LAn/stop/Clock;->lap_elapsed:[J

    invoke-static {v10, v11, v8, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iput-object v9, p0, LAn/stop/Clock;->lap_systime:[J

    .line 806
    iput-object v8, p0, LAn/stop/Clock;->lap_elapsed:[J

    aput-boolean v12, v0, v12

    .line 808
    :cond_1
    iget-object v7, p0, LAn/stop/Clock;->lap_systime:[J

    aput-wide v2, v7, v6

    .line 809
    iget-object v2, p0, LAn/stop/Clock;->lap_elapsed:[J

    aput-wide v4, v2, v6

    .line 811
    const/4 v2, 0x2

    aput-boolean v12, v0, v2

    return v1
.end method

.method public onAppPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LAn/stop/Clock;->appPauseTime:J

    .line 375
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v1

    aput-boolean v4, v0, v4

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->interrupt()V

    .line 378
    iput-object v6, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 380
    :cond_1
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    aput-boolean v4, v0, v5

    if-eqz v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->interrupt()V

    .line 383
    iput-object v6, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 385
    :cond_2
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onAppResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v8

    .line 395
    iget-boolean v1, p0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v6, v0, v7

    if-nez v1, :cond_1

    aput-boolean v6, v0, v6

    .line 414
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-wide v2, p0, LAn/stop/Clock;->appPauseTime:J

    iget-wide v4, p0, LAn/stop/Clock;->appStateRestoreTime:J

    cmp-long v1, v2, v4

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    if-lez v1, :cond_2

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v7, v2, v3}, LAn/stop/Clock;->adjClockOnAppResume(ZJ)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 401
    :cond_2
    iget v1, p0, LAn/stop/Clock;->v:I

    aput-boolean v6, v0, v8

    if-nez v1, :cond_4

    .line 402
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->interrupt()V

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 404
    :cond_3
    new-instance v1, LAn/stop/Clock$clockThread;

    invoke-direct {v1, p0}, LAn/stop/Clock$clockThread;-><init>(LAn/stop/Clock;)V

    iput-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    .line 405
    iget-object v1, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v1}, LAn/stop/Clock$clockThread;->start()V

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    .line 414
    :goto_1
    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 409
    :cond_4
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v1

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    if-eqz v1, :cond_5

    .line 410
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->interrupt()V

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 411
    :cond_5
    new-instance v1, LAn/stop/Clock$countDownThread;

    invoke-direct {v1, p0}, LAn/stop/Clock$countDownThread;-><init>(LAn/stop/Clock;)V

    iput-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    .line 412
    iget-object v1, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v1}, LAn/stop/Clock$countDownThread;->start()V

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method public reset(IIII)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x11

    aget-object v0, v0, v3

    .line 828
    iget-boolean v3, p0, LAn/stop/Clock;->isStarted:Z

    aput-boolean v2, v0, v1

    if-eqz v3, :cond_1

    .line 829
    aput-boolean v2, v0, v2

    move v0, v1

    .line 855
    :goto_0
    return v0

    .line 831
    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x2

    aput-boolean v2, v0, v4

    if-eq p1, v3, :cond_2

    .line 832
    iput p1, p0, LAn/stop/Clock;->v:I

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    .line 834
    :cond_2
    iput-boolean v1, p0, LAn/stop/Clock;->wasStarted:Z

    .line 835
    iput-wide v6, p0, LAn/stop/Clock;->appPauseTime:J

    .line 836
    iput-wide v6, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 837
    iput-wide v6, p0, LAn/stop/Clock;->stopTime:J

    .line 838
    iput-wide v6, p0, LAn/stop/Clock;->startTimeActual:J

    .line 839
    iput-wide v6, p0, LAn/stop/Clock;->startTimeAdj:J

    .line 841
    iput v2, p0, LAn/stop/Clock;->laps:I

    .line 842
    iget v3, p0, LAn/stop/Clock;->v:I

    const/4 v4, 0x4

    aput-boolean v2, v0, v4

    if-nez v3, :cond_3

    .line 844
    iput v1, p0, LAn/stop/Clock;->hour:I

    .line 845
    iput v1, p0, LAn/stop/Clock;->min:I

    .line 846
    iput v1, p0, LAn/stop/Clock;->sec:I

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    .line 853
    :goto_1
    iput v1, p0, LAn/stop/Clock;->dsec:I

    .line 855
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0

    .line 848
    :cond_3
    iput p2, p0, LAn/stop/Clock;->hour:I

    .line 849
    iput p3, p0, LAn/stop/Clock;->min:I

    .line 850
    iput p4, p0, LAn/stop/Clock;->sec:I

    .line 851
    mul-int/lit8 v3, p2, 0x3c

    add-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, p4

    iput v3, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    goto :goto_1
.end method

.method public restoreFromSaveState(Landroid/content/SharedPreferences;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 543
    aput-boolean v7, v2, v1

    if-eqz p1, :cond_1

    const-string v0, "anstop_in_use"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v7, v2, v7

    if-nez v0, :cond_2

    .line 544
    :cond_1
    const/4 v0, 0x2

    aput-boolean v7, v2, v0

    move v0, v1

    .line 619
    :goto_0
    return v0

    .line 546
    :cond_2
    iput-wide v4, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 550
    const-string v0, "anstop_state_current"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->v:I

    .line 554
    const-string v0, "anstop_state_clockDigits_h"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->hour:I

    .line 555
    const-string v0, "anstop_state_clockDigits_m"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->min:I

    .line 556
    const-string v0, "anstop_state_clockDigits_s"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->sec:I

    .line 557
    const-string v0, "anstop_state_clockDigits_d"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->dsec:I

    .line 560
    const-string v0, "anstop_state_clockActive"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 561
    const-string v3, "anstop_state_clockWasActive"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, LAn/stop/Clock;->wasStarted:Z

    .line 562
    const-string v3, "anstop_state_clockStateSaveTime"

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 563
    const-string v3, "anstop_state_clockStartTimeActual"

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, LAn/stop/Clock;->startTimeActual:J

    .line 564
    const-string v3, "anstop_state_clockStartTimeAdj"

    iget-wide v4, p0, LAn/stop/Clock;->startTimeActual:J

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, LAn/stop/Clock;->startTimeAdj:J

    .line 565
    const-string v3, "anstop_state_clockStopTime"

    const-wide/16 v4, -0x1

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, LAn/stop/Clock;->stopTime:J

    .line 566
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    const-string v4, "anstop_state_wroteStart"

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, LAn/stop/Anstop;->wroteStartTime:Z

    .line 567
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    const-string v4, "anstop_state_clockComment"

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 568
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/4 v4, 0x3

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    aput-boolean v7, v2, v4

    if-nez v3, :cond_3

    .line 569
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iput-object v8, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/4 v3, 0x5

    aput-boolean v7, v2, v3

    .line 570
    :cond_3
    const-string v3, "anstop_state_clockLapCount"

    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, LAn/stop/Clock;->laps:I

    .line 571
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_4

    .line 573
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v3, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    .line 574
    const-string v3, "anstop_state_clockLaps"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    aput-boolean v7, v2, v5

    if-lez v4, :cond_4

    .line 576
    iget-object v4, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v4, v4, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    aput-boolean v7, v2, v3

    .line 579
    :cond_4
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v4, 0x9

    aput-boolean v7, v2, v4

    if-nez v3, :cond_5

    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v4, 0xa

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_6

    .line 580
    :cond_5
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    invoke-virtual {v3, v1}, LAn/stop/Anstop;->updateStartTimeCommentLapsView(Z)V

    const/16 v3, 0xb

    aput-boolean v7, v2, v3

    .line 582
    :cond_6
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    const/16 v4, 0xc

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_a

    .line 585
    const-string v3, "anstop_state_clockCountHour"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 586
    const-string v4, "anstop_state_clockCountMin"

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 587
    const-string v5, "anstop_state_clockCountSec"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 588
    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v6, v5

    iput v6, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    .line 589
    iget-object v6, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v6, v6, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 590
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 591
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v3, 0xd

    aput-boolean v7, v2, v3

    .line 596
    :goto_1
    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/16 v4, 0xf

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_7

    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v3}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v3

    const/16 v4, 0x10

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_7

    .line 597
    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v3}, LAn/stop/Clock$clockThread;->interrupt()V

    const/16 v3, 0x11

    aput-boolean v7, v2, v3

    .line 598
    :cond_7
    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    const/16 v4, 0x12

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_8

    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v3}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v3

    const/16 v4, 0x13

    aput-boolean v7, v2, v4

    if-eqz v3, :cond_8

    .line 599
    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v3}, LAn/stop/Clock$countDownThread;->interrupt()V

    const/16 v3, 0x14

    aput-boolean v7, v2, v3

    .line 603
    :cond_8
    const/16 v3, 0x15

    aput-boolean v7, v2, v3

    if-eqz v0, :cond_b

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 606
    iput-wide v4, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 607
    invoke-direct {p0, v1, v4, v5}, LAn/stop/Clock;->adjClockOnAppResume(ZJ)V

    const/16 v3, 0x16

    aput-boolean v7, v2, v3

    .line 612
    :goto_2
    iput-boolean v1, p0, LAn/stop/Clock;->isStarted:Z

    .line 613
    const/16 v1, 0x18

    aput-boolean v7, v2, v1

    if-eqz v0, :cond_9

    .line 617
    invoke-virtual {p0}, LAn/stop/Clock;->count()V

    const/16 v0, 0x19

    aput-boolean v7, v2, v0

    .line 619
    :cond_9
    iget-boolean v0, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v1, 0x1a

    aput-boolean v7, v2, v1

    goto/16 :goto_0

    .line 593
    :cond_a
    iput v1, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    const/16 v3, 0xe

    aput-boolean v7, v2, v3

    goto :goto_1

    .line 609
    :cond_b
    const-wide/16 v4, 0x0

    invoke-direct {p0, v7, v4, v5}, LAn/stop/Clock;->adjClockOnAppResume(ZJ)V

    const/16 v3, 0x17

    aput-boolean v7, v2, v3

    goto :goto_2
.end method

.method public restoreFromSaveState(Landroid/os/Bundle;)Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v9

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 434
    iput-wide v6, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 435
    aput-boolean v1, v4, v2

    if-eqz p1, :cond_1

    const-string v0, "clockActive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    aput-boolean v1, v4, v1

    if-nez v0, :cond_2

    .line 436
    :cond_1
    aput-boolean v1, v4, v5

    .line 515
    :goto_0
    return v2

    .line 440
    :cond_2
    const-string v0, "clockAnstopCurrent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LAn/stop/Clock;->v:I

    .line 444
    const-string v0, "clockDigits"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 445
    aget v3, v0, v2

    iput v3, p0, LAn/stop/Clock;->hour:I

    .line 446
    aget v3, v0, v1

    iput v3, p0, LAn/stop/Clock;->min:I

    .line 447
    aget v3, v0, v5

    iput v3, p0, LAn/stop/Clock;->sec:I

    .line 448
    aget v0, v0, v8

    iput v0, p0, LAn/stop/Clock;->dsec:I

    .line 451
    const-string v0, "clockActive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aput-boolean v1, v4, v8

    if-ne v1, v0, :cond_b

    const/4 v0, 0x4

    aput-boolean v1, v4, v0

    move v0, v1

    .line 452
    :goto_1
    const-string v3, "clockWasActive"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x6

    aput-boolean v1, v4, v5

    if-ne v1, v3, :cond_c

    const/4 v3, 0x7

    aput-boolean v1, v4, v3

    move v3, v1

    :goto_2
    iput-boolean v3, p0, LAn/stop/Clock;->wasStarted:Z

    .line 453
    const-string v3, "clockStateSaveTime"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 454
    const-string v3, "clockStartTimeActual"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, LAn/stop/Clock;->startTimeActual:J

    .line 455
    const-string v3, "clockStartTimeAdj"

    iget-wide v6, p0, LAn/stop/Clock;->startTimeActual:J

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, LAn/stop/Clock;->startTimeAdj:J

    .line 456
    const-string v3, "clockStopTime"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, LAn/stop/Clock;->stopTime:J

    .line 457
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    const-string v5, "clockAnstopWroteStart"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, LAn/stop/Anstop;->wroteStartTime:Z

    .line 458
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    const-string v5, "clockComment"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 459
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v5, 0x9

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xa

    aput-boolean v1, v4, v5

    if-nez v3, :cond_3

    .line 460
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    const/4 v5, 0x0

    iput-object v5, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v3, 0xb

    aput-boolean v1, v4, v3

    .line 461
    :cond_3
    const-string v3, "clockLapCount"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, LAn/stop/Clock;->laps:I

    .line 462
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v5, 0xc

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_4

    .line 464
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v3, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    .line 465
    const-string v3, "clockLaps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 466
    const/16 v5, 0xd

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_4

    .line 467
    iget-object v5, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v5, v5, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    aput-boolean v1, v4, v3

    .line 469
    :cond_4
    iget v3, p0, LAn/stop/Clock;->laps:I

    const/16 v5, 0xf

    aput-boolean v1, v4, v5

    if-le v3, v1, :cond_5

    .line 471
    const-string v3, "clockLapsElapsed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, LAn/stop/Clock;->lap_elapsed:[J

    .line 472
    const-string v3, "clockLapsSystime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, LAn/stop/Clock;->lap_systime:[J

    const/16 v3, 0x10

    aput-boolean v1, v4, v3

    .line 475
    :cond_5
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->comment:Ljava/lang/String;

    const/16 v5, 0x11

    aput-boolean v1, v4, v5

    if-nez v3, :cond_6

    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    const/16 v5, 0x12

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_7

    .line 476
    :cond_6
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    invoke-virtual {v3, v2}, LAn/stop/Anstop;->updateStartTimeCommentLapsView(Z)V

    const/16 v3, 0x13

    aput-boolean v1, v4, v3

    .line 478
    :cond_7
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    const/16 v5, 0x14

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_d

    .line 481
    const-string v3, "clockCountHour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 482
    const-string v5, "clockCountMin"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 483
    const-string v6, "clockCountSec"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 484
    mul-int/lit8 v7, v3, 0x3c

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v6

    iput v7, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    .line 485
    iget-object v7, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v7, v7, LAn/stop/Anstop;->hourSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 486
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->minSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 487
    iget-object v3, p0, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->secSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v3, 0x15

    aput-boolean v1, v4, v3

    .line 492
    :goto_3
    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    const/16 v5, 0x17

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_8

    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v3}, LAn/stop/Clock$clockThread;->isAlive()Z

    move-result v3

    const/16 v5, 0x18

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_8

    .line 493
    iget-object v3, p0, LAn/stop/Clock;->threadS:LAn/stop/Clock$clockThread;

    invoke-virtual {v3}, LAn/stop/Clock$clockThread;->interrupt()V

    const/16 v3, 0x19

    aput-boolean v1, v4, v3

    .line 494
    :cond_8
    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    const/16 v5, 0x1a

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_9

    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v3}, LAn/stop/Clock$countDownThread;->isAlive()Z

    move-result v3

    const/16 v5, 0x1b

    aput-boolean v1, v4, v5

    if-eqz v3, :cond_9

    .line 495
    iget-object v3, p0, LAn/stop/Clock;->threadC:LAn/stop/Clock$countDownThread;

    invoke-virtual {v3}, LAn/stop/Clock$countDownThread;->interrupt()V

    const/16 v3, 0x1c

    aput-boolean v1, v4, v3

    .line 499
    :cond_9
    const/16 v3, 0x1d

    aput-boolean v1, v4, v3

    if-eqz v0, :cond_e

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 502
    iput-wide v6, p0, LAn/stop/Clock;->appStateRestoreTime:J

    .line 503
    invoke-direct {p0, v2, v6, v7}, LAn/stop/Clock;->adjClockOnAppResume(ZJ)V

    const/16 v3, 0x1e

    aput-boolean v1, v4, v3

    .line 508
    :goto_4
    iput-boolean v2, p0, LAn/stop/Clock;->isStarted:Z

    .line 509
    const/16 v2, 0x20

    aput-boolean v1, v4, v2

    if-eqz v0, :cond_a

    .line 513
    invoke-virtual {p0}, LAn/stop/Clock;->count()V

    const/16 v0, 0x21

    aput-boolean v1, v4, v0

    .line 515
    :cond_a
    iget-boolean v2, p0, LAn/stop/Clock;->isStarted:Z

    const/16 v0, 0x22

    aput-boolean v1, v4, v0

    goto/16 :goto_0

    .line 451
    :cond_b
    aput-boolean v1, v4, v9

    move v0, v2

    goto/16 :goto_1

    .line 452
    :cond_c
    const/16 v3, 0x8

    aput-boolean v1, v4, v3

    move v3, v2

    goto/16 :goto_2

    .line 489
    :cond_d
    iput v2, p0, LAn/stop/Clock;->countdnTotalSeconds:I

    const/16 v3, 0x16

    aput-boolean v1, v4, v3

    goto :goto_3

    .line 505
    :cond_e
    const-wide/16 v6, 0x0

    invoke-direct {p0, v1, v6, v7}, LAn/stop/Clock;->adjClockOnAppResume(ZJ)V

    const/16 v3, 0x1f

    aput-boolean v1, v4, v3

    goto :goto_4
.end method

.method public setLapFormat(ILjava/text/DateFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-object v0, LAn/stop/Clock;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 779
    iget-object v1, p0, LAn/stop/Clock;->lapf:LAn/stop/Clock$LapFormatter;

    invoke-virtual {v1, p1, p2}, LAn/stop/Clock$LapFormatter;->setLapFormat(ILjava/text/DateFormat;)V

    .line 780
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
