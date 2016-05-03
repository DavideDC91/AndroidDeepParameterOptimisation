.class public Lcom/irahul/worldclock/TimeZoneListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimeZoneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/irahul/worldclock/WorldClockTimeZone;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3af22f632e482311L


# instance fields
.field private DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private displayTimeZones:[Lcom/irahul/worldclock/WorldClockTimeZone;


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

    sput-object v0, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/TimeZoneListAdapter"

    const-wide v2, -0x10558eef36027727L    # -8.017804553393884E229

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/irahul/worldclock/WorldClockTimeZone;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 44
    const v1, 0x7f030004

    const v2, 0x7f06000d

    invoke-direct {p0, p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 40
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE hh:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneListAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 45
    iput-object p2, p0, Lcom/irahul/worldclock/TimeZoneListAdapter;->displayTimeZones:[Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 46
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 51
    const/4 v0, 0x0

    aput-boolean v6, v1, v0

    if-nez p2, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    aput-boolean v6, v1, v6

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneListAdapter;->displayTimeZones:[Lcom/irahul/worldclock/WorldClockTimeZone;

    aget-object v2, v0, p1

    .line 57
    const v0, 0x7f06000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneListAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/irahul/worldclock/WorldClockTimeZone;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneListAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f06000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v2}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    const v0, 0x7f06000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v2}, Lcom/irahul/worldclock/WorldClockTimeZone;->getFlagResourceName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    return-object p2
.end method
