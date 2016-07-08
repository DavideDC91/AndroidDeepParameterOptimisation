.class Lcom/github/wdkapps/fillup/PlotActivity$1;
.super Ljava/lang/Object;
.source "PlotActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/PlotActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4939d06ee1dec398L


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/PlotActivity;


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

    sput-object v0, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/PlotActivity$1"

    const-wide v2, 0x2b814550a0214348L    # 3.948052525922955E-99

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/PlotActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 118
    iput-object p1, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotActivity$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 121
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/PlotActivity;->access$000(Lcom/github/wdkapps/fillup/PlotActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    .line 122
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/PlotActivity;->access$100(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/MileagePlot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/MileagePlot;->setHeight(I)V

    .line 123
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/PlotActivity;->access$200(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/OdometerPlot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/OdometerPlot;->setHeight(I)V

    .line 124
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/PlotActivity;->access$300(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/GallonsPlot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/GallonsPlot;->setHeight(I)V

    .line 125
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/PlotActivity;->access$400(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/CostPlot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/CostPlot;->setHeight(I)V

    .line 126
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/PlotActivity;->access$500(Lcom/github/wdkapps/fillup/PlotActivity;)Lcom/github/wdkapps/fillup/PricePlot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/PricePlot;->setHeight(I)V

    .line 128
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotActivity$1;->this$0:Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/PlotActivity;->access$000(Lcom/github/wdkapps/fillup/PlotActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    aput-boolean v4, v0, v4

    .line 132
    :cond_1
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
