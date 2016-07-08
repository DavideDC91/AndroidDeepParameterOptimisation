.class public Lorg/paulmach/textedit/FontTypePreference;
.super Landroid/preference/DialogPreference;
.source "FontTypePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/paulmach/textedit/FontTypePreference$FontTypeArrayAdapter;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x20cbf5195b3c454L


# instance fields
.field private fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:I


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v2, 0x6

    const/4 v3, 0x1

    filled-new-array {v2}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    const/4 v1, 0x0

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

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FontTypePreference"

    const-wide v2, 0x4e742be805f0f1c9L    # 8.701164971139337E69

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/paulmach/textedit/FontTypePreference;->fonts:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lorg/paulmach/textedit/FontTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    const-string v2, "font"

    const-string v3, "Monospace"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "Serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v4, v0, v5

    if-eqz v2, :cond_1

    .line 39
    iput v4, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    aput-boolean v4, v0, v4

    .line 44
    :goto_0
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 40
    :cond_1
    const-string v2, "Sans Serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v4, v0, v6

    if-eqz v1, :cond_2

    .line 41
    iput v6, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 43
    :cond_2
    iput v5, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/paulmach/textedit/FontTypePreference;)I
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 25
    iget v1, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lorg/paulmach/textedit/FontTypePreference;I)I
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 25
    iput p1, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100(Lorg/paulmach/textedit/FontTypePreference;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 25
    invoke-virtual {p0}, Lorg/paulmach/textedit/FontTypePreference;->notifyChanged()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/FontTypePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 48
    const-string v1, "Choose a font type"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const-string v1, "OK"

    new-instance v2, Lorg/paulmach/textedit/FontTypePreference$1;

    invoke-direct {v2, p0}, Lorg/paulmach/textedit/FontTypePreference$1;-><init>(Lorg/paulmach/textedit/FontTypePreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    const-string v1, "Cancel"

    new-instance v2, Lorg/paulmach/textedit/FontTypePreference$2;

    invoke-direct {v2, p0}, Lorg/paulmach/textedit/FontTypePreference$2;-><init>(Lorg/paulmach/textedit/FontTypePreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Monospace"

    aput-object v2, v1, v6

    const-string v2, "Serif"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "Sans Serif"

    aput-object v3, v1, v2

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FontTypePreference;->fonts:Ljava/util/List;

    .line 76
    new-instance v1, Lorg/paulmach/textedit/FontTypePreference$FontTypeArrayAdapter;

    invoke-virtual {p0}, Lorg/paulmach/textedit/FontTypePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109000f

    iget-object v4, p0, Lorg/paulmach/textedit/FontTypePreference;->fonts:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/paulmach/textedit/FontTypePreference$FontTypeArrayAdapter;-><init>(Lorg/paulmach/textedit/FontTypePreference;Landroid/content/Context;ILjava/util/List;)V

    .line 77
    iget v2, p0, Lorg/paulmach/textedit/FontTypePreference;->selected:I

    new-instance v3, Lorg/paulmach/textedit/FontTypePreference$3;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FontTypePreference$3;-><init>(Lorg/paulmach/textedit/FontTypePreference;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    aput-boolean v5, v0, v6

    return-void
.end method
