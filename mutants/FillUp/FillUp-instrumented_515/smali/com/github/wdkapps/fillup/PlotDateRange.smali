.class public Lcom/github/wdkapps/fillup/PlotDateRange;
.super Ljava/lang/Object;
.source "PlotDateRange.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final ALL:I = 0x4

.field public static final PAST_12_MONTHS:I = 0x2

.field public static final PAST_6_MONTHS:I = 0x1

.field public static final PAST_MONTH:I = 0x0

.field public static final YEAR_TO_DATE:I = 0x3

.field private static final serialVersionUID:J = -0x156101286aabb390L


# instance fields
.field private final context:Landroid/content/Context;

.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;

.field private final value:I


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/PlotDateRange"

    const-wide v2, -0x197b134a16e8cc36L    # -7.112881274434746E185

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v3, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    const-string v2, "0"

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->value:I

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 80
    iget v2, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->value:I

    aput-boolean v4, v0, v5

    packed-switch v2, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid PlotDateRange integer value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    throw v1

    .line 83
    :pswitch_0
    const/16 v2, -0x17

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    aput-boolean v4, v0, v4

    .line 104
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->startDate:Ljava/util/Date;

    .line 113
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->endDate:Ljava/util/Date;

    .line 114
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 84
    :pswitch_1
    aput-boolean v4, v0, v6

    goto :goto_0

    .line 88
    :pswitch_2
    const/4 v2, -0x5

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 91
    :pswitch_3
    const/16 v2, -0xb

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 94
    :pswitch_4
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    aput-boolean v4, v0, v3

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public contains(Ljava/util/Date;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v3, 0x5

    aget-object v3, v0, v3

    .line 170
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->startDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->endDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    aput-boolean v1, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 155
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->endDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 146
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 135
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 137
    iget v2, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->value:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getValue()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 125
    iget v1, p0, Lcom/github/wdkapps/fillup/PlotDateRange;->value:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
