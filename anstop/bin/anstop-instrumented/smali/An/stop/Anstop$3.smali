.class LAn/stop/Anstop$3;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAn/stop/Anstop;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x2c7ff025d7f7047fL


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;

.field final synthetic val$input:Landroid/widget/EditText;


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

    sput-object v0, LAn/stop/Anstop$3;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$3"

    const-wide v2, 0x2f8e2f388bbaedf2L    # 1.2728420639110212E-79

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$3;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(LAn/stop/Anstop;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 781
    iput-object p1, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iput-object p2, p0, LAn/stop/Anstop$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    sget-object v0, LAn/stop/Anstop$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v10, v0, v11

    .line 784
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    aput-boolean v11, v10, v12

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    new-instance v1, LAn/stop/AnstopDbAdapter;

    iget-object v2, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    invoke-direct {v1, v2}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 787
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    aput-boolean v11, v10, v11

    .line 789
    :cond_1
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-object v1, p0, LAn/stop/Anstop$3;->val$input:Landroid/widget/EditText;

    .line 790
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v2, v2, LAn/stop/Anstop;->comment:Ljava/lang/String;

    iget-object v3, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v3, v3, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    .line 791
    invoke-virtual {v3}, LAn/stop/Clock;->getMode()I

    move-result v3

    iget-object v4, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v4, v4, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v4}, LAn/stop/Clock;->getStartTimeActual()J

    move-result-wide v4

    iget-object v6, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v6, v6, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    invoke-virtual {v6}, LAn/stop/Clock;->getStopTime()J

    move-result-wide v6

    iget-object v8, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v8, v8, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    const/4 v9, 0x0

    .line 792
    invoke-virtual {v8, v9, v12}, LAn/stop/Clock;->getCurrentValueMillis(Ljava/lang/StringBuilder;Z)J

    move-result-wide v8

    .line 790
    invoke-virtual/range {v0 .. v9}, LAn/stop/AnstopDbAdapter;->createNew(Ljava/lang/String;Ljava/lang/String;IJJJ)J

    move-result-wide v2

    .line 793
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->laps:I

    const/4 v1, 0x2

    aput-boolean v11, v10, v1

    if-le v0, v11, :cond_2

    .line 794
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v1, v0, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v0, v0, LAn/stop/Clock;->laps:I

    add-int/lit8 v4, v0, -0x1

    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v5, v0, LAn/stop/Clock;->lap_elapsed:[J

    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    iget-object v0, v0, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v6, v0, LAn/stop/Clock;->lap_systime:[J

    invoke-virtual/range {v1 .. v6}, LAn/stop/AnstopDbAdapter;->createNewLaps(JI[J[J)V

    const/4 v0, 0x3

    aput-boolean v11, v10, v0

    .line 796
    :cond_2
    iget-object v0, p0, LAn/stop/Anstop$3;->this$0:LAn/stop/Anstop;

    invoke-virtual {v0}, LAn/stop/Anstop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 798
    const/4 v0, 0x4

    aput-boolean v11, v10, v0

    return-void
.end method
