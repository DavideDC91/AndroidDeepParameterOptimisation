.class public Lcom/maxfierke/sandwichroulette/SandwichListView;
.super Landroid/app/ListActivity;
.source "SandwichListView.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4921913bcc6041acL


# instance fields
.field protected adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/maxfierke/sandwichroulette/SandwichDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;


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

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRc:[[Z

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

    const-string v1, "com/maxfierke/sandwichroulette/SandwichListView"

    const-wide v2, 0x516b56b1365a834dL    # 1.659685265185539E84

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 20
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichListView;->setContentView(I)V

    .line 23
    new-instance v1, Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-direct {v1, p0}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    .line 24
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->openSafe()V

    .line 26
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getAllSandwiches()Ljava/util/List;

    move-result-object v1

    .line 30
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/maxfierke/sandwichroulette/SandwichListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 37
    new-instance v2, Lcom/maxfierke/sandwichroulette/SandwichListView$1;

    invoke-direct {v2, p0}, Lcom/maxfierke/sandwichroulette/SandwichListView$1;-><init>(Lcom/maxfierke/sandwichroulette/SandwichListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 56
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 57
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichListView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 50
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichListView;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->openSafe()V

    .line 51
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
