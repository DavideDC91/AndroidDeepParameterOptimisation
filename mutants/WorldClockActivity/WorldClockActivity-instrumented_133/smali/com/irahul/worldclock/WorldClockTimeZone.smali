.class public Lcom/irahul/worldclock/WorldClockTimeZone;
.super Ljava/lang/Object;
.source "WorldClockTimeZone.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final OFFSET_FORMAT:Ljava/lang/String; = "%s %02d:%02d"

.field private static final _3600000:I = 0x36ee80

.field private static final _60:I = 0x3c

.field private static final _60000:I = 0xea60

.field private static final serialVersionUID:J = -0x2353e58e7ff61ff6L


# instance fields
.field private displayName:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xf

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

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

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [Z

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

    const-string v1, "com/irahul/worldclock/WorldClockTimeZone"

    const-wide v2, 0x363dd57e76fb8b3fL    # 2.0413224444840152E-47

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 35
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    .line 40
    iput-object p2, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->displayName:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x7

    aget-object v2, v0, v2

    .line 67
    aput-boolean v4, v2, v1

    if-nez p1, :cond_1

    aput-boolean v4, v2, v4

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_1
    instance-of v0, p1, Lcom/irahul/worldclock/WorldClockTimeZone;

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    if-nez v0, :cond_2

    const/4 v0, 0x3

    aput-boolean v4, v2, v0

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 71
    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method public getDefaultDisplay()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 54
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getFlagResourceName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flag_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getMappedCountry()Lcom/irahul/worldclock/Country;

    move-result-object v2

    invoke-virtual {v2}, Lcom/irahul/worldclock/Country;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 50
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getMappedCountry()Lcom/irahul/worldclock/Country;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 110
    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/irahul/worldclock/CountryTimeZone;->getCountryForTimeZoneId(Ljava/lang/String;)Lcom/irahul/worldclock/Country;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRawOffsetDisplay()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 84
    iget-object v0, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 85
    const-string v3, "%s %02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-boolean v5, v1, v6

    if-ltz v2, :cond_1

    const-string v0, "+"

    aput-boolean v5, v1, v5

    :goto_0
    aput-object v0, v4, v6

    const v0, 0x36ee80

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const v0, 0xea60

    div-int v0, v2, v0

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v5, v1, v8

    return-object v0

    :cond_1
    const-string v0, "-"

    aput-boolean v5, v1, v7

    goto :goto_0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getRawOffsetDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 62
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 76
    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 58
    iput-object p1, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->displayName:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockTimeZone;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/irahul/worldclock/WorldClockTimeZone;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
