.class public Lcom/github/wdkapps/fillup/MappedLabelFormat;
.super Ljava/text/Format;
.source "MappedLabelFormat.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private abbreviate:Z

.field private labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MappedLabelFormat"

    const-wide v2, -0x67a68ebf4557466aL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

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

    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 33
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->labels:Ljava/util/Map;

    .line 42
    iput-boolean v2, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->abbreviate:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 49
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->labels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 73
    const/4 v0, 0x0

    .line 74
    instance-of v2, p1, Ljava/lang/Double;

    aput-boolean v4, v1, v5

    if-eqz v2, :cond_1

    .line 75
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->labels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-boolean v4, v1, v4

    .line 78
    :cond_1
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_3

    .line 80
    iget-boolean v2, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->abbreviate:Z

    aput-boolean v4, v1, v6

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    if-nez v2, :cond_2

    .line 81
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 84
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 86
    :cond_3
    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 96
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "parseObject() is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public put(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 59
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->labels:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setAbbreviate(Z)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MappedLabelFormat;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 106
    iput-boolean p1, p0, Lcom/github/wdkapps/fillup/MappedLabelFormat;->abbreviate:Z

    .line 107
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
