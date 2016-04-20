.class Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/markuspage/android/atimetracker/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x3d9e9eab489fb70eL


# instance fields
.field iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/markuspage/android/atimetracker/Task;",
            ">;"
        }
    .end annotation
.end field

.field next:Lcom/markuspage/android/atimetracker/Task;

.field final synthetic this$1:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$TaskAdapter$1"

    const-wide v2, -0x7724151bb27cd69dL    # -5.411293425567785E-266

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 961
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->this$1:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->this$1:Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;

    iget-object v1, v1, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    .line 963
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next:Lcom/markuspage/android/atimetracker/Task;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    .line 966
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next:Lcom/markuspage/android/atimetracker/Task;

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_2

    .line 967
    aput-boolean v1, v3, v1

    move v0, v1

    .line 976
    :goto_0
    return v0

    .line 973
    :cond_1
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_3

    .line 970
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/Task;

    .line 971
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Task;->isRunning()Z

    move-result v4

    const/4 v5, 0x3

    aput-boolean v1, v3, v5

    if-eqz v4, :cond_1

    .line 972
    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next:Lcom/markuspage/android/atimetracker/Task;

    .line 973
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 976
    :cond_3
    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public next()Lcom/markuspage/android/atimetracker/Task;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 980
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next:Lcom/markuspage/android/atimetracker/Task;

    .line 982
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next:Lcom/markuspage/android/atimetracker/Task;

    .line 983
    aput-boolean v3, v0, v3

    return-object v1

    .line 985
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    aput-boolean v3, v0, v4

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->next()Lcom/markuspage/android/atimetracker/Task;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskAdapter$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 989
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    throw v1
.end method
