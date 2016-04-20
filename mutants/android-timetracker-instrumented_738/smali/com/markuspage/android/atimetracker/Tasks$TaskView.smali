.class Lcom/markuspage/android/atimetracker/Tasks$TaskView;
.super Landroid/widget/LinearLayout;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markuspage/android/atimetracker/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskView"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3c73768c3c668f5L


# instance fields
.field private checkMark:Landroid/widget/ImageView;

.field private taskName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;

.field private total:Landroid/widget/TextView;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$TaskView"

    const-wide v2, 0x3c6fb70c7ad64bc6L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/content/Context;Lcom/markuspage/android/atimetracker/Task;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x5

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v10

    .line 739
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    .line 740
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 741
    invoke-virtual {p0, v10}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->setOrientation(I)V

    .line 742
    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {p0, v4, v1, v4, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->setPadding(IIII)V

    .line 744
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    .line 745
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->access$1400()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 746
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    .line 751
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    .line 757
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->access$1400()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 758
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 759
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 760
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/markuspage/android/atimetracker/Tasks;->access$1500(Lcom/markuspage/android/atimetracker/Tasks;)Z

    move-result v2

    invoke-virtual {p3}, Lcom/markuspage/android/atimetracker/Task;->getTotal()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZJJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->setGravity(I)V

    .line 765
    invoke-direct {p0, p3}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->markupSelectedTask(Lcom/markuspage/android/atimetracker/Task;)V

    .line 766
    const/4 v1, 0x1

    aput-boolean v1, v0, v10

    return-void
.end method

.method private markupSelectedTask(Lcom/markuspage/android/atimetracker/Task;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 777
    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->isRunning()Z

    move-result v1

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    aput-boolean v3, v0, v3

    .line 782
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    aput-boolean v3, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public setTask(Lcom/markuspage/android/atimetracker/Task;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 769
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->access$1400()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 770
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks;->access$1400()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 771
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks;->access$1500(Lcom/markuspage/android/atimetracker/Tasks;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getTotal()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZJJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-direct {p0, p1}, Lcom/markuspage/android/atimetracker/Tasks$TaskView;->markupSelectedTask(Lcom/markuspage/android/atimetracker/Task;)V

    .line 774
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method
