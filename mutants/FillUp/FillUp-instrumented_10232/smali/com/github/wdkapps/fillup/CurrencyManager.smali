.class public Lcom/github/wdkapps/fillup/CurrencyManager;
.super Ljava/lang/Object;
.source "CurrencyManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z

.field public static final DEFAULT_CURRENCY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/github/wdkapps/fillup/CurrencyManager;

.field private static localeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private locale:Ljava/util/Locale;

.field private numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

.field private numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

.field private symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

.field private symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/16 v0, 0x10

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CurrencyManager"

    const-wide v2, 0x639621742b9845dL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 42
    const-class v1, Lcom/github/wdkapps/fillup/CurrencyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->instance:Lcom/github/wdkapps/fillup/CurrencyManager;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->localeMap:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getAvailableCurrencies()V

    .line 54
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->initialize()V

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 64
    iput-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 67
    iput-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 70
    iput-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 146
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/CurrencyManager;->getCurrencyLocale()V

    .line 149
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getAvailableCurrencies()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v9

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/wdkapps/fillup/CurrencyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".getAvailableCurrencies()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    .line 119
    array-length v5, v4

    aput-boolean v8, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v8, v2, v8

    if-ge v0, v5, :cond_1

    aget-object v1, v4, v0

    .line 122
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v6

    .line 126
    invoke-static {v1, v6}, Lcom/github/wdkapps/fillup/CurrencyManager;->getKey(Ljava/util/Locale;Ljava/util/Currency;)Ljava/lang/String;

    move-result-object v6

    .line 128
    sget-object v7, Lcom/github/wdkapps/fillup/CurrencyManager;->localeMap:Ljava/util/Map;

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v2, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v6

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale\'s country is not a supported ISO 3166 country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v8, v2, v9

    goto :goto_1

    .line 136
    :cond_1
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->localeMap:Ljava/util/Map;

    sget-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x5

    aput-boolean v8, v2, v0

    return-void
.end method

.method private getCurrencyLocale()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 159
    :try_start_0
    const-string v0, "currency"

    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/wdkapps/fillup/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyManager;->localeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    .line 161
    iget-object v0, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "map get failed!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/wdkapps/fillup/CurrencyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getCurrencyLocale()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to initialize preferred currency, using app locale"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    .line 165
    const-string v0, "currency"

    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/wdkapps/fillup/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 167
    :goto_0
    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    return-void

    .line 161
    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 78
    sget-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->instance:Lcom/github/wdkapps/fillup/CurrencyManager;

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Lcom/github/wdkapps/fillup/CurrencyManager;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/CurrencyManager;-><init>()V

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->instance:Lcom/github/wdkapps/fillup/CurrencyManager;

    aput-boolean v3, v0, v3

    .line 81
    :cond_1
    sget-object v1, Lcom/github/wdkapps/fillup/CurrencyManager;->instance:Lcom/github/wdkapps/fillup/CurrencyManager;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getKey(Ljava/util/Locale;Ljava/util/Currency;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 92
    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 94
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 92
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v5

    return-object v1
.end method

.method private static initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 103
    const-string v1, "currency"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/wdkapps/fillup/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 104
    const-string v1, "currency"

    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/wdkapps/fillup/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 106
    :cond_1
    aput-boolean v3, v0, v4

    return-void
.end method


# virtual methods
.method public getCurrencySymbol()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v2, v0, v1

    .line 175
    const-string v1, "?"

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    iget-object v3, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_0
    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 179
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/CurrencyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getCurrencySymbol()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to get symbol"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getNumericFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 240
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Lcom/github/wdkapps/fillup/CurrencyFormatter;

    invoke-direct {v1, v3}, Lcom/github/wdkapps/fillup/CurrencyFormatter;-><init>(Z)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 242
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    aput-boolean v3, v0, v3

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNumericFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 272
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 273
    new-instance v1, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;

    invoke-direct {v1, v3}, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;-><init>(Z)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 274
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    aput-boolean v3, v0, v3

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrefEntries()[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 191
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->localeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 193
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 194
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getPrefEntryValues()[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 204
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/CurrencyManager;->getPrefEntries()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrefSummary()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 213
    const-string v1, "currency"

    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyManager;->DEFAULT_CURRENCY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/wdkapps/fillup/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 224
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Lcom/github/wdkapps/fillup/CurrencyFormatter;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;-><init>(Z)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 226
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    aput-boolean v3, v0, v3

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSymbolicFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 256
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 257
    new-instance v1, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;-><init>(Z)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    .line 258
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    aput-boolean v3, v0, v3

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 288
    const-string v1, "currency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/CurrencyManager;->getCurrencyLocale()V

    .line 290
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->symbolicFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->numericFractionalFormatter:Lcom/github/wdkapps/fillup/CurrencyFormatter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/CurrencyManager;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->setLocale(Ljava/util/Locale;)V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 296
    :cond_4
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method
