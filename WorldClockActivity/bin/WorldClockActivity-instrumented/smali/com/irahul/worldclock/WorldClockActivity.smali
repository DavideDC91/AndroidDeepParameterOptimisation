.class public Lcom/irahul/worldclock/WorldClockActivity;
.super Landroid/app/Activity;
.source "WorldClockActivity.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final INTENT_TZ_DISPLAYNAME_IN:Ljava/lang/String; = "INTENT_TZ_DISPLAYNAME_IN"

.field public static final INTENT_TZ_DISPLAYNAME_OUT:Ljava/lang/String; = "INTENT_TZ_DISPLAYNAME_OUT"

.field public static final INTENT_TZ_ID_IN:Ljava/lang/String; = "INTENT_TZ_ID_IN"

.field public static final INTENT_TZ_ID_OUT:Ljava/lang/String; = "INTENT_TZ_ID_OUT"

.field private static final REQ_CODE_ADD_ZONE:I = 0x0

.field private static final REQ_CODE_EDIT_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/irahul/worldclock/TimeZoneListAdapter;

.field private data:Lcom/irahul/worldclock/WorldClockData;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/WorldClockActivity"

    const-wide v2, -0x6fe4b470f1940794L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 50
    const-class v1, Lcom/irahul/worldclock/WorldClockActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/irahul/worldclock/WorldClockActivity;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 49
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->invokeAddZoneActivity()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private invokeAddZoneActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1, v4}, Lcom/irahul/worldclock/WorldClockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method private refreshListView()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockData;->getSavedTimeZones()Ljava/util/Set;

    move-result-object v0

    new-array v1, v5, [Lcom/irahul/worldclock/WorldClockTimeZone;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 219
    sget-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded data size for refresh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/irahul/worldclock/TimeZoneListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/irahul/worldclock/TimeZoneListAdapter;-><init>(Landroid/content/Context;[Lcom/irahul/worldclock/WorldClockTimeZone;)V

    iput-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->adapter:Lcom/irahul/worldclock/TimeZoneListAdapter;

    .line 223
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/irahul/worldclock/WorldClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 224
    iget-object v3, p0, Lcom/irahul/worldclock/WorldClockActivity;->adapter:Lcom/irahul/worldclock/TimeZoneListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->adapter:Lcom/irahul/worldclock/TimeZoneListAdapter;

    invoke-virtual {v1}, Lcom/irahul/worldclock/TimeZoneListAdapter;->notifyDataSetChanged()V

    .line 226
    array-length v0, v0

    const/4 v1, 0x1

    aput-boolean v1, v2, v5

    return v0
.end method

.method private showAboutDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 189
    new-instance v0, Landroid/text/SpannableString;

    const v2, 0x7f04000e

    invoke-virtual {p0, v2}, Lcom/irahul/worldclock/WorldClockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {v0, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 192
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104000a

    const/4 v4, 0x0

    .line 193
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04000d

    .line 194
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 203
    const/4 v0, 0x0

    aput-boolean v5, v1, v0

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 136
    sget-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity requestcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-boolean v5, v0, v2

    if-ne p2, v1, :cond_1

    .line 139
    aput-boolean v5, v0, v5

    packed-switch p1, :pswitch_data_0

    .line 151
    new-instance v1, Lcom/irahul/worldclock/WorldClockException;

    const-string v2, "Unsupported request code!"

    invoke-direct {v1, v2}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/String;)V

    aput-boolean v5, v0, v4

    throw v1

    .line 141
    :pswitch_0
    sget-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add zone id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_ID_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_DISPLAYNAME_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    new-instance v2, Lcom/irahul/worldclock/WorldClockTimeZone;

    const-string v3, "INTENT_TZ_ID_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    const-string v4, "INTENT_TZ_DISPLAYNAME_OUT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/irahul/worldclock/WorldClockData;->addZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 156
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->refreshListView()I

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    return-void

    .line 145
    :pswitch_1
    sget-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDIT - Remove zone id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_ID_IN"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_DISPLAYNAME_IN"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v1, Lcom/irahul/worldclock/WorldClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDIT - Add zone id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_ID_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTENT_TZ_DISPLAYNAME_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    new-instance v2, Lcom/irahul/worldclock/WorldClockTimeZone;

    const-string v3, "INTENT_TZ_ID_IN"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v2}, Lcom/irahul/worldclock/WorldClockData;->deleteZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V

    .line 148
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    new-instance v2, Lcom/irahul/worldclock/WorldClockTimeZone;

    const-string v3, "INTENT_TZ_ID_OUT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    const-string v4, "INTENT_TZ_DISPLAYNAME_OUT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/irahul/worldclock/WorldClockData;->addZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v5

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/irahul/worldclock/WorldClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 113
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v4, 0x0

    aput-boolean v2, v3, v4

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    aput-boolean v2, v3, v5

    :goto_0
    return v0

    .line 118
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v4, "INTENT_TZ_ID_IN"

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v4, "INTENT_TZ_DISPLAYNAME_IN"

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1, v2}, Lcom/irahul/worldclock/WorldClockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    aput-boolean v2, v3, v2

    move v0, v2

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    invoke-virtual {v1, v0}, Lcom/irahul/worldclock/WorldClockData;->deleteZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V

    .line 127
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->refreshListView()I

    .line 128
    const/4 v0, 0x2

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f060011
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/WorldClockActivity;->setContentView(I)V

    .line 75
    new-instance v0, Lcom/irahul/worldclock/WorldClockData;

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/irahul/worldclock/WorldClockData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/irahul/worldclock/WorldClockActivity;->data:Lcom/irahul/worldclock/WorldClockData;

    .line 76
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->refreshListView()I

    move-result v2

    .line 79
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/WorldClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/WorldClockActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 82
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/irahul/worldclock/WorldClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    new-instance v3, Lcom/irahul/worldclock/WorldClockActivity$1;

    invoke-direct {v3, p0}, Lcom/irahul/worldclock/WorldClockActivity$1;-><init>(Lcom/irahul/worldclock/WorldClockActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    if-eqz v2, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->invokeAddZoneActivity()V

    aput-boolean v4, v1, v4

    .line 94
    :cond_1
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 103
    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 104
    const v2, 0x7f050001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 166
    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x6

    aget-object v2, v0, v2

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    :goto_1
    return v0

    .line 178
    :pswitch_0
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->invokeAddZoneActivity()V

    .line 179
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_1

    .line 182
    :pswitch_1
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockActivity;->showAboutDialog()V

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f06000f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
