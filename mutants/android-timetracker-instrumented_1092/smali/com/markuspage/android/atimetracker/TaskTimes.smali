.class public Lcom/markuspage/android/atimetracker/TaskTimes;
.super Landroid/app/ListActivity;
.source "TaskTimes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final ADD_TIME:I = 0x0

.field private static final DELETE_TIME:I = 0x2

.field private static final EDIT_TIME:I = 0x3

.field private static FONT_SIZE:I = 0x0

.field private static final MOVE_TIME:I = 0x4

.field private static final SEP:I = -0x63

.field private static final SEPFORMAT:Ljava/text/DateFormat;


# instance fields
.field private action:I

.field private adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

.field private decimalFormat:Z

.field private selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x10

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/TaskTimes"

    const-wide v2, -0x77fc14ae7b7c277dL    # -4.713093605096794E-270

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 202
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE, MMM dd yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/TaskTimes;->SEPFORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 72
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$100()I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 72
    sget v1, Lcom/markuspage/android/atimetracker/TaskTimes;->FONT_SIZE:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200()Ljava/text/DateFormat;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 72
    sget-object v1, Lcom/markuspage/android/atimetracker/TaskTimes;->SEPFORMAT:Ljava/text/DateFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/markuspage/android/atimetracker/TaskTimes;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 72
    iget-boolean v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->decimalFormat:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 530
    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-boolean v8, v0, v2

    if-ne p2, v1, :cond_1

    .line 531
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "start-date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 532
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "end-date"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 533
    aput-boolean v8, v0, v8

    packed-switch p1, :pswitch_data_0

    .line 543
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 544
    const/4 v1, 0x4

    aput-boolean v8, v0, v1

    return-void

    .line 535
    :pswitch_1
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->addTimeRange(JJ)V

    const/4 v1, 0x2

    aput-boolean v8, v0, v1

    goto :goto_0

    .line 538
    :pswitch_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    .line 539
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "task_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    .line 538
    invoke-virtual/range {v1 .. v7}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->updateTimeRange(JJILcom/markuspage/android/atimetracker/TimeRange;)V

    const/4 v1, 0x3

    aput-boolean v8, v0, v1

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 167
    iget v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->action:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 180
    :cond_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v1, v2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->deleteTimeRange(Lcom/markuspage/android/atimetracker/TimeRange;)V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-static {v1, v2, p2}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->access$000(Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;Lcom/markuspage/android/atimetracker/TimeRange;I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 144
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v4

    invoke-virtual {v2, v0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    iput v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->action:I

    .line 147
    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    return v0

    .line 149
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/TaskTimes;->showDialog(I)V

    aput-boolean v6, v1, v6

    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/markuspage/android/atimetracker/EditTime;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v3, "start-date"

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    const-string v3, "end-date"

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v4}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v2, v0}, Lcom/markuspage/android/atimetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/TaskTimes;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v6, v0, v7

    .line 82
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v3}, Lcom/markuspage/android/atimetracker/TaskTimes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string v1, "font-size"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/markuspage/android/atimetracker/TaskTimes;->FONT_SIZE:I

    .line 85
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    aput-boolean v7, v6, v3

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    invoke-direct {v1, p0, p0}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;-><init>(Lcom/markuspage/android/atimetracker/TaskTimes;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    .line 87
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/TaskTimes;->setListAdapter(Landroid/widget/ListAdapter;)V

    aput-boolean v7, v6, v7

    .line 89
    :cond_1
    const-string v1, "time_display"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->decimalFormat:Z

    .line 90
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/TaskTimes;->registerForContextMenu(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 92
    const-string v0, "start"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v7, v6, v1

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    const-string v1, "task_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "start"

    .line 94
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, "end"

    .line 95
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->loadTimes(IJJ)V

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 99
    :goto_0
    const/4 v0, 0x5

    aput-boolean v7, v6, v0

    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    const-string v1, "task_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->loadTimes(I)V

    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 134
    const-string v1, "Time menu"

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 135
    const/4 v1, 0x3

    const-string v2, "Edit Time"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    const/4 v1, 0x2

    const-string v2, "Delete Time"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 137
    const/4 v1, 0x4

    const-string v2, "Move Time"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 138
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x9

    aget-object v2, v0, v2

    .line 184
    const/4 v0, 0x0

    aput-boolean v4, v2, v0

    packed-switch p1, :pswitch_data_0

    .line 200
    :pswitch_0
    const/4 v0, 0x3

    aput-boolean v4, v2, v0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 186
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060007

    .line 187
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108008a

    .line 188
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f06000f

    .line 190
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f060006

    .line 191
    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    .line 192
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 194
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    .line 195
    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->getTaskNames()Landroid/database/Cursor;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v0, v1, p0, v3}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 116
    const v1, 0x7f06000e

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    aput-boolean v4, v0, v3

    return v4
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v1, v0, v1

    .line 548
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 550
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/TimeRange;

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    .line 551
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/markuspage/android/atimetracker/EditTime;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    const-string v2, "start-date"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v3}, Lcom/markuspage/android/atimetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 554
    const-string v2, "end-date"

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->selectedRange:Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {v3}, Lcom/markuspage/android/atimetracker/TimeRange;->getEnd()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 555
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/markuspage/android/atimetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    aput-boolean v6, v1, v6

    .line 557
    :cond_1
    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 123
    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 124
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/markuspage/android/atimetracker/EditTime;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v3, "clear"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v2, v1}, Lcom/markuspage/android/atimetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    aput-boolean v4, v0, v4

    .line 128
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    return v1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 109
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TaskTimes;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 103
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/TaskTimes;->adapter:Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/TaskTimes$TimesAdapter;->close()V

    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
