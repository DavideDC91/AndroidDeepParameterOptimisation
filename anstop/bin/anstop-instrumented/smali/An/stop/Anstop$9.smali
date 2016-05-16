.class LAn/stop/Anstop$9;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAn/stop/Anstop;->animateSwitch(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x7327c2b427106efbL


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;

.field final synthetic val$toRight:Z


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Anstop$9;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "An/stop/Anstop$9"

    const-wide v2, 0x4e78ac17bdd43169L    # 1.0642595213968948E70

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$9;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(LAn/stop/Anstop;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1404
    iput-object p1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    iput-boolean p2, p0, LAn/stop/Anstop$9;->val$toRight:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    sget-object v0, LAn/stop/Anstop$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 1413
    iget-object v1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v1}, LAn/stop/Clock;->getMode()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 1421
    :goto_0
    iget-object v1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    invoke-static {v1}, LAn/stop/Anstop;->access$700(LAn/stop/Anstop;)V

    .line 1422
    iget-object v1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    iget-boolean v2, p0, LAn/stop/Anstop$9;->val$toRight:Z

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1423
    iget-object v2, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    iget-object v3, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v3}, LAn/stop/Clock;->getMode()I

    move-result v3

    invoke-static {v2, v3}, LAn/stop/Anstop;->access$800(LAn/stop/Anstop;I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1424
    aput-boolean v4, v0, v5

    return-void

    .line 1415
    :pswitch_0
    iget-object v1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    invoke-virtual {v1}, LAn/stop/Anstop;->countdown()V

    aput-boolean v4, v0, v4

    goto :goto_0

    .line 1418
    :pswitch_1
    iget-object v1, p0, LAn/stop/Anstop$9;->this$0:LAn/stop/Anstop;

    invoke-virtual {v1}, LAn/stop/Anstop;->stopwatch()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1410
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, LAn/stop/Anstop$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1407
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method
