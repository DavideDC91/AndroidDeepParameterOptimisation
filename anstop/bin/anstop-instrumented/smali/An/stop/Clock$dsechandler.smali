.class LAn/stop/Clock$dsechandler;
.super Landroid/os/Handler;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dsechandler"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x6f248f5a3b31367aL


# instance fields
.field final synthetic this$0:LAn/stop/Clock;


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

    sput-object v0, LAn/stop/Clock$dsechandler;->$VRc:[[Z

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

    const-string v1, "An/stop/Clock$dsechandler"

    const-wide v2, -0x6d8f0c95ac892e94L    # -7.502991045874828E-220

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Clock$dsechandler;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(LAn/stop/Clock;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Clock$dsechandler;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$dsechandler;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1077
    iput-object p1, p0, LAn/stop/Clock$dsechandler;->this$0:LAn/stop/Clock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(LAn/stop/Clock;LAn/stop/Clock$1;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Clock$dsechandler;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$dsechandler;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1077
    invoke-direct {p0, p1}, LAn/stop/Clock$dsechandler;-><init>(LAn/stop/Clock;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, LAn/stop/Clock$dsechandler;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$dsechandler;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 1080
    iget-object v1, p0, LAn/stop/Clock$dsechandler;->this$0:LAn/stop/Clock;

    iget-object v1, v1, LAn/stop/Clock;->parent:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->dsecondsView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LAn/stop/Clock$dsechandler;->this$0:LAn/stop/Clock;

    iget v3, v3, LAn/stop/Clock;->dsec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
