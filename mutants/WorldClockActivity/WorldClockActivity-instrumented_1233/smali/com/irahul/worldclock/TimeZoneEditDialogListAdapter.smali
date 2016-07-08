.class public Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimeZoneEditDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;
    }
.end annotation

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

.field private static final serialVersionUID:J = -0x32800a28966cdc63L


# instance fields
.field private filter:Landroid/widget/Filter;

.field private filteredDataValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private originalDataValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

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

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/TimeZoneEditDialogListAdapter"

    const-wide v2, -0x2cc33e18165e8e2eL    # -9.372791993969776E92

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 48
    const v1, 0x7f030001

    const v2, 0x7f060008

    invoke-direct {p0, p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filter:Landroid/widget/Filter;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->originalDataValues:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filteredDataValues:Ljava/util/List;

    .line 55
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method static synthetic access$100(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 42
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->originalDataValues:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 42
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filteredDataValues:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$202(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 42
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filteredDataValues:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 87
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filter:Landroid/widget/Filter;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;-><init>(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$1;)V

    iput-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filter:Landroid/widget/Filter;

    aput-boolean v3, v0, v3

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->filter:Landroid/widget/Filter;

    aput-boolean v3, v0, v4

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 59
    const/4 v0, 0x0

    aput-boolean v6, v2, v0

    if-nez p2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    const v1, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    aput-boolean v6, v2, v6

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 69
    const v1, 0x7f060008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getRawOffsetDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f060009

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    const v1, 0x7f060007

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getFlagResourceName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    const/4 v0, 0x2

    aput-boolean v6, v2, v0

    return-object p2
.end method
