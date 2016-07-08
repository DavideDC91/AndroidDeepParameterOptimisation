.class public Lcom/github/wdkapps/fillup/GasRecord;
.super Ljava/lang/Object;
.source "GasRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final $VRc:[[Z = null

.field public static final MAX_COST:D = 999999.999

.field public static final MAX_GALLONS:F = 9999.999f

.field public static final MAX_ODOMETER:I = 0x98967f

.field public static final MAX_PRICE:D = 999999.999

.field private static final csvDateFormatter:Ljava/text/SimpleDateFormat;

.field private static final csvDateTimeFormatter:Ljava/text/SimpleDateFormat;

.field private static final dateFormatter:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = -0x21706e1754360a48L

.field private static final timeFormatter:Ljava/text/DateFormat;


# instance fields
.field private calc:Lcom/github/wdkapps/fillup/MileageCalculation;

.field private cost:Ljava/lang/Double;

.field private date:Ljava/util/Date;

.field private fulltank:Ljava/lang/Boolean;

.field private gallons:Ljava/lang/Float;

.field private hash:[Ljava/lang/Object;

.field private hidden:Ljava/lang/Boolean;

.field private id:Ljava/lang/Integer;

.field private notes:Ljava/lang/String;

.field private odometer:Ljava/lang/Integer;

.field private price:Ljava/lang/Double;

.field private vid:Ljava/lang/Integer;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x32

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

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

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasRecord"

    const-wide v2, -0x1e45233a8e16fc0dL    # -6.04257834487126E162

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x31

    aget-object v0, v0, v1

    .line 52
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecord;->dateFormatter:Ljava/text/DateFormat;

    .line 56
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecord;->timeFormatter:Ljava/text/DateFormat;

    .line 59
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecord;->csvDateFormatter:Ljava/text/SimpleDateFormat;

    .line 61
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecord;->csvDateTimeFormatter:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    .line 106
    iput-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    .line 107
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    .line 108
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    .line 112
    const-string v1, ""

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    .line 115
    iput-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 116
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    .line 125
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    .line 126
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    .line 127
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    iget-object v2, p1, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 128
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    .line 129
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    .line 130
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    .line 131
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    .line 132
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    .line 133
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    .line 134
    iget-object v1, p1, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 136
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/Vehicle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 144
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecord;-><init>()V

    .line 145
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getID()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 172
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecord;-><init>()V

    .line 173
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    array-length v2, v1

    aput-boolean v4, v0, v3

    packed-switch v2, :pswitch_data_0

    .line 201
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Invalid CSV length"

    array-length v1, v1

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    aput-boolean v4, v0, v5

    throw v2

    .line 178
    :pswitch_0
    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setCsvDateTime(Ljava/lang/String;)V

    .line 179
    aget-object v2, v1, v4

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setOdometer(Ljava/lang/String;)V

    .line 180
    aget-object v2, v1, v6

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/String;)V

    .line 181
    aget-object v2, v1, v5

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/String;)V

    .line 182
    aget-object v2, v1, v7

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setHiddenCalculation(Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setNotes(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->calculatePrice()V

    aput-boolean v4, v0, v4

    .line 203
    :goto_0
    aput-boolean v4, v0, v7

    return-void

    .line 190
    :pswitch_1
    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setCsvDateTime(Ljava/lang/String;)V

    .line 191
    aget-object v2, v1, v4

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setOdometer(Ljava/lang/String;)V

    .line 192
    aget-object v2, v1, v6

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/String;)V

    .line 193
    aget-object v2, v1, v5

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/String;)V

    .line 194
    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setHiddenCalculation(Ljava/lang/String;)V

    .line 195
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/Double;)V

    .line 196
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setNotes(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->calculatePrice()V

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCsvDateTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 314
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecord;->csvDateTimeFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getHashArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    aget-object v0, v0, v1

    .line 674
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    aput-boolean v4, v0, v3

    if-nez v1, :cond_1

    .line 675
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    aput-boolean v4, v0, v4

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    aput-object v2, v1, v3

    .line 680
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    aput-object v2, v1, v4

    .line 681
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    aput-object v2, v1, v5

    .line 682
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    aput-object v3, v1, v2

    .line 683
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    aput-object v3, v1, v2

    .line 684
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    aput-object v3, v1, v2

    .line 685
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 686
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 687
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 688
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    aput-object v3, v1, v2

    .line 689
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hash:[Ljava/lang/Object;

    aput-boolean v4, v0, v5

    return-object v1
.end method

.method private setCsvDateTime(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 335
    :try_start_0
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecord;->csvDateTimeFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void

    .line 336
    :catch_0
    move-exception v1

    .line 338
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecord;->csvDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    aput-boolean v3, v0, v3

    goto :goto_0
.end method

.method private setPrice(Ljava/lang/Double;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 497
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    .line 498
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public calculateCost()V
    .locals 6

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 237
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public calculateGallons()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 225
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    const/4 v3, 0x0

    aput-boolean v6, v1, v3

    if-eqz v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-boolean v6, v1, v6

    .line 228
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    return-void
.end method

.method public calculatePrice()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 211
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    aput-boolean v6, v1, v3

    if-eqz v2, :cond_1

    .line 213
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-boolean v6, v1, v6

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setPrice(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x30

    aget-object v3, v0, v3

    .line 712
    aput-boolean v2, v3, v1

    if-nez p1, :cond_1

    .line 713
    aput-boolean v2, v3, v2

    move v0, v1

    .line 720
    :goto_0
    return v0

    .line 714
    :cond_1
    const/4 v0, 0x2

    aput-boolean v2, v3, v0

    if-ne p1, p0, :cond_2

    .line 715
    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0

    .line 716
    :cond_2
    instance-of v0, p1, Lcom/github/wdkapps/fillup/GasRecord;

    const/4 v4, 0x4

    aput-boolean v2, v3, v4

    if-nez v0, :cond_3

    .line 717
    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    .line 719
    :cond_3
    check-cast p1, Lcom/github/wdkapps/fillup/GasRecord;

    .line 720
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getHashArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1}, Lcom/github/wdkapps/fillup/GasRecord;->getHashArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    aput-boolean v2, v3, v1

    goto :goto_0
.end method

.method public getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x29

    aget-object v0, v0, v1

    .line 600
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCost()Ljava/lang/Double;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 431
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCostString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v0, v0, v1

    .line 440
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/CurrencyManager;->getNumericFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 283
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 292
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecord;->dateFormatter:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 301
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    sget-object v2, Lcom/github/wdkapps/fillup/GasRecord;->dateFormatter:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    sget-object v2, Lcom/github/wdkapps/fillup/GasRecord;->timeFormatter:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getGallons()Ljava/lang/Float;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 389
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getGallonsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 398
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.3f"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v0, v5

    return-object v1
.end method

.method public getID()Ljava/lang/Integer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 247
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNotes()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 527
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getOdometer()Ljava/lang/Integer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 348
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getOdometerString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 357
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 473
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPriceString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 482
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/CurrencyManager;->getNumericFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getVehicleID()Ljava/lang/Integer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 265
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hasCalculation()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x2b

    aget-object v3, v0, v3

    .line 618
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    aget-object v0, v0, v1

    .line 700
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getHashArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isCalculationHidden()Ljava/lang/Boolean;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x26

    aget-object v0, v0, v1

    .line 573
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isFullTank()Ljava/lang/Boolean;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 546
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setCalculation(Lcom/github/wdkapps/fillup/MileageCalculation;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2a

    aget-object v0, v0, v1

    .line 609
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 610
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCost(Ljava/lang/Double;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 449
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    .line 450
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 459
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    .line 460
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    aput-boolean v6, v0, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x412e847fff7ced91L    # 999999.999

    cmpl-double v2, v2, v4

    aput-boolean v6, v0, v6

    if-lez v2, :cond_2

    .line 462
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Value out of range."

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    throw v1

    .line 464
    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/Double;)V

    .line 465
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 323
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->date:Ljava/util/Date;

    .line 324
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setFullTank(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 555
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    .line 556
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setFullTank(Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x25

    aget-object v0, v0, v1

    .line 564
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    .line 565
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setGallons(Ljava/lang/Float;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v0, v0, v1

    .line 407
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    .line 408
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setGallons(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 417
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    .line 418
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x461c3fff    # 9999.999f

    cmpl-float v2, v2, v3

    aput-boolean v4, v0, v4

    if-lez v2, :cond_2

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Value out of range."

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    throw v1

    .line 422
    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/Float;)V

    .line 423
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

.method public setHiddenCalculation(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x27

    aget-object v0, v0, v1

    .line 582
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    .line 583
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setHiddenCalculation(Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x28

    aget-object v0, v0, v1

    .line 591
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    .line 592
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setID(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 256
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 536
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-nez p1, :cond_1

    const-string p1, ""

    aput-boolean v2, v0, v2

    .line 537
    :cond_1
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    .line 538
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOdometer(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 366
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    .line 367
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOdometer(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x98967f

    aput-boolean v4, v0, v4

    if-le v2, v3, :cond_2

    .line 378
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Value out of range."

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    throw v1

    .line 380
    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setOdometer(Ljava/lang/Integer;)V

    .line 381
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 513
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    .line 514
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    aput-boolean v6, v0, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x412e847fff7ced91L    # 999999.999

    cmpl-double v2, v2, v4

    aput-boolean v6, v0, v6

    if-lez v2, :cond_2

    .line 516
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Value out of range."

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    throw v1

    .line 518
    :cond_2
    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setPrice(Ljava/lang/Double;)V

    .line 519
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void
.end method

.method public setVehicleID(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 274
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    .line 275
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2d

    aget-object v0, v0, v1

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GasRecord [id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->vid:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", odometer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->odometer:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gallons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->gallons:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fulltank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->fulltank:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->hidden:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->cost:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->notes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", calc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->price:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public toStringCSV()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x2e

    const/4 v5, 0x1

    const/16 v4, 0x2c

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecord;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecord;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getCsvDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getGallonsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getCostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    if-eqz v2, :cond_1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecord;->calc:Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-boolean v5, v1, v5

    .line 641
    :cond_1
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    return-object v0
.end method
