.class public Lcom/github/wdkapps/fillup/PlotFontSize;
.super Ljava/lang/Object;
.source "PlotFontSize.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final LARGE:I = 0x2

.field public static final MEDIUM:I = 0x1

.field public static final SMALL:I = 0x0

.field public static final XLARGE:I = 0x3

.field private static final serialVersionUID:J = 0x70427a9028775157L


# instance fields
.field private final context:Landroid/content/Context;

.field private final value:I


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/PlotFontSize"

    const-wide v2, 0x394f31314a1ba2fdL    # 1.2014782358435609E-32

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->context:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    const-string v2, "0"

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->value:I

    .line 57
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method


# virtual methods
.method public getSizeDp()F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 79
    iget v0, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->value:I

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid PlotFontSize value."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    throw v0

    .line 80
    :pswitch_0
    const/high16 v0, 0x41200000    # 10.0f

    aput-boolean v3, v1, v3

    .line 87
    :goto_0
    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    return v0

    .line 81
    :pswitch_1
    const/high16 v0, 0x41400000    # 12.0f

    aput-boolean v3, v1, v4

    goto :goto_0

    .line 82
    :pswitch_2
    const/high16 v0, 0x41600000    # 14.0f

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 83
    :pswitch_3
    const/high16 v0, 0x41800000    # 16.0f

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 97
    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 99
    iget v2, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->value:I

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

    sget-object v0, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotFontSize;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 68
    iget v1, p0, Lcom/github/wdkapps/fillup/PlotFontSize;->value:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
