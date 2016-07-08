.class public Lorg/paulmach/textedit/DefaultDirPreference;
.super Landroid/preference/Preference;
.source "DefaultDirPreference.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final REQUEST_FILE_BROWSER:I = 0x1

.field private static final serialVersionUID:J = 0x1739d9bfb392bd22L


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/DefaultDirPreference;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const-string v1, "org/paulmach/textedit/DefaultDirPreference"

    const-wide v2, 0x86c8cac5234L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lorg/paulmach/textedit/DefaultDirPreference;->$VRi()[[Z

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lorg/paulmach/textedit/DefaultDirPreference;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/DefaultDirPreference;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v1, Lorg/paulmach/textedit/DefaultDirPreference$1;

    invoke-direct {v1, p0}, Lorg/paulmach/textedit/DefaultDirPreference$1;-><init>(Lorg/paulmach/textedit/DefaultDirPreference;)V

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/DefaultDirPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    invoke-virtual {p0}, Lorg/paulmach/textedit/DefaultDirPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    const-string v2, "defaultdir"

    const-string v3, "/sdcard/"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/DefaultDirPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method
