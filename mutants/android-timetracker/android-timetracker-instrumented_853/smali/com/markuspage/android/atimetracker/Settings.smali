.class public Lcom/markuspage/android/atimetracker/Settings;
.super Landroid/app/ListActivity;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final BOOL:Ljava/lang/String; = "bool"

.field private static final CHOOSE_DAY:I = 0x0

.field private static final CHOOSE_ROUNDING:I = 0x1

.field private static final CURRENT:Ljava/lang/String; = "current"

.field private static final CURRENTVALUE:Ljava/lang/String; = "current-value"

.field static DAYS_OF_WEEK:[Ljava/lang/String; = null

.field private static final DAY_OF_WEEK_PREF_IDX:I = 0x0

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final DISABLEDVALUE:Ljava/lang/String; = "disabled-value"

.field private static final INT:Ljava/lang/String; = "int"

.field public static final LARGE:I = 0x18

.field public static final MEDIUM:I = 0x14

.field private static final PREFERENCE:Ljava/lang/String; = "preference"

.field private static final PREFERENCENAME:Ljava/lang/String; = "preference-name"

.field private static final ROUND:[I

.field public static final SMALL:I = 0x10

.field private static final VALUETYPE:Ljava/lang/String; = "value-type"


# instance fields
.field protected final PREFS_ACTION:Ljava/lang/String;

.field private final ROUND_NAMES:[Ljava/lang/String;

.field private adapter:Landroid/widget/SimpleAdapter;

.field private applicationPreferences:Landroid/content/SharedPreferences;

.field private fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private roundPref:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xd

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Settings"

    const-wide v2, 0x16a5197c1d188a19L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v1

    const/16 v2, 0xc

    aget-object v1, v1, v2

    .line 68
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    .line 239
    new-array v2, v6, [Ljava/lang/String;

    sput-object v2, Lcom/markuspage/android/atimetracker/Settings;->DAYS_OF_WEEK:[Ljava/lang/String;

    .line 242
    aput-boolean v5, v1, v0

    :goto_0
    aput-boolean v5, v1, v5

    if-ge v0, v6, :cond_0

    .line 243
    sget-object v2, Lcom/markuspage/android/atimetracker/Settings;->DAYS_OF_WEEK:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    return-void

    .line 68
    nop

    :array_0
    .array-data 4
        0x0
        0xf
        0x1e
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    const-string v1, "PrefsAction"

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->PREFS_ACTION:Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->ROUND_NAMES:[Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/markuspage/android/atimetracker/Settings;)Ljava/util/List;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 46
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/markuspage/android/atimetracker/Settings;)Landroid/widget/SimpleAdapter;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 46
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->adapter:Landroid/widget/SimpleAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/markuspage/android/atimetracker/Settings;)[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 46
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->ROUND_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/markuspage/android/atimetracker/Settings;)Ljava/util/HashMap;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 46
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400()[I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 46
    sget-object v1, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private addBooleanPreference(ILjava/lang/String;II)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v5, v0, v9

    .line 148
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "preference"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 152
    invoke-virtual {p0, p3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p0, p4}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string v8, "current"

    aput-boolean v3, v5, v4

    if-eqz v7, :cond_1

    aput-boolean v3, v5, v3

    move-object v0, v1

    :goto_0
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "disabled"

    const/4 v8, 0x3

    aput-boolean v3, v5, v8

    if-eqz v7, :cond_2

    const/4 v1, 0x4

    aput-boolean v3, v5, v1

    :goto_1
    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "current-value"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "disabled-value"

    const/4 v0, 0x6

    aput-boolean v3, v5, v0

    if-nez v7, :cond_3

    const/4 v0, 0x7

    aput-boolean v3, v5, v0

    move v0, v3

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "value-type"

    const-string v1, "bool"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "preference-name"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const/16 v0, 0x9

    aput-boolean v3, v5, v0

    return-void

    .line 154
    :cond_1
    aput-boolean v3, v5, v9

    move-object v0, v2

    goto :goto_0

    .line 155
    :cond_2
    const/4 v2, 0x5

    aput-boolean v3, v5, v2

    move-object v2, v1

    goto :goto_1

    .line 157
    :cond_3
    const/16 v0, 0x8

    aput-boolean v3, v5, v0

    move v0, v4

    goto :goto_2
.end method

.method private updateFontPrefs(Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 164
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    const v3, 0x7f06002b

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    sparse-switch p2, :sswitch_data_0

    .line 183
    :goto_0
    const-string v1, "current-value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void

    .line 169
    :sswitch_0
    const-string v3, "current"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "disabled"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "disabled-value"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-boolean v5, v0, v5

    goto :goto_0

    .line 174
    :sswitch_1
    const-string v1, "current"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "disabled"

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "disabled-value"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 179
    :sswitch_2
    const-string v2, "current"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "disabled"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "disabled-value"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-boolean v5, v0, v6

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v11

    .line 215
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 217
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    aput-boolean v9, v3, v10

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v9, v3, v9

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 218
    const-string v1, "preference-name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    const-string v2, "value-type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "int"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x2

    aput-boolean v9, v3, v7

    if-eqz v2, :cond_3

    .line 220
    const-string v2, "current-value"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    aput-boolean v9, v3, v8

    if-eq v2, v7, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x4

    aput-boolean v9, v3, v0

    .line 225
    :cond_1
    aput-boolean v9, v3, v11

    .line 232
    :cond_2
    :goto_1
    const/16 v0, 0x9

    aput-boolean v9, v3, v0

    goto :goto_0

    .line 225
    :cond_3
    const-string v2, "value-type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "bool"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x6

    aput-boolean v9, v3, v7

    if-eqz v2, :cond_2

    .line 226
    const-string v2, "current-value"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v7, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x7

    aput-boolean v9, v3, v8

    if-eq v2, v7, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x8

    aput-boolean v9, v3, v0

    goto :goto_1

    .line 233
    :cond_4
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PrefsAction"

    const-string v2, "PrefsAction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v4}, Lcom/markuspage/android/atimetracker/Settings;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Settings;->finish()V

    .line 238
    const/16 v0, 0xa

    aput-boolean v9, v3, v0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v6

    .line 74
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v1}, Lcom/markuspage/android/atimetracker/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    .line 76
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Settings;->setContentView(I)V

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v0, "preference"

    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    const-string v3, "start_day"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    .line 82
    const-string v3, "current"

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4, v8}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v3, "current-value"

    aput-boolean v6, v7, v1

    if-nez v0, :cond_1

    aput-boolean v6, v7, v6

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "value-type"

    const-string v3, "int"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "preference-name"

    const-string v3, "start_day"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const v0, 0x7f060020

    const-string v2, "military-time"

    const v3, 0x7f060028

    const v4, 0x7f060027

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->addBooleanPreference(ILjava/lang/String;II)V

    .line 91
    const v0, 0x7f060022

    const-string v2, "concurrent-tasks"

    const v3, 0x7f06002c

    const v4, 0x7f06002d

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->addBooleanPreference(ILjava/lang/String;II)V

    .line 94
    const v0, 0x7f060023

    const-string v2, "sound-enabled"

    const v3, 0x7f06002e

    const v4, 0x7f06002f

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->addBooleanPreference(ILjava/lang/String;II)V

    .line 97
    const v0, 0x7f060024

    const-string v2, "vibrate-enabled"

    const v3, 0x7f060030

    const v4, 0x7f060031

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->addBooleanPreference(ILjava/lang/String;II)V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    const-string v2, "preference"

    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    const-string v3, "font-size"

    const/16 v4, 0x10

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/markuspage/android/atimetracker/Settings;->updateFontPrefs(Ljava/util/Map;I)V

    .line 105
    const-string v2, "value-type"

    const-string v3, "int"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "preference-name"

    const-string v3, "font-size"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->fontMap:Ljava/util/Map;

    .line 109
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->fontMap:Ljava/util/Map;

    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->fontMap:Ljava/util/Map;

    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->fontMap:Ljava/util/Map;

    const v2, 0x7f06002b

    invoke-virtual {p0, v2}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const v0, 0x7f060032

    const-string v2, "time_display"

    const v3, 0x7f060034

    const v4, 0x7f060033

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->addBooleanPreference(ILjava/lang/String;II)V

    .line 117
    aput-boolean v6, v7, v5

    move v0, v1

    :goto_1
    sget-object v2, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    array-length v2, v2

    const/4 v3, 0x4

    aput-boolean v6, v7, v3

    if-ge v0, v2, :cond_3

    .line 118
    sget-object v2, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    aget v2, v2, v0

    const/4 v3, 0x5

    aput-boolean v6, v7, v3

    if-nez v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->ROUND_NAMES:[Ljava/lang/String;

    const v3, 0x7f060036

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v2, 0x6

    aput-boolean v6, v7, v2

    .line 117
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    aput-boolean v6, v7, v2

    goto :goto_1

    .line 83
    :cond_1
    aput-boolean v6, v7, v9

    move v0, v6

    goto/16 :goto_0

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->ROUND_NAMES:[Ljava/lang/String;

    const v3, 0x7f060037

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/markuspage/android/atimetracker/Settings;->ROUND:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/markuspage/android/atimetracker/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v2, 0x7

    aput-boolean v6, v7, v2

    goto :goto_2

    .line 124
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    .line 126
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const-string v2, "preference"

    const v3, 0x7f060035

    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->applicationPreferences:Landroid/content/SharedPreferences;

    const-string v2, "round_report_times"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 128
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const-string v4, "current"

    const/16 v0, 0x9

    aput-boolean v6, v7, v0

    if-nez v2, :cond_4

    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v6, v7, v8

    :goto_3
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const-string v3, "current-value"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const-string v2, "value-type"

    const-string v3, "int"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    const-string v2, "preference-name"

    const-string v3, "round_report_times"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->roundPref:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    const v3, 0x7f030006

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "preference"

    aput-object v5, v4, v1

    const-string v1, "current"

    aput-object v1, v4, v6

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->adapter:Landroid/widget/SimpleAdapter;

    .line 139
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Settings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const/16 v0, 0xc

    aput-boolean v6, v7, v0

    return-void

    .line 128
    :cond_4
    const v0, 0x7f060037

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {p0, v0, v5}, Lcom/markuspage/android/atimetracker/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xb

    aput-boolean v6, v7, v5

    goto :goto_3

    .line 133
    nop

    :array_0
    .array-data 4
        0x7f080010
        0x7f080011
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 249
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 272
    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    :goto_0
    return-object v0

    .line 251
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/markuspage/android/atimetracker/Settings;->DAYS_OF_WEEK:[Ljava/lang/String;

    new-instance v3, Lcom/markuspage/android/atimetracker/Settings$1;

    invoke-direct {v3, p0}, Lcom/markuspage/android/atimetracker/Settings$1;-><init>(Lcom/markuspage/android/atimetracker/Settings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 261
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Settings;->ROUND_NAMES:[Ljava/lang/String;

    new-instance v3, Lcom/markuspage/android/atimetracker/Settings$2;

    invoke-direct {v3, p0}, Lcom/markuspage/android/atimetracker/Settings$2;-><init>(Lcom/markuspage/android/atimetracker/Settings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Settings;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Settings;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v7

    .line 188
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->prefs:Ljava/util/List;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 190
    const-string v1, "preference-name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "start_day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v6, v4, v3

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0, v3}, Lcom/markuspage/android/atimetracker/Settings;->showDialog(I)V

    aput-boolean v6, v4, v6

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Settings;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 211
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 212
    const/4 v0, 0x6

    aput-boolean v6, v4, v0

    return-void

    .line 192
    :cond_2
    const-string v1, "preference-name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "round_report_times"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v6, v4, v2

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0, v6}, Lcom/markuspage/android/atimetracker/Settings;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v6, v4, v0

    goto :goto_0

    .line 196
    :cond_3
    const-string v1, "current"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    const-string v2, "disabled"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    const-string v3, "current"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v3, "disabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "current-value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    const-string v3, "disabled-value"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    const-string v5, "current-value"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "disabled-value"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "preference-name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "font-size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v6, v4, v7

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Settings;->fontMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/markuspage/android/atimetracker/Settings;->updateFontPrefs(Ljava/util/Map;I)V

    const/4 v0, 0x5

    aput-boolean v6, v4, v0

    goto/16 :goto_0
.end method
