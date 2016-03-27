.class Lcom/markuspage/android/atimetracker/Tasks$1;
.super Ljava/util/TimerTask;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x135265794258a0eaL


# instance fields
.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$1"

    const-wide v2, -0x2a0c341e25d3ac4dL    # -1.1350762590507632E106

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRi()[[Z

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

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 195
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 198
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$000(Lcom/markuspage/android/atimetracker/Tasks;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$100(Lcom/markuspage/android/atimetracker/Tasks;)Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$200(Lcom/markuspage/android/atimetracker/Tasks;)V

    .line 201
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    aput-boolean v4, v0, v4

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$1;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$300(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
