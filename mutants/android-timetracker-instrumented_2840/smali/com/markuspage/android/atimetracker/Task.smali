.class public Lcom/markuspage/android/atimetracker/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/markuspage/android/atimetracker/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x2e2472e5a891d806L


# instance fields
.field private collapsed:J

.field private endTime:J

.field private id:I

.field private startTime:J

.field private taskName:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x12

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Z

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

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Task"

    const-wide v2, -0x4529fc1f94ad71a0L    # -2.845390557478331E-25

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    .line 35
    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    .line 45
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Task;->taskName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/markuspage/android/atimetracker/Task;->id:I

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    .line 48
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/markuspage/android/atimetracker/Task;)I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 113
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/markuspage/android/atimetracker/Task;

    invoke-virtual {p0, p1}, Lcom/markuspage/android/atimetracker/Task;->compareTo(Lcom/markuspage/android/atimetracker/Task;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/markuspage/android/atimetracker/Task;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xd

    aget-object v3, v0, v3

    .line 109
    aput-boolean v1, v3, v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/markuspage/android/atimetracker/Task;->getId()I

    move-result v0

    iget v4, p0, Lcom/markuspage/android/atimetracker/Task;->id:I

    aput-boolean v1, v3, v1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public getCollapsed()J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 75
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getEndTime()J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 101
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getId()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 51
    iget v1, p0, Lcom/markuspage/android/atimetracker/Task;->id:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getStartTime()J
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 93
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 55
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Task;->taskName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTotal()J
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v2, v0, v1

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    cmp-long v3, v4, v6

    const/4 v4, 0x0

    aput-boolean v8, v2, v4

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    cmp-long v3, v4, v6

    aput-boolean v8, v2, v8

    if-nez v3, :cond_1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    const/4 v3, 0x2

    aput-boolean v8, v2, v3

    .line 67
    :cond_1
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    add-long/2addr v0, v4

    const/4 v3, 0x3

    aput-boolean v8, v2, v3

    return-wide v0
.end method

.method public isRunning()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xf

    aget-object v3, v0, v3

    .line 117
    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    cmp-long v0, v4, v6

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    cmp-long v0, v4, v6

    aput-boolean v1, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    return v0

    :cond_1
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public setCollapsed(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 71
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    .line 72
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setEndTime(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 105
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setStartTime(J)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 97
    iput-wide p1, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    .line 98
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 59
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Task;->taskName:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 79
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    cmp-long v1, v2, v6

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    cmp-long v1, v2, v6

    aput-boolean v4, v0, v4

    if-nez v1, :cond_2

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    .line 81
    iput-wide v6, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 83
    :cond_2
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

.method public stop()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Task;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Task;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 86
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    const/4 v2, 0x0

    aput-boolean v8, v0, v2

    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    .line 88
    iget-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    iget-wide v4, p0, Lcom/markuspage/android/atimetracker/Task;->endTime:J

    iget-wide v6, p0, Lcom/markuspage/android/atimetracker/Task;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/markuspage/android/atimetracker/Task;->collapsed:J

    aput-boolean v8, v0, v8

    .line 90
    :cond_1
    const/4 v1, 0x2

    aput-boolean v8, v0, v1

    return-void
.end method
