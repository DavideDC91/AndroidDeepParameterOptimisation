.class public Lcom/github/wdkapps/fillup/Month;
.super Ljava/lang/Object;
.source "Month.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x50d5863cee5bc2a7L


# instance fields
.field private final labels:[Ljava/lang/String;

.field private month:I

.field private year:I


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const-string v1, "com/github/wdkapps/fillup/Month"

    const-wide v2, 0x5640230397867c29L    # 2.960773425741928E107

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/Month;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Month;->labels:[Ljava/lang/String;

    .line 57
    iget v1, p1, Lcom/github/wdkapps/fillup/Month;->month:I

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    .line 58
    iget v1, p1, Lcom/github/wdkapps/fillup/Month;->year:I

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    .line 59
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/Month;->labels:[Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    .line 48
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    div-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    .line 49
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method


# virtual methods
.method public before(Lcom/github/wdkapps/fillup/Month;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 94
    iget v3, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    iget v4, p1, Lcom/github/wdkapps/fillup/Month;->year:I

    aput-boolean v1, v0, v2

    if-ge v3, v4, :cond_1

    aput-boolean v1, v0, v1

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_1
    iget v3, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    iget v4, p1, Lcom/github/wdkapps/fillup/Month;->year:I

    const/4 v5, 0x2

    aput-boolean v1, v0, v5

    if-le v3, v4, :cond_2

    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 96
    :cond_2
    iget v3, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    iget v4, p1, Lcom/github/wdkapps/fillup/Month;->month:I

    aput-boolean v1, v0, v6

    if-ge v3, v4, :cond_3

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    .line 97
    :cond_3
    const/4 v3, 0x6

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0
.end method

.method public decrement()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 79
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 80
    const/16 v1, 0xb

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    .line 81
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    aput-boolean v3, v0, v3

    .line 85
    :goto_0
    aput-boolean v3, v0, v4

    return-void

    .line 83
    :cond_1
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 134
    aput-boolean v1, v0, v2

    if-ne p0, p1, :cond_1

    .line 135
    aput-boolean v1, v0, v1

    move v0, v1

    .line 145
    :goto_0
    return v0

    .line 136
    :cond_1
    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    if-nez p1, :cond_2

    .line 137
    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v1, v0, v5

    if-eq v3, v4, :cond_3

    .line 139
    const/4 v3, 0x5

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 140
    :cond_3
    check-cast p1, Lcom/github/wdkapps/fillup/Month;

    .line 141
    iget v3, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    iget v4, p1, Lcom/github/wdkapps/fillup/Month;->month:I

    const/4 v5, 0x6

    aput-boolean v1, v0, v5

    if-eq v3, v4, :cond_4

    .line 142
    aput-boolean v1, v0, v6

    move v0, v2

    goto :goto_0

    .line 143
    :cond_4
    iget v3, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    iget v4, p1, Lcom/github/wdkapps/fillup/Month;->year:I

    const/16 v5, 0x8

    aput-boolean v1, v0, v5

    if-eq v3, v4, :cond_5

    .line 144
    const/16 v3, 0x9

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 145
    :cond_5
    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v7, v0, v1

    .line 107
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    aput-boolean v3, v7, v4

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 154
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Month;->labels:[Ljava/lang/String;

    iget v2, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLongLabel()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 163
    iget-object v1, p0, Lcom/github/wdkapps/fillup/Month;->labels:[Ljava/lang/String;

    iget v2, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    aget-object v1, v1, v2

    .line 164
    iget v2, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v0, v5

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 120
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    add-int/lit8 v1, v1, 0x1f

    .line 121
    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    add-int/2addr v1, v2

    .line 122
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public increment()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 66
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    const/16 v2, 0xb

    aput-boolean v3, v0, v4

    if-ne v1, v2, :cond_1

    .line 67
    iput v4, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    .line 68
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->year:I

    aput-boolean v3, v0, v3

    .line 72
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 70
    :cond_1
    iget v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/wdkapps/fillup/Month;->month:I

    aput-boolean v3, v0, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/Month;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/Month;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 176
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/Month;->getLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
