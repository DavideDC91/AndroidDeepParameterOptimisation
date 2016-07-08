.class public Lcom/irahul/worldclock/TimeZoneEdit;
.super Landroid/app/Activity;
.source "TimeZoneEdit.java"


# static fields
.field private static final $VRc:[[Z

.field private static final DIALOG_TIMEZONE_LIST:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const-string v1, "com/irahul/worldclock/TimeZoneEdit"

    const-wide v2, -0x4365dd8d3c749a69L    # -9.067248222150822E-17

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 50
    const-class v1, Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/irahul/worldclock/TimeZoneEdit;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEdit;->selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/irahul/worldclock/TimeZoneEdit;)Lcom/irahul/worldclock/WorldClockTimeZone;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 49
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEdit;->selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/irahul/worldclock/TimeZoneEdit;Lcom/irahul/worldclock/WorldClockTimeZone;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 49
    invoke-direct {p0, p1}, Lcom/irahul/worldclock/TimeZoneEdit;->dialogItemSelected(Lcom/irahul/worldclock/WorldClockTimeZone;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private dialogItemSelected(Lcom/irahul/worldclock/WorldClockTimeZone;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 132
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEdit;->selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 133
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    invoke-virtual {p1}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDefaultDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_1

    .line 138
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 139
    invoke-virtual {p1}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDefaultDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v3, v1, v3

    .line 141
    :cond_1
    aput-boolean v3, v1, v4

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/high16 v7, 0x7f060000

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->setContentView(I)V

    .line 61
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/irahul/worldclock/TimeZoneEdit$1;

    invoke-direct {v1, p0}, Lcom/irahul/worldclock/TimeZoneEdit$1;-><init>(Lcom/irahul/worldclock/TimeZoneEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneEdit;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v6, v2, v5

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {p0, v7}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    const v4, 0x7f040006

    invoke-virtual {p0, v4}, Lcom/irahul/worldclock/TimeZoneEdit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object v1, Lcom/irahul/worldclock/TimeZoneEdit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDIT tz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "INTENT_TZ_ID_IN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Lcom/irahul/worldclock/TimeZoneEdit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDTI display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "INTENT_TZ_DISPLAYNAME_IN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lcom/irahul/worldclock/WorldClockTimeZone;

    const-string v4, "INTENT_TZ_ID_IN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEdit;->selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 84
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEdit;->selectedTimeZone:Lcom/irahul/worldclock/WorldClockTimeZone;

    invoke-virtual {v1}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDefaultDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 88
    const-string v1, "INTENT_TZ_DISPLAYNAME_IN"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v6, v2, v6

    .line 101
    :goto_0
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    new-instance v1, Lcom/irahul/worldclock/TimeZoneEdit$2;

    invoke-direct {v1, p0, v3}, Lcom/irahul/worldclock/TimeZoneEdit$2;-><init>(Lcom/irahul/worldclock/TimeZoneEdit;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    new-instance v1, Lcom/irahul/worldclock/TimeZoneEdit$3;

    invoke-direct {v1, p0}, Lcom/irahul/worldclock/TimeZoneEdit$3;-><init>(Lcom/irahul/worldclock/TimeZoneEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const/4 v0, 0x5

    aput-boolean v6, v2, v0

    return-void

    .line 90
    :cond_1
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0, v7}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/irahul/worldclock/TimeZoneEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/irahul/worldclock/TimeZoneEdit;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/irahul/worldclock/WorldClockException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected intent received"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 146
    const/4 v0, 0x0

    aput-boolean v5, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 193
    new-instance v0, Lcom/irahul/worldclock/WorldClockException;

    const-string v2, "Unknown dialog -should never happen"

    invoke-direct {v0, v2}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    throw v0

    .line 148
    :pswitch_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 152
    const v0, 0x7f060006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 153
    new-instance v3, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-static {}, Lcom/irahul/worldclock/CountryTimeZone;->getSupportedTimezones()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 154
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 156
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 157
    new-instance v4, Lcom/irahul/worldclock/TimeZoneEdit$4;

    invoke-direct {v4, p0}, Lcom/irahul/worldclock/TimeZoneEdit$4;-><init>(Lcom/irahul/worldclock/TimeZoneEdit;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    const v0, 0x7f060005

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 169
    new-instance v4, Lcom/irahul/worldclock/TimeZoneEdit$5;

    invoke-direct {v4, p0, v3}, Lcom/irahul/worldclock/TimeZoneEdit$5;-><init>(Lcom/irahul/worldclock/TimeZoneEdit;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v5, v1, v5

    .line 195
    aput-boolean v5, v1, v6

    return-object v0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
