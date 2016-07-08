.class public Lcom/github/wdkapps/fillup/MonthIterator;
.super Ljava/lang/Object;
.source "MonthIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/github/wdkapps/fillup/Month;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0xfe237a7f2affe32L


# instance fields
.field private end:Lcom/github/wdkapps/fillup/Month;

.field private next:Lcom/github/wdkapps/fillup/Month;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MonthIterator;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MonthIterator"

    const-wide v2, 0x7d91b80eff751e6L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthIterator;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MonthIterator;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthIterator;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/github/wdkapps/fillup/Month;

    invoke-direct {v1, p1}, Lcom/github/wdkapps/fillup/Month;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/MonthIterator;->next:Lcom/github/wdkapps/fillup/Month;

    .line 46
    new-instance v1, Lcom/github/wdkapps/fillup/Month;

    invoke-direct {v1, p2}, Lcom/github/wdkapps/fillup/Month;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/MonthIterator;->end:Lcom/github/wdkapps/fillup/Month;

    .line 47
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthIterator;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthIterator;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 56
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MonthIterator;->next:Lcom/github/wdkapps/fillup/Month;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MonthIterator;->end:Lcom/github/wdkapps/fillup/Month;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/Month;->before(Lcom/github/wdkapps/fillup/Month;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method

.method public next()Lcom/github/wdkapps/fillup/Month;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MonthIterator;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthIterator;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 67
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MonthIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    aput-boolean v3, v0, v3

    throw v1

    .line 68
    :cond_1
    new-instance v1, Lcom/github/wdkapps/fillup/Month;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MonthIterator;->next:Lcom/github/wdkapps/fillup/Month;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Month;-><init>(Lcom/github/wdkapps/fillup/Month;)V

    .line 69
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MonthIterator;->next:Lcom/github/wdkapps/fillup/Month;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Month;->increment()V

    .line 70
    aput-boolean v3, v0, v4

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MonthIterator;->next()Lcom/github/wdkapps/fillup/Month;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MonthIterator;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MonthIterator;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 81
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    throw v1
.end method
