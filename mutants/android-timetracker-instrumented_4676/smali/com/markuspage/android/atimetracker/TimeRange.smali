.class public Lcom/markuspage/android/atimetracker/TimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/markuspage/android/atimetracker/TimeRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final FIELDS:[I

.field protected static FORMAT:Ljava/text/DateFormat; = null

.field public static final NULL:J = -0x1L


# instance fields
.field private end:J

.field private start:J


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0xd

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/TimeRange"

    const-wide v2, 0x5ab0588d9d38ccf9L    # 7.081533072728842E128

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 37
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/markuspage/android/atimetracker/TimeRange;->FIELDS:[I

    .line 74
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void

    .line 37
    :array_0
    .array-data 4
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    .line 49
    iput-wide p3, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    .line 50
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public static overlap(Ljava/util/Calendar;JJ)J
    .locals 11

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v9

    .line 136
    sget-object v2, Lcom/markuspage/android/atimetracker/TimeRange;->FIELDS:[I

    array-length v3, v2

    aput-boolean v7, v4, v1

    move v0, v1

    :goto_0
    aput-boolean v7, v4, v7

    if-ge v0, v3, :cond_1

    aget v1, v2, v0

    .line 137
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    aput-boolean v7, v4, v1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 140
    invoke-virtual {p0, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 141
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 143
    cmp-long v5, v2, p1

    const/4 v6, 0x3

    aput-boolean v7, v4, v6

    if-ltz v5, :cond_2

    cmp-long v5, p3, v0

    const/4 v6, 0x4

    aput-boolean v7, v4, v6

    if-gez v5, :cond_3

    .line 144
    :cond_2
    const-wide/16 v0, 0x0

    aput-boolean v7, v4, v8

    .line 150
    :goto_1
    return-wide v0

    .line 147
    :cond_3
    cmp-long v5, v0, p1

    const/4 v6, 0x6

    aput-boolean v7, v4, v6

    if-lez v5, :cond_4

    const/4 v5, 0x7

    aput-boolean v7, v4, v5

    move-wide p1, v0

    .line 148
    :goto_2
    cmp-long v0, v2, p3

    const/16 v1, 0x9

    aput-boolean v7, v4, v1

    if-gez v0, :cond_5

    aput-boolean v7, v4, v9

    move-wide p3, v2

    .line 149
    :goto_3
    sub-long v0, p3, p1

    .line 150
    const/16 v2, 0xc

    aput-boolean v7, v4, v2

    goto :goto_1

    .line 147
    :cond_4
    const/16 v0, 0x8

    aput-boolean v7, v4, v0

    goto :goto_2

    .line 148
    :cond_5
    const/16 v0, 0xb

    aput-boolean v7, v4, v0

    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lcom/markuspage/android/atimetracker/TimeRange;)I
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x7

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v8

    .line 90
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    iget-wide v6, p1, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    cmp-long v4, v4, v6

    aput-boolean v2, v0, v3

    if-gez v4, :cond_1

    .line 91
    aput-boolean v2, v0, v2

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    iget-wide v6, p1, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    cmp-long v4, v4, v6

    const/4 v5, 0x2

    aput-boolean v2, v0, v5

    if-lez v4, :cond_2

    .line 93
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0

    .line 95
    :cond_2
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    cmp-long v4, v4, v10

    const/4 v5, 0x4

    aput-boolean v2, v0, v5

    if-nez v4, :cond_3

    .line 96
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0

    .line 98
    :cond_3
    iget-wide v4, p1, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    cmp-long v4, v4, v10

    const/4 v5, 0x6

    aput-boolean v2, v0, v5

    if-nez v4, :cond_4

    .line 99
    aput-boolean v2, v0, v8

    move v0, v1

    goto :goto_0

    .line 101
    :cond_4
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    iget-wide v6, p1, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    cmp-long v4, v4, v6

    const/16 v5, 0x8

    aput-boolean v2, v0, v5

    if-gez v4, :cond_5

    .line 102
    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    move v0, v1

    goto :goto_0

    .line 103
    :cond_5
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    iget-wide v6, p1, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    cmp-long v1, v4, v6

    const/16 v4, 0xa

    aput-boolean v2, v0, v4

    if-lez v1, :cond_6

    .line 104
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0

    .line 106
    :cond_6
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/markuspage/android/atimetracker/TimeRange;

    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/TimeRange;->compareTo(Lcom/markuspage/android/atimetracker/TimeRange;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x8

    aget-object v3, v0, v3

    .line 113
    instance-of v0, p1, Lcom/markuspage/android/atimetracker/TimeRange;

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, Lcom/markuspage/android/atimetracker/TimeRange;

    .line 115
    iget-wide v4, p1, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    iget-wide v6, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    cmp-long v0, v4, v6

    aput-boolean v1, v3, v1

    if-nez v0, :cond_1

    iget-wide v4, p1, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    iget-wide v6, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    cmp-long v0, v4, v6

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    .line 117
    :goto_1
    return v0

    .line 115
    :cond_1
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public getEnd()J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 61
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getStart()J
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 53
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTotal()J
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v2, v0, v1

    .line 69
    iget-wide v0, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    aput-boolean v6, v2, v1

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    sub-long/2addr v0, v4

    aput-boolean v6, v2, v6

    .line 72
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    sub-long/2addr v0, v4

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 123
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    const-wide/16 v6, 0x65

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setEnd(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 65
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setStart(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 57
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/TimeRange;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/TimeRange;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 78
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/TimeRange;->start:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    const/4 v3, 0x0

    aput-boolean v8, v0, v3

    if-nez v1, :cond_1

    .line 82
    sget-object v1, Lcom/markuspage/android/atimetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/TimeRange;->end:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aput-boolean v8, v0, v8

    .line 86
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v8, v0, v2

    return-object v1

    .line 84
    :cond_1
    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aput-boolean v8, v0, v1

    goto :goto_0
.end method
