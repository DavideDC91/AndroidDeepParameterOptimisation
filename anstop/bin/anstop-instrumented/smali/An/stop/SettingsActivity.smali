.class public LAn/stop/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x6a26e75e9963366aL


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

    sput-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

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

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/SettingsActivity"

    const-wide v2, -0x4d60c9e01a25cfe4L    # -7.4092548287134414E-65

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, LAn/stop/SettingsActivity;->addPreferencesFromResource(I)V

    .line 44
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 55
    invoke-virtual {p0}, LAn/stop/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 49
    invoke-virtual {p0}, LAn/stop/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, LAn/stop/SettingsActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/SettingsActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v7

    .line 66
    const-string v0, "lap_format_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    aput-boolean v5, v1, v6

    if-nez v0, :cond_1

    aput-boolean v5, v1, v5

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "lap_format_elapsed"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    const-string v2, "lap_format_delta"

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    const-string v3, "lap_format_systime"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 73
    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    if-nez v2, :cond_2

    aput-boolean v5, v1, v7

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "lap_format_elapsed"

    invoke-virtual {p0, v0}, LAn/stop/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x7

    aput-boolean v5, v1, v3

    if-eqz v2, :cond_4

    .line 78
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    .line 82
    :goto_1
    const v0, 0x7f070030

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0}, LAn/stop/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lap_format_elapsed"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    goto :goto_1
.end method
