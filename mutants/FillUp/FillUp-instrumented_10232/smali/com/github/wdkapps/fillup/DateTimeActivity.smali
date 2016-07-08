.class public Lcom/github/wdkapps/fillup/DateTimeActivity;
.super Landroid/app/Activity;
.source "DateTimeActivity.java"


# static fields
.field private static final $VRc:[[Z

.field public static final MILLISECONDS:Ljava/lang/String;

.field private static final is24HourView:Z


# instance fields
.field private datePicker:Landroid/widget/DatePicker;

.field private milliseconds:J

.field private timePicker:Landroid/widget/TimePicker;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/DateTimeActivity"

    const-wide v2, 0x35c85615ff2d20acL    # 1.3009026407029488E-49

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/DateTimeActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".MILLISECONDS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/DateTimeActivity;->MILLISECONDS:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/github/wdkapps/fillup/DateTimeActivity;->is24HourView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public clickedCancel(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 131
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/DateTimeActivity;->returnResult(I)V

    .line 132
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public clickedOk(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 142
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->getData()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    aput-boolean v3, v0, v3

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/DateTimeActivity;->returnResult(I)V

    .line 146
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected getData()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v6, v0, v1

    .line 115
    iget-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    .line 116
    iget-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 117
    iget-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    add-int/lit16 v1, v0, -0x76c

    .line 118
    iget-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 119
    iget-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 121
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->milliseconds:J

    .line 122
    const/4 v0, 0x0

    aput-boolean v7, v6, v0

    return v7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->datePicker:Landroid/widget/DatePicker;

    .line 68
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    .line 71
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    sget-object v2, Lcom/github/wdkapps/fillup/DateTimeActivity;->MILLISECONDS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->milliseconds:J

    .line 75
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->setData()V

    .line 76
    const/4 v0, 0x0

    aput-boolean v6, v1, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 86
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return v2
.end method

.method protected returnResult(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-boolean v6, v0, v3

    if-ne p1, v2, :cond_1

    .line 159
    sget-object v2, Lcom/github/wdkapps/fillup/DateTimeActivity;->MILLISECONDS:Ljava/lang/String;

    iget-wide v4, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->milliseconds:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    aput-boolean v6, v0, v6

    .line 162
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/github/wdkapps/fillup/DateTimeActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/DateTimeActivity;->finish()V

    .line 164
    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    return-void
.end method

.method protected setData()V
    .locals 8

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/DateTimeActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 95
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->milliseconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 96
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v2

    .line 97
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v3

    .line 98
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    .line 99
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 100
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    .line 101
    iget-object v6, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->datePicker:Landroid/widget/DatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v2, v3, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 102
    iget-object v2, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    sget-boolean v3, Lcom/github/wdkapps/fillup/DateTimeActivity;->is24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 103
    iget-object v2, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 104
    iget-object v2, p0, Lcom/github/wdkapps/fillup/DateTimeActivity;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
