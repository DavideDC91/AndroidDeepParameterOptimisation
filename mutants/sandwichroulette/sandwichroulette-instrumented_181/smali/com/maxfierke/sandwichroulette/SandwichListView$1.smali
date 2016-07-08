.class Lcom/maxfierke/sandwichroulette/SandwichListView$1;
.super Ljava/lang/Object;
.source "SandwichListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maxfierke/sandwichroulette/SandwichListView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x481a1efd93abf261L


# instance fields
.field final synthetic this$0:Lcom/maxfierke/sandwichroulette/SandwichListView;


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

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichListView$1"

    const-wide v2, 0x3bf444bcc238b7d7L    # 6.867236688172993E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/maxfierke/sandwichroulette/SandwichListView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 37
    iput-object p1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->this$0:Lcom/maxfierke/sandwichroulette/SandwichListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 40
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->this$0:Lcom/maxfierke/sandwichroulette/SandwichListView;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichListView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    const-string v3, "sandwich"

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->this$0:Lcom/maxfierke/sandwichroulette/SandwichListView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/maxfierke/sandwichroulette/SandwichListView;->setResult(ILandroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichListView$1;->this$0:Lcom/maxfierke/sandwichroulette/SandwichListView;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichListView;->finish()V

    .line 44
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    return-void
.end method
