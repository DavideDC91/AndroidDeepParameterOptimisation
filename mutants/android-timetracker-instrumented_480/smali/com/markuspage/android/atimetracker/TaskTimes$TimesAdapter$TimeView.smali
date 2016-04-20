.class final Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;
.super Landroid/widget/LinearLayout;
.source "TaskTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeView"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x1f9a17e9fd5ce85L


# instance fields
.field private dateRange:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

.field private total:Landroid/widget/TextView;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView"

    const-wide v2, -0x4083ae142ee32b11L    # -0.006914063605838224

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;Landroid/content/Context;Lcom/markuspage/android/atimetracker/TimeRange;)V
    .locals 8

    .prologue
    const/16 v1, 0xa

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x5

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 381
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->this$1:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    .line 382
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {p0, v4}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->setOrientation(I)V

    .line 384
    invoke-virtual {p0, v5, v1, v5, v1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->setPadding(IIII)V

    .line 386
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    .line 387
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$100()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 388
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$100()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 394
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 395
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {p0, p3}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->setTimeRange(Lcom/markuspage/android/atimetracker/TimeRange;)V

    .line 399
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method


# virtual methods
.method public setTimeRange(Lcom/markuspage/android/atimetracker/TimeRange;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 402
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter$TimeView;->this$1:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    iget-object v2, v2, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->this$0:Lcom/markuspage/android/atimetracker/TaskTimes;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/TaskTimes;->access$300(Lcom/markuspage/android/atimetracker/TaskTimes;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/TimeRange;->getTotal()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZJJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method
