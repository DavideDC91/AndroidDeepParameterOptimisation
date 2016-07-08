.class public Lorg/paulmach/textedit/ColorPreference;
.super Landroid/preference/DialogPreference;
.source "ColorPreference.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x33bf257b7f86e5b7L


# instance fields
.field protected attribute:Ljava/lang/String;

.field protected color:I

.field protected defcolor:I


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/ColorPreference;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const-string v1, "org/paulmach/textedit/ColorPreference"

    const-wide v2, 0x17a3176aa14e4725L    # 8.172825034660662E-195

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/ColorPreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/ColorPreference;->attribute:Ljava/lang/String;

    .line 35
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/ColorPreference;->setWidgetLayoutResource(I)V

    .line 38
    invoke-virtual {p0}, Lorg/paulmach/textedit/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lorg/paulmach/textedit/ColorPreference;->attribute:Ljava/lang/String;

    const-string v3, "fontcolor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v4, v0, v5

    if-eqz v2, :cond_1

    .line 41
    const v2, -0x333334

    iput v2, p0, Lorg/paulmach/textedit/ColorPreference;->defcolor:I

    aput-boolean v4, v0, v4

    .line 45
    :goto_0
    iget-object v2, p0, Lorg/paulmach/textedit/ColorPreference;->attribute:Ljava/lang/String;

    iget v3, p0, Lorg/paulmach/textedit/ColorPreference;->defcolor:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/paulmach/textedit/ColorPreference;->color:I

    .line 46
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void

    .line 43
    :cond_1
    const/high16 v2, -0x1000000

    iput v2, p0, Lorg/paulmach/textedit/ColorPreference;->defcolor:I

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/paulmach/textedit/ColorPreference;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/ColorPreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 22
    invoke-virtual {p0}, Lorg/paulmach/textedit/ColorPreference;->notifyChanged()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/ColorPreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 50
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f060012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 55
    iget v2, p0, Lorg/paulmach/textedit/ColorPreference;->color:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    aput-boolean v3, v0, v3

    .line 57
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/ColorPreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 62
    const-string v0, "Choose a color"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    const-string v0, "Ok"

    new-instance v2, Lorg/paulmach/textedit/ColorPreference$1;

    invoke-direct {v2, p0}, Lorg/paulmach/textedit/ColorPreference$1;-><init>(Lorg/paulmach/textedit/ColorPreference;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v0, "Cancel"

    new-instance v2, Lorg/paulmach/textedit/ColorPreference$2;

    invoke-direct {v2, p0}, Lorg/paulmach/textedit/ColorPreference$2;-><init>(Lorg/paulmach/textedit/ColorPreference;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Lorg/paulmach/textedit/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    const/high16 v0, 0x7f060000

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    iget v3, p0, Lorg/paulmach/textedit/ColorPreference;->color:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    new-instance v3, Lorg/paulmach/textedit/ColorPreference$3;

    invoke-direct {v3, p0, v0, v2}, Lorg/paulmach/textedit/ColorPreference$3;-><init>(Lorg/paulmach/textedit/ColorPreference;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 118
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method
