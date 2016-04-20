.class public Lcom/markuspage/android/atimetracker/EditTime;
.super Landroid/app/Activity;
.source "EditTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final $VRc:[[Z = null

.field protected static final CLEAR:Ljava/lang/String; = "clear"

.field protected static final END_DATE:Ljava/lang/String; = "end-date"

.field protected static final START_DATE:Ljava/lang/String; = "start-date"

.field private static final serialVersionUID:J = 0x4380009d4d1945d7L


# instance fields
.field private editingRunning:Z

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    filled-new-array {v5}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/markuspage/android/atimetracker/EditTime"

    const-wide v2, 0x76bcd69ddc5d4856L    # 9.080851446746196E263

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/markuspage/android/atimetracker/EditTime;->editingRunning:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v11

    .line 105
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/DatePicker;

    .line 106
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TimePicker;

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 109
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 110
    invoke-virtual {v5}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 109
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 111
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start-date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/EditTime;->editingRunning:Z

    aput-boolean v8, v7, v10

    if-nez v1, :cond_2

    .line 114
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/DatePicker;

    .line 115
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TimePicker;

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 118
    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 119
    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 118
    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    aput-boolean v8, v7, v8

    if-ge v0, v8, :cond_1

    .line 121
    invoke-virtual {p0, v10}, Lcom/markuspage/android/atimetracker/EditTime;->showDialog(I)V

    aput-boolean v8, v7, v9

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "end-date"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    aput-boolean v8, v7, v11

    .line 127
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->finish()V

    .line 129
    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v7}, Lcom/markuspage/android/atimetracker/EditTime;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/EditTime;->preferences:Landroid/content/SharedPreferences;

    .line 54
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "end-date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    aput-boolean v6, v2, v7

    if-nez v0, :cond_2

    .line 55
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->setContentView(I)V

    .line 56
    iput-boolean v6, p0, Lcom/markuspage/android/atimetracker/EditTime;->editingRunning:Z

    aput-boolean v6, v2, v6

    .line 60
    :goto_0
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 63
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 64
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/EditTime;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "military-time"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 66
    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    if-eqz v1, :cond_1

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const/4 v0, 0x4

    aput-boolean v6, v2, v0

    .line 69
    :cond_1
    const/4 v0, 0x5

    aput-boolean v6, v2, v0

    return-void

    .line 58
    :cond_2
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v6, v2, v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 133
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060014

    .line 134
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108008a

    .line 135
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060013

    .line 137
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/EditTime;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/EditTime;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v9

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    .line 75
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 79
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "clear"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    aput-boolean v8, v4, v5

    if-nez v3, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "start-date"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    aput-boolean v8, v4, v8

    .line 82
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 83
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 82
    invoke-virtual {v0, v3, v5, v6}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 84
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 87
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/EditTime;->editingRunning:Z

    aput-boolean v8, v4, v9

    if-nez v0, :cond_2

    .line 88
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    .line 89
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 92
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "clear"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    aput-boolean v8, v4, v6

    if-eqz v5, :cond_3

    .line 93
    const/4 v3, 0x4

    aput-boolean v8, v4, v3

    .line 97
    :goto_0
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 98
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 97
    invoke-virtual {v0, v3, v5, v6}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 99
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const/4 v0, 0x6

    aput-boolean v8, v4, v0

    .line 102
    :cond_2
    const/4 v0, 0x7

    aput-boolean v8, v4, v0

    return-void

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "end-date"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    aput-boolean v8, v4, v10

    move-object v2, v3

    goto :goto_0
.end method
