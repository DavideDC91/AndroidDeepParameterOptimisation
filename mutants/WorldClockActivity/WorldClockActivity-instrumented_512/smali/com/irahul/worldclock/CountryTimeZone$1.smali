.class final Lcom/irahul/worldclock/CountryTimeZone$1;
.super Ljava/lang/Object;
.source "CountryTimeZone.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/irahul/worldclock/CountryTimeZone;->getSupportedTimezones()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/irahul/worldclock/WorldClockTimeZone;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0xc4a8605f15b4ffcL


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/CountryTimeZone$1"

    const-wide v2, 0x369b7c632823b988L    # 1.2036228957090441E-45

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public compare(Lcom/irahul/worldclock/WorldClockTimeZone;Lcom/irahul/worldclock/WorldClockTimeZone;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/CountryTimeZone$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 638
    invoke-virtual {p1}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 636
    check-cast p1, Lcom/irahul/worldclock/WorldClockTimeZone;

    check-cast p2, Lcom/irahul/worldclock/WorldClockTimeZone;

    invoke-virtual {p0, p1, p2}, Lcom/irahul/worldclock/CountryTimeZone$1;->compare(Lcom/irahul/worldclock/WorldClockTimeZone;Lcom/irahul/worldclock/WorldClockTimeZone;)I

    move-result v0

    return v0
.end method
