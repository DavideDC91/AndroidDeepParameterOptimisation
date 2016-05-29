.class public Lcom/github/wdkapps/fillup/Units;
.super Ljava/lang/Object;
.source "Units.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final $VRc:[[Z = null

.field public static final KILOMETERS_PER_GALLON:I = 0x5

.field public static final KILOMETERS_PER_LITER:I = 0x1

.field public static final LITERS_PER_100_KILOMETERS:I = 0x2

.field public static final MILES_PER_GALLON:I = 0x0

.field public static final UK_MPG_KILOMETERS_LITERS:I = 0x4

.field public static final UK_MPG_MILES_LITERS:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final summary:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/Units"

    const-wide v2, -0x4b48fb2696c99f78L    # -9.387850492279727E-55

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    const-string v3, "0"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 76
    iget v2, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Units;->summary:Ljava/lang/String;

    .line 77
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method


# virtual methods
.method public getAverageTankSize()F
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v1, v0, v1

    .line 222
    const/4 v0, 0x0

    .line 223
    iget v2, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    packed-switch v2, :pswitch_data_0

    .line 235
    :goto_0
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return v0

    .line 226
    :pswitch_0
    const/high16 v0, 0x41800000    # 16.0f

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 232
    :pswitch_1
    const/high16 v0, 0x42700000    # 60.0f

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDistanceLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const v1, 0x7f07009e

    const/4 v7, 0x7

    const v2, 0x7f07009f

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 174
    const v0, 0x7f070097

    .line 175
    iget v4, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v5, 0x0

    aput-boolean v6, v3, v5

    packed-switch v4, :pswitch_data_0

    .line 183
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v6, v3, v7

    return-object v0

    .line 176
    :pswitch_0
    aput-boolean v6, v3, v6

    move v0, v1

    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v0, 0x2

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 178
    :pswitch_2
    const/4 v0, 0x3

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 179
    :pswitch_3
    const/4 v0, 0x4

    aput-boolean v6, v3, v0

    move v0, v1

    goto :goto_0

    .line 180
    :pswitch_4
    const/4 v0, 0x5

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 181
    :pswitch_5
    const/4 v0, 0x6

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDistanceLabelLowerCase()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 193
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDistanceRatioLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const v1, 0x7f07009a

    const/4 v7, 0x6

    const v2, 0x7f07009b

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 155
    const v0, 0x7f070097

    .line 156
    iget v4, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v5, 0x0

    aput-boolean v6, v3, v5

    packed-switch v4, :pswitch_data_0

    .line 164
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    return-object v0

    .line 157
    :pswitch_0
    aput-boolean v6, v3, v6

    move v0, v1

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v0, 0x2

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 159
    :pswitch_2
    const/4 v0, 0x3

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 160
    :pswitch_3
    const/4 v0, 0x4

    aput-boolean v6, v3, v0

    move v0, v1

    goto :goto_0

    .line 161
    :pswitch_4
    const/4 v0, 0x5

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 162
    :pswitch_5
    aput-boolean v6, v3, v7

    move v0, v2

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getLiquidVolumeLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const v1, 0x7f07009c

    const/4 v7, 0x3

    const v2, 0x7f07009d

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 107
    const v0, 0x7f070097

    .line 108
    iget v4, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v5, 0x0

    aput-boolean v6, v3, v5

    packed-switch v4, :pswitch_data_0

    .line 116
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    return-object v0

    .line 109
    :pswitch_0
    aput-boolean v6, v3, v6

    move v0, v1

    goto :goto_0

    .line 110
    :pswitch_1
    const/4 v0, 0x2

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 111
    :pswitch_2
    aput-boolean v6, v3, v7

    move v0, v2

    goto :goto_0

    .line 112
    :pswitch_3
    const/4 v0, 0x4

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 113
    :pswitch_4
    const/4 v0, 0x5

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 114
    :pswitch_5
    const/4 v0, 0x6

    aput-boolean v6, v3, v0

    move v0, v1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getLiquidVolumeLabelLowerCase()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 126
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLiquidVolumeRatioLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const v1, 0x7f070098

    const/4 v7, 0x5

    const v2, 0x7f070099

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 136
    const v0, 0x7f070097

    .line 137
    iget v4, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v5, 0x0

    aput-boolean v6, v3, v5

    packed-switch v4, :pswitch_data_0

    .line 145
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    return-object v0

    .line 138
    :pswitch_0
    aput-boolean v6, v3, v6

    move v0, v1

    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x2

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 140
    :pswitch_2
    const/4 v0, 0x7

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 141
    :pswitch_3
    const/4 v0, 0x4

    aput-boolean v6, v3, v0

    move v0, v2

    goto :goto_0

    .line 142
    :pswitch_4
    aput-boolean v6, v3, v7

    move v0, v2

    goto :goto_0

    .line 143
    :pswitch_5
    const/4 v0, 0x6

    aput-boolean v6, v3, v0

    move v0, v1

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMileageLabel()Ljava/lang/String;
    .locals 6

    .prologue
    const v1, 0x7f0700a0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x9

    aget-object v2, v0, v2

    .line 203
    const v0, 0x7f070097

    .line 204
    iget v3, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v4, 0x0

    aput-boolean v5, v2, v4

    packed-switch v3, :pswitch_data_0

    .line 212
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    return-object v0

    .line 205
    :pswitch_0
    aput-boolean v5, v2, v5

    move v0, v1

    goto :goto_0

    .line 206
    :pswitch_1
    const v0, 0x7f0700a2

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 207
    :pswitch_2
    const v0, 0x7f0700a3

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v0, 0x4

    aput-boolean v5, v2, v0

    move v0, v1

    goto :goto_0

    .line 209
    :pswitch_4
    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    move v0, v1

    goto :goto_0

    .line 210
    :pswitch_5
    const v0, 0x7f0700a1

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 97
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Units;->summary:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getValue()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Units;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Units;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 88
    iget v1, p0, Lcom/github/wdkapps/fillup/Units;->value:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
