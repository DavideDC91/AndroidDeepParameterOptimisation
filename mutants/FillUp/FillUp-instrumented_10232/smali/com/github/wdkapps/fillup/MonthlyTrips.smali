.class public Lcom/github/wdkapps/fillup/MonthlyTrips;
.super Ljava/lang/Object;
.source "MonthlyTrips.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/github/wdkapps/fillup/Month;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x30e5a74a64d5f7e0L


# instance fields
.field earliest:Ljava/util/Date;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/github/wdkapps/fillup/Month;",
            "Lcom/github/wdkapps/fillup/TripRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v2, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    filled-new-array {v2}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const-string v1, "com/github/wdkapps/fillup/MonthlyTrips"

    const-wide v2, -0x71754595bc122f79L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->map:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->earliest:Ljava/util/Date;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v5, v2, v1

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 54
    new-instance v1, Lcom/github/wdkapps/fillup/TripRecord;

    invoke-direct {v1, v0, v0}, Lcom/github/wdkapps/fillup/TripRecord;-><init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/GasRecord;)V

    invoke-direct {p0, v1}, Lcom/github/wdkapps/fillup/MonthlyTrips;->add(Lcom/github/wdkapps/fillup/TripRecord;)V

    aput-boolean v5, v2, v5

    move-object v1, v0

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 57
    new-instance v4, Lcom/github/wdkapps/fillup/TripRecord;

    invoke-direct {v4, v1, v0}, Lcom/github/wdkapps/fillup/TripRecord;-><init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/GasRecord;)V

    invoke-direct {p0, v4}, Lcom/github/wdkapps/fillup/MonthlyTrips;->add(Lcom/github/wdkapps/fillup/TripRecord;)V

    .line 58
    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    move-object v1, v0

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x4

    aput-boolean v5, v2, v0

    return-void
.end method

.method private add(Lcom/github/wdkapps/fillup/TripRecord;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 72
    new-instance v2, Lcom/github/wdkapps/fillup/Month;

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/TripRecord;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/wdkapps/fillup/Month;-><init>(Ljava/util/Date;)V

    .line 75
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->map:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/TripRecord;

    .line 76
    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->map:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-boolean v4, v1, v4

    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/TripRecord;->getEndDate()Ljava/util/Date;

    move-result-object v0

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->earliest:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/TripRecord;->getEndDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->earliest:Ljava/util/Date;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 88
    :cond_1
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void

    .line 81
    :cond_2
    invoke-virtual {v0, p1}, Lcom/github/wdkapps/fillup/TripRecord;->append(Lcom/github/wdkapps/fillup/TripRecord;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getTrips(Lcom/github/wdkapps/fillup/Month;)Lcom/github/wdkapps/fillup/TripRecord;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 97
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/TripRecord;

    .line 98
    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-nez v0, :cond_1

    new-instance v0, Lcom/github/wdkapps/fillup/TripRecord;

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Month;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/github/wdkapps/fillup/TripRecord;-><init>(Ljava/util/Date;)V

    aput-boolean v3, v1, v3

    .line 99
    :cond_1
    aput-boolean v3, v1, v4

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/github/wdkapps/fillup/Month;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthlyTrips;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v7

    .line 112
    new-instance v2, Lcom/github/wdkapps/fillup/PlotDateRange;

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "plot_date_range"

    invoke-direct {v2, v0, v3}, Lcom/github/wdkapps/fillup/PlotDateRange;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/PlotDateRange;->getStartDate()Ljava/util/Date;

    move-result-object v0

    .line 114
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/PlotDateRange;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 117
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/PlotDateRange;->getValue()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-boolean v6, v1, v5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->earliest:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    aput-boolean v6, v1, v6

    if-eqz v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MonthlyTrips;->earliest:Ljava/util/Date;

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 122
    :cond_1
    new-instance v2, Lcom/github/wdkapps/fillup/MonthIterator;

    invoke-direct {v2, v0, v3}, Lcom/github/wdkapps/fillup/MonthIterator;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    aput-boolean v6, v1, v7

    return-object v2
.end method
