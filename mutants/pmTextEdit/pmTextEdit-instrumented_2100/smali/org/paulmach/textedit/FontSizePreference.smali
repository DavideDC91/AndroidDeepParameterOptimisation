.class public Lorg/paulmach/textedit/FontSizePreference;
.super Landroid/preference/DialogPreference;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x74171cd9f13e1fabL


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

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    const/4 v1, 0x0

    const/16 v2, 0xb

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

    const-string v1, "org/paulmach/textedit/FontSizePreference"

    const-wide v2, 0x310180c50ed78fdeL    # 1.238293852296094E-72

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/paulmach/textedit/FontSizePreference;->fonts:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lorg/paulmach/textedit/FontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    const-string v2, "fontsize"

    const-string v3, "Medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "Extra Small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v4, v0, v5

    if-eqz v2, :cond_2

    .line 37
    iput v5, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    aput-boolean v4, v0, v4

    .line 46
    :cond_1
    :goto_0
    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    return-void

    .line 38
    :cond_2
    const-string v2, "Small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v4, v0, v6

    if-eqz v2, :cond_3

    .line 39
    iput v4, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    aput-boolean v4, v0, v7

    goto :goto_0

    .line 40
    :cond_3
    const-string v2, "Medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v4, v0, v8

    if-eqz v2, :cond_4

    .line 41
    iput v6, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 42
    :cond_4
    const-string v2, "Large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_5

    .line 43
    iput v7, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 44
    :cond_5
    const-string v2, "Huge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 45
    iput v8, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/paulmach/textedit/FontSizePreference;)I
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 23
    iget v1, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lorg/paulmach/textedit/FontSizePreference;I)I
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 23
    iput p1, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100(Lorg/paulmach/textedit/FontSizePreference;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 23
    invoke-virtual {p0}, Lorg/paulmach/textedit/FontSizePreference;->notifyChanged()V

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

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 51
    const-string v1, "Choose a font type"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    const-string v1, "OK"

    new-instance v2, Lorg/paulmach/textedit/FontSizePreference$1;

    invoke-direct {v2, p0}, Lorg/paulmach/textedit/FontSizePreference$1;-><init>(Lorg/paulmach/textedit/FontSizePreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Extra Small"

    aput-object v2, v1, v6

    const-string v2, "Small"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "Medium"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Large"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Huge"

    aput-object v3, v1, v2

    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FontSizePreference;->fonts:Ljava/util/List;

    .line 80
    new-instance v1, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;

    invoke-virtual {p0}, Lorg/paulmach/textedit/FontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109000f

    iget-object v4, p0, Lorg/paulmach/textedit/FontSizePreference;->fonts:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;-><init>(Lorg/paulmach/textedit/FontSizePreference;Landroid/content/Context;ILjava/util/List;)V

    .line 81
    iget v2, p0, Lorg/paulmach/textedit/FontSizePreference;->selected:I

    new-instance v3, Lorg/paulmach/textedit/FontSizePreference$2;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FontSizePreference$2;-><init>(Lorg/paulmach/textedit/FontSizePreference;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    aput-boolean v5, v0, v6

    return-void
.end method
