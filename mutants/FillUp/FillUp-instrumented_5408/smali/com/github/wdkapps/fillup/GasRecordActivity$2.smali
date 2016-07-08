.class Lcom/github/wdkapps/fillup/GasRecordActivity$2;
.super Lcom/github/wdkapps/fillup/GasRecordWatcher;
.source "GasRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/GasRecordActivity;->createGasRecordWatcher()Lcom/github/wdkapps/fillup/GasRecordWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x25052872eb9d653L


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRc:[[Z

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

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasRecordActivity$2"

    const-wide v2, 0x1dca80bc615e978fL    # 3.595550298072452E-165

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/GasRecordActivity;Lcom/github/wdkapps/fillup/DataEntryMode;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 769
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/github/wdkapps/fillup/GasRecordWatcher;-><init>(Lcom/github/wdkapps/fillup/DataEntryMode;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public costChanged()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 776
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$300(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 777
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$100(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 778
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$200(Lcom/github/wdkapps/fillup/GasRecordActivity;)V

    .line 779
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public gallonsChanged()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 781
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$400(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 782
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$100(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 783
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$200(Lcom/github/wdkapps/fillup/GasRecordActivity;)V

    .line 784
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public priceChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 771
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$000(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 772
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$100(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z

    .line 773
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;->this$0:Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->access$200(Lcom/github/wdkapps/fillup/GasRecordActivity;)V

    .line 774
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method
