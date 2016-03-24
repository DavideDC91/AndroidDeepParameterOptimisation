.class Lcom/markuspage/android/atimetracker/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Settings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x36acc4abdcd280cfL


# instance fields
.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Settings;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/Settings$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Settings$2"

    const-wide v2, 0x3bf444bdcaf37367L    # 6.867242034341145E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Settings;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 261
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

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

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 263
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Settings;->access$300(Lcom/markuspage/android/atimetracker/Settings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "current"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Settings;->access$200(Lcom/markuspage/android/atimetracker/Settings;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Settings;->access$300(Lcom/markuspage/android/atimetracker/Settings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "current-value"

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->access$400()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Settings;->access$100(Lcom/markuspage/android/atimetracker/Settings;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 266
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings$2;->this$0:Lcom/markuspage/android/atimetracker/Settings;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 267
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
