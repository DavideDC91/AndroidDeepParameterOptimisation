.class public Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;
.super Landroid/preference/PreferenceActivity;
.source "SandwichRouletteSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x116833ea72ff2aaaL


# instance fields
.field private ingredPrefs:[Landroid/preference/CheckBoxPreference;

.field private saucePrefs:[Landroid/preference/CheckBoxPreference;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichRouletteSettings"

    const-wide v2, -0x6000f18bcfb60b0fL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

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

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 11
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIngredients()[Landroid/widget/CheckBox;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->ingredPrefs:[Landroid/preference/CheckBoxPreference;

    .line 12
    sget-object v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauces()[Landroid/widget/CheckBox;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->saucePrefs:[Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v5

    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->addPreferencesFromResource(I)V

    .line 17
    aput-boolean v5, v3, v2

    move v1, v2

    :goto_0
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIngredients()[Landroid/widget/CheckBox;

    move-result-object v0

    array-length v0, v0

    aput-boolean v5, v3, v5

    if-ge v1, v0, :cond_1

    .line 19
    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->ingredPrefs:[Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v0, v1}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getIng(I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v4, v1

    .line 17
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    aput-boolean v5, v3, v1

    move v1, v0

    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x3

    aput-boolean v5, v3, v0

    :goto_1
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v0}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauces()[Landroid/widget/CheckBox;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    aput-boolean v5, v3, v1

    if-ge v2, v0, :cond_2

    .line 23
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->saucePrefs:[Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->id:Lcom/maxfierke/sandwichroulette/SandwichIngredientData;

    invoke-virtual {v0, v2}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->getSauce(I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v1, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x5

    aput-boolean v5, v3, v0

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 26
    const/4 v0, 0x6

    aput-boolean v5, v3, v0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 29
    const-string v0, "swRoulettePrefs"

    invoke-virtual {p0, v0, v2}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 32
    const-string v0, "baseRandom"

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 33
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v0, "breadRandom"

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 36
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v0, "cheeseRandom"

    invoke-virtual {p0, v0}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 39
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v1, "shakeRandom"

    invoke-virtual {p0, v1}, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 42
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    aput-boolean v6, v3, v2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->ingredPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v1, v1

    aput-boolean v6, v3, v6

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->ingredPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->ingredPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    add-int/lit8 v0, v0, 0x1

    aput-boolean v6, v3, v7

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x3

    aput-boolean v6, v3, v0

    :goto_1
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->saucePrefs:[Landroid/preference/CheckBoxPreference;

    array-length v0, v0

    const/4 v1, 0x4

    aput-boolean v6, v3, v1

    if-ge v2, v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->saucePrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRouletteSettings;->saucePrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x5

    aput-boolean v6, v3, v0

    goto :goto_1

    .line 51
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    const/4 v0, 0x6

    aput-boolean v6, v3, v0

    return-void
.end method
