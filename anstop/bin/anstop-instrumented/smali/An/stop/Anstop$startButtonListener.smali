.class LAn/stop/Anstop$startButtonListener;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Anstop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "startButtonListener"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x5a0ca93cbd953566L


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;


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

    sput-object v0, LAn/stop/Anstop$startButtonListener;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$startButtonListener"

    const-wide v2, -0x7f8b2fd27c725b5bL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$startButtonListener;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(LAn/stop/Anstop;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$startButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$startButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1130
    iput-object p1, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop$startButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$startButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1130
    invoke-direct {p0, p1}, LAn/stop/Anstop$startButtonListener;-><init>(LAn/stop/Anstop;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/Anstop$startButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$startButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    .line 1133
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->getMode()I

    move-result v0

    .line 1138
    aput-boolean v1, v3, v2

    if-ne v0, v1, :cond_1

    iget-object v4, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v4, v4, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v4, v4, LAn/stop/Clock;->isStarted:Z

    aput-boolean v1, v3, v1

    if-nez v4, :cond_1

    iget-object v4, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v4, v4, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v4, v4, LAn/stop/Clock;->wasStarted:Z

    const/4 v5, 0x2

    aput-boolean v1, v3, v5

    if-nez v4, :cond_1

    .line 1140
    iget-object v4, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    invoke-static {v4, v1}, LAn/stop/Anstop;->access$400(LAn/stop/Anstop;Z)V

    const/4 v4, 0x3

    aput-boolean v1, v3, v4

    .line 1145
    :cond_1
    const/4 v4, 0x4

    aput-boolean v1, v3, v4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    const/4 v4, 0x5

    aput-boolean v1, v3, v4

    if-nez v0, :cond_3

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->hour:I

    const/4 v4, 0x6

    aput-boolean v1, v3, v4

    if-nez v0, :cond_3

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->min:I

    const/4 v4, 0x7

    aput-boolean v1, v3, v4

    if-nez v0, :cond_3

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->sec:I

    const/16 v4, 0x8

    aput-boolean v1, v3, v4

    if-nez v0, :cond_3

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->dsec:I

    const/16 v4, 0x9

    aput-boolean v1, v3, v4

    if-nez v0, :cond_3

    .line 1149
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->wasStarted:Z

    const/16 v4, 0xa

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_2

    .line 1150
    const v0, 0x7f07000f

    const/16 v4, 0xb

    aput-boolean v1, v3, v4

    .line 1153
    :goto_0
    iget-object v4, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    invoke-static {v4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    .line 1175
    :goto_1
    return-void

    .line 1152
    :cond_2
    const v0, 0x7f07000e

    const/16 v4, 0xc

    aput-boolean v1, v3, v4

    goto :goto_0

    .line 1158
    :cond_3
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v0}, LAn/stop/Clock;->count()V

    .line 1160
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    const/16 v4, 0xe

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_4

    .line 1161
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v4, v0, LAn/stop/Anstop;->modeMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    const/16 v5, 0xf

    aput-boolean v1, v3, v5

    if-nez v0, :cond_7

    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1162
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v4, v0, LAn/stop/Anstop;->saveMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    const/16 v5, 0x12

    aput-boolean v1, v3, v5

    if-nez v0, :cond_8

    const/16 v0, 0x13

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_3
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v0, 0x15

    aput-boolean v1, v3, v0

    .line 1166
    :cond_4
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    const/16 v4, 0x16

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_5

    .line 1167
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    const/16 v0, 0x17

    aput-boolean v1, v3, v0

    .line 1169
    :cond_5
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v0, v0, LAn/stop/Clock;->isStarted:Z

    const/16 v4, 0x18

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_6

    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iget-boolean v0, v0, LAn/stop/Anstop;->wroteStartTime:Z

    const/16 v4, 0x19

    aput-boolean v1, v3, v4

    if-nez v0, :cond_6

    .line 1171
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    invoke-virtual {v0, v2}, LAn/stop/Anstop;->updateStartTimeCommentLapsView(Z)V

    .line 1172
    iget-object v0, p0, LAn/stop/Anstop$startButtonListener;->this$0:LAn/stop/Anstop;

    iput-boolean v1, v0, LAn/stop/Anstop;->wroteStartTime:Z

    const/16 v0, 0x1a

    aput-boolean v1, v3, v0

    .line 1175
    :cond_6
    const/16 v0, 0x1b

    aput-boolean v1, v3, v0

    goto/16 :goto_1

    .line 1161
    :cond_7
    const/16 v0, 0x11

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_2

    .line 1162
    :cond_8
    const/16 v0, 0x14

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_3
.end method
