.class public Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;
.super Lcom/github/wdkapps/fillup/CurrencyFormatter;
.source "FractionalCurrencyFormatter.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x1d23be90a69c70deL


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/FractionalCurrencyFormatter"

    const-wide v2, 0x37ad3e0de37f8872L    # 1.678431412482558E-40

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 36
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/CurrencyFormatter;-><init>(Z)V

    .line 37
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method protected getMaximumFractionDigits()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FractionalCurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 47
    invoke-super {p0}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->getMaximumFractionDigits()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
