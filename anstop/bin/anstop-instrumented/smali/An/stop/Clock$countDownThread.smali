.class LAn/stop/Clock$countDownThread;
.super Ljava/lang/Thread;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "countDownThread"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0xde119e553cc04ebL


# instance fields
.field final synthetic this$0:LAn/stop/Clock;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Clock$countDownThread;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Clock$countDownThread"

    const-wide v2, -0x7bcdeb50f2c2c817L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Clock$countDownThread;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(LAn/stop/Clock;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, LAn/stop/Clock$countDownThread;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$countDownThread;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v1

    .line 997
    iput-object p1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p0, v2}, LAn/stop/Clock$countDownThread;->setDaemon(Z)V

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x1

    sget-object v0, LAn/stop/Clock$countDownThread;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$countDownThread;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 1003
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->hour:I

    aput-boolean v4, v0, v6

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    aput-boolean v4, v0, v4

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->dsec:I

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    .line 1004
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iput-boolean v6, v1, LAn/stop/Clock;->isStarted:Z

    .line 1005
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1008
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 1010
    :cond_1
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 1067
    :goto_0
    return-void

    .line 1017
    :cond_2
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->dsec:I

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    if-nez v1, :cond_5

    .line 1020
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    if-nez v1, :cond_4

    .line 1021
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    if-nez v1, :cond_3

    .line 1022
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->hour:I

    aput-boolean v4, v0, v5

    if-eqz v1, :cond_3

    .line 1023
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->hour:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, LAn/stop/Clock;->hour:I

    .line 1024
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iput v7, v1, LAn/stop/Clock;->min:I

    .line 1025
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->hourh:LAn/stop/Clock$hourhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$hourhandler;->sendEmptyMessage(I)Z

    .line 1026
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->minh:LAn/stop/Clock$minhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$minhandler;->sendEmptyMessage(I)Z

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 1031
    :cond_3
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->min:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, LAn/stop/Clock;->min:I

    .line 1033
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iput v7, v1, LAn/stop/Clock;->sec:I

    .line 1034
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->minh:LAn/stop/Clock$minhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$minhandler;->sendEmptyMessage(I)Z

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 1039
    :cond_4
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_5

    .line 1040
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->sec:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, LAn/stop/Clock;->sec:I

    .line 1041
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iput v5, v1, LAn/stop/Clock;->dsec:I

    .line 1042
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->sech:LAn/stop/Clock$sechandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$sechandler;->sendEmptyMessage(I)Z

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 1046
    :cond_5
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->dsec:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, LAn/stop/Clock;->dsec:I

    .line 1050
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->dsech:LAn/stop/Clock$dsechandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$dsechandler;->sendEmptyMessage(I)Z

    .line 1053
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, LAn/stop/Clock$countDownThread;->sleep(J)V

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->hour:I

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->dsec:I

    const/16 v2, 0x15

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    .line 1061
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iput-boolean v6, v1, LAn/stop/Clock;->isStarted:Z

    .line 1062
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_6

    .line 1064
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1065
    iget-object v1, p0, LAn/stop/Clock$countDownThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    .line 1067
    :cond_6
    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1055
    :catch_0
    move-exception v1

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    goto/16 :goto_0
.end method
