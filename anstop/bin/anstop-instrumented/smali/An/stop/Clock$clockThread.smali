.class LAn/stop/Clock$clockThread;
.super Ljava/lang/Thread;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clockThread"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x6537d8a5dbeb2e2bL


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

    sput-object v0, LAn/stop/Clock$clockThread;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Clock$clockThread"

    const-wide v2, 0x81cef52fc376289L    # 1.3692579753649997E-269

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Clock$clockThread;->$VRi()[[Z

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

    sget-object v0, LAn/stop/Clock$clockThread;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$clockThread;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v1

    .line 946
    iput-object p1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p0, v2}, LAn/stop/Clock$clockThread;->setDaemon(Z)V

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

    sget-object v0, LAn/stop/Clock$clockThread;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$clockThread;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 952
    :goto_0
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->dsec:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LAn/stop/Clock;->dsec:I

    .line 954
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->dsec:I

    aput-boolean v4, v0, v6

    if-ne v1, v5, :cond_1

    .line 955
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->sec:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LAn/stop/Clock;->sec:I

    .line 956
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iput v6, v1, LAn/stop/Clock;->dsec:I

    .line 957
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->sech:LAn/stop/Clock$sechandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$sechandler;->sendEmptyMessage(I)Z

    .line 959
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->sec:I

    aput-boolean v4, v0, v4

    if-ne v1, v7, :cond_1

    .line 960
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->min:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LAn/stop/Clock;->min:I

    .line 961
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iput v6, v1, LAn/stop/Clock;->sec:I

    .line 962
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->minh:LAn/stop/Clock$minhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$minhandler;->sendEmptyMessage(I)Z

    .line 965
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v1, v1, LAn/stop/Clock;->min:I

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-ne v1, v7, :cond_1

    .line 966
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget v2, v1, LAn/stop/Clock;->hour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LAn/stop/Clock;->hour:I

    .line 967
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iput v6, v1, LAn/stop/Clock;->min:I

    .line 968
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->hourh:LAn/stop/Clock$hourhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$hourhandler;->sendEmptyMessage(I)Z

    .line 969
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->minh:LAn/stop/Clock$minhandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$minhandler;->sendEmptyMessage(I)Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 975
    :cond_1
    iget-object v1, p0, LAn/stop/Clock$clockThread;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->dsech:LAn/stop/Clock$dsechandler;

    invoke-virtual {v1, v5}, LAn/stop/Clock$dsechandler;->sendEmptyMessage(I)Z

    .line 978
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, LAn/stop/Clock$clockThread;->sleep(J)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    move-exception v1

    .line 981
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method
