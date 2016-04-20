.class Lcom/markuspage/android/atimetracker/Tasks$6;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks;->openDeleteTaskDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3a14b9ff9e791786L


# instance fields
.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$6"

    const-wide v2, 0x3bf444bb774f4d63L    # 6.867230005462803E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 639
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$6;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$6;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 641
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$6;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$100(Lcom/markuspage/android/atimetracker/Tasks;)Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$6;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks;->access$1300(Lcom/markuspage/android/atimetracker/Tasks;)Lcom/markuspage/android/atimetracker/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->deleteTask(Lcom/markuspage/android/atimetracker/Task;)V

    .line 642
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$6;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 643
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method
