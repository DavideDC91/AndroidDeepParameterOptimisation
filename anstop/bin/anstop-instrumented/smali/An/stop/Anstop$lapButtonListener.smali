.class LAn/stop/Anstop$lapButtonListener;
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
    name = "lapButtonListener"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x6d2426e69e734aceL


# instance fields
.field private sb:Ljava/lang/StringBuilder;

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

    sput-object v0, LAn/stop/Anstop$lapButtonListener;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$lapButtonListener"

    const-wide v2, 0x1cb6940c3bc6bba7L    # 2.336974246872965E-170

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$lapButtonListener;->$VRi()[[Z

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

    sget-object v0, LAn/stop/Anstop$lapButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$lapButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1237
    iput-object p1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop$lapButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$lapButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1237
    invoke-direct {p0, p1}, LAn/stop/Anstop$lapButtonListener;-><init>(LAn/stop/Anstop;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    sget-object v0, LAn/stop/Anstop$lapButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$lapButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v8

    .line 1248
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v2, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, LAn/stop/Clock;->lap(Ljava/lang/StringBuilder;)I

    .line 1250
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->laps:Ljava/lang/StringBuilder;

    iget-object v2, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1251
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->lapView:Landroid/widget/TextView;

    iget-object v2, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    aput-boolean v8, v0, v4

    if-eqz v1, :cond_1

    .line 1254
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->vib:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    aput-boolean v8, v0, v8

    .line 1257
    :cond_1
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    iget-object v2, p0, LAn/stop/Anstop$lapButtonListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1260
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->lapScroll:Landroid/widget/ScrollView;

    new-instance v2, LAn/stop/Anstop$lapButtonListener$1;

    invoke-direct {v2, p0}, LAn/stop/Anstop$lapButtonListener$1;-><init>(LAn/stop/Anstop$lapButtonListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1267
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const/4 v2, 0x2

    aput-boolean v8, v0, v2

    if-nez v1, :cond_2

    .line 1269
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    new-instance v2, LAn/stop/AnstopDbAdapter;

    iget-object v3, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    invoke-direct {v2, v3}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 1270
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    const/4 v1, 0x3

    aput-boolean v8, v0, v1

    .line 1272
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->dbHelper:LAn/stop/AnstopDbAdapter;

    const-wide/16 v2, 0x0

    iget-object v4, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v4, v4, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v4, v4, LAn/stop/Clock;->lap_elapsed:[J

    iget-object v5, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v5, v5, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v5, v5, LAn/stop/Clock;->laps:I

    add-int/lit8 v5, v5, -0x2

    aget-wide v4, v4, v5

    iget-object v6, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v6, v6, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-object v6, v6, LAn/stop/Clock;->lap_systime:[J

    iget-object v7, p0, LAn/stop/Anstop$lapButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v7, v7, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget v7, v7, LAn/stop/Clock;->laps:I

    add-int/lit8 v7, v7, -0x2

    aget-wide v6, v6, v7

    .line 1273
    invoke-virtual/range {v1 .. v7}, LAn/stop/AnstopDbAdapter;->createNewLap(JJJ)V

    .line 1274
    const/4 v1, 0x4

    aput-boolean v8, v0, v1

    return-void
.end method
