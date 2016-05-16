.class LAn/stop/Anstop$7;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAn/stop/Anstop;->popupConfirmChangeMode(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x7b52399bd134f387L


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;

.field final synthetic val$currMode:I

.field final synthetic val$newMode:I

.field final synthetic val$toRight:Z


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

    sput-object v0, LAn/stop/Anstop$7;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$7"

    const-wide v2, 0x490cac95e361ae3aL    # 7.993189788171663E43

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$7;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(LAn/stop/Anstop;IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$7;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$7;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1366
    iput-object p1, p0, LAn/stop/Anstop$7;->this$0:LAn/stop/Anstop;

    iput p2, p0, LAn/stop/Anstop$7;->val$newMode:I

    iput p3, p0, LAn/stop/Anstop$7;->val$currMode:I

    iput-boolean p4, p0, LAn/stop/Anstop$7;->val$toRight:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, LAn/stop/Anstop$7;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$7;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 1368
    iget-object v1, p0, LAn/stop/Anstop$7;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v2, p0, LAn/stop/Anstop$7;->val$newMode:I

    invoke-virtual {v1, v2}, LAn/stop/Clock;->changeMode(I)V

    .line 1369
    iget v1, p0, LAn/stop/Anstop$7;->val$currMode:I

    iget v2, p0, LAn/stop/Anstop$7;->val$newMode:I

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_1

    .line 1371
    iget-object v1, p0, LAn/stop/Anstop$7;->this$0:LAn/stop/Anstop;

    iget-boolean v2, p0, LAn/stop/Anstop$7;->val$toRight:Z

    iget v3, p0, LAn/stop/Anstop$7;->val$currMode:I

    invoke-static {v1, v2, v3}, LAn/stop/Anstop;->access$600(LAn/stop/Anstop;ZI)V

    aput-boolean v4, v0, v4

    .line 1378
    :goto_0
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 1373
    :cond_1
    iget v1, p0, LAn/stop/Anstop$7;->val$newMode:I

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    .line 1374
    iget-object v1, p0, LAn/stop/Anstop$7;->this$0:LAn/stop/Anstop;

    invoke-virtual {v1}, LAn/stop/Anstop;->stopwatch()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1376
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop$7;->this$0:LAn/stop/Anstop;

    invoke-virtual {v1}, LAn/stop/Anstop;->countdown()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
