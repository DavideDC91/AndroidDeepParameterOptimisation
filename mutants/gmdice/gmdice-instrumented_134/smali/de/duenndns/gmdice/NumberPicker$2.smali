.class Lde/duenndns/gmdice/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/duenndns/gmdice/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x55a1341f722db458L


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/NumberPicker;


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

    sput-object v0, Lde/duenndns/gmdice/NumberPicker$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/NumberPicker$2"

    const-wide v2, 0x4d43aa52da16f4faL    # 1.6179692369370687E64

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lde/duenndns/gmdice/NumberPicker;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 82
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 84
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v1}, Lde/duenndns/gmdice/NumberPicker;->access$000(Lde/duenndns/gmdice/NumberPicker;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    iget v2, v2, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lde/duenndns/gmdice/NumberPicker;->changeCurrent(I)V

    .line 86
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v1}, Lde/duenndns/gmdice/NumberPicker;->access$200(Lde/duenndns/gmdice/NumberPicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v2}, Lde/duenndns/gmdice/NumberPicker;->access$100(Lde/duenndns/gmdice/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    aput-boolean v4, v0, v4

    .line 91
    :cond_1
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v1}, Lde/duenndns/gmdice/NumberPicker;->access$300(Lde/duenndns/gmdice/NumberPicker;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    iget v2, v2, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lde/duenndns/gmdice/NumberPicker;->changeCurrent(I)V

    .line 89
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v1}, Lde/duenndns/gmdice/NumberPicker;->access$200(Lde/duenndns/gmdice/NumberPicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker$2;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v2}, Lde/duenndns/gmdice/NumberPicker;->access$100(Lde/duenndns/gmdice/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
