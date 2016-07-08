.class public Lcom/github/wdkapps/fillup/GasRecordList;
.super Ljava/lang/Object;
.source "GasRecordList.java"


# static fields
.field private static final $VRc:[[Z

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x1

    filled-new-array {v5}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/github/wdkapps/fillup/GasRecordList"

    const-wide v2, -0x8c7ae03415578e8L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 39
    const-class v1, Lcom/github/wdkapps/fillup/GasRecordList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecordList;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public static calculateMileage(Ljava/util/List;)V
    .locals 9
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
    const/4 v2, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v8

    .line 50
    const/4 v0, 0x0

    aput-boolean v8, v3, v0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v8, v3, v8

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    aput-boolean v8, v3, v0

    .line 85
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance v0, Lcom/github/wdkapps/fillup/OdometerComparator;

    invoke-direct {v0}, Lcom/github/wdkapps/fillup/OdometerComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    new-instance v4, Lcom/github/wdkapps/fillup/Units;

    const-string v0, "units"

    invoke-direct {v4, v0}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x3

    aput-boolean v8, v3, v0

    .line 65
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x4

    aput-boolean v8, v3, v1

    if-eqz v0, :cond_6

    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 67
    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setCalculation(Lcom/github/wdkapps/fillup/MileageCalculation;)V

    .line 68
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v6, 0x5

    aput-boolean v8, v3, v6

    if-eqz v1, :cond_3

    .line 69
    new-instance v1, Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-direct {v1, v0, v4}, Lcom/github/wdkapps/fillup/MileageCalculation;-><init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/Units;)V

    const/4 v0, 0x6

    aput-boolean v8, v3, v0

    .line 75
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x7

    aput-boolean v8, v3, v6

    if-eqz v0, :cond_5

    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 77
    invoke-virtual {v1, v0}, Lcom/github/wdkapps/fillup/MileageCalculation;->add(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 78
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v7, 0x8

    aput-boolean v8, v3, v7

    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v0, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setCalculation(Lcom/github/wdkapps/fillup/MileageCalculation;)V

    .line 80
    new-instance v1, Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-direct {v1, v0, v4}, Lcom/github/wdkapps/fillup/MileageCalculation;-><init>(Lcom/github/wdkapps/fillup/GasRecord;Lcom/github/wdkapps/fillup/Units;)V

    const/16 v0, 0x9

    aput-boolean v8, v3, v0

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setCalculation(Lcom/github/wdkapps/fillup/MileageCalculation;)V

    const/16 v0, 0xa

    aput-boolean v8, v3, v0

    goto :goto_1

    .line 85
    :cond_5
    const/16 v0, 0xb

    aput-boolean v8, v3, v0

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method public static find(Ljava/util/List;Lcom/github/wdkapps/fillup/GasRecord;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ")I"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 96
    new-instance v1, Lcom/github/wdkapps/fillup/OdometerComparator;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/OdometerComparator;-><init>()V

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static findPreviousFullTank(Ljava/util/List;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v1

    .line 121
    const/4 v0, 0x0

    aput-boolean v5, v2, v0

    move v1, p1

    .line 123
    :cond_1
    add-int/lit8 v1, v1, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v0

    if-ltz v1, :cond_2

    .line 124
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 125
    :cond_2
    const/4 v0, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 132
    :goto_0
    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " location="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/wdkapps/fillup/GasRecordList;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "findPreviousFullTank()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v0, -0x1

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method public static hasFullTank(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v6

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    aput-boolean v1, v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v1, v3, v1

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 107
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x2

    aput-boolean v1, v3, v5

    if-eqz v0, :cond_1

    .line 108
    aput-boolean v1, v3, v6

    move v0, v1

    .line 110
    :goto_1
    return v0

    .line 108
    :cond_1
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public static subList(Ljava/util/List;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordList;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordList;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v7

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    sub-int v0, p2, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v2, v0

    move v1, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v0

    if-ge v1, p2, :cond_1

    .line 149
    new-instance v4, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-direct {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;-><init>(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 150
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    aput-boolean v6, v2, v7

    return-object v3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " start="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " end="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/github/wdkapps/fillup/GasRecordList;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subList()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v0, 0x4

    aput-boolean v6, v2, v0

    goto :goto_1
.end method
