.class public Lcom/github/wdkapps/fillup/CurrencyFormatter;
.super Ljava/text/Format;
.source "CurrencyFormatter.java"


# static fields
.field private static final $VRc:[[Z = null

.field protected static final TAG:Ljava/lang/String;

.field protected static final serialVersionUID:J = 0x439b36e911dc5f2aL


# instance fields
.field protected locale:Ljava/util/Locale;

.field protected nf:Ljava/text/NumberFormat;

.field protected numeric:Z


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xb

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

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

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CurrencyFormatter"

    const-wide v2, 0x269521c381b30957L    # 7.991717207857418E-123

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 41
    const-class v1, Lcom/github/wdkapps/fillup/CurrencyFormatter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/CurrencyFormatter;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 57
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 58
    iput-boolean p1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->numeric:Z

    .line 59
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 5

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 111
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 119
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected getDefaultFractionDigits()I
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x7

    aget-object v4, v0, v2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/CurrencyFormatter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".getDefaultFractionDigits()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v4, v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fractionDigits="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    aput-boolean v7, v4, v3

    if-gez v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v7, v4, v0

    move v0, v1

    .line 151
    :cond_1
    const/4 v1, 0x4

    aput-boolean v7, v4, v1

    return v0

    .line 143
    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v3

    .line 144
    :goto_1
    const-string v6, "unable to determine default fraction digits for locale"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput-boolean v7, v4, v7

    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 77
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->locale:Ljava/util/Locale;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected getMaximumFractionDigits()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 169
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->getDefaultFractionDigits()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected getMinimumFractionDigits()I
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 160
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->getDefaultFractionDigits()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isNumeric()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 68
    iget-boolean v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->numeric:Z

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 127
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 87
    iput-object p1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->locale:Ljava/util/Locale;

    .line 89
    iget-boolean v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->numeric:Z

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 90
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    .line 93
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    aput-boolean v3, v0, v3

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 101
    iget-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 102
    aput-boolean v3, v0, v4

    return-void

    .line 96
    :cond_1
    invoke-static {p1}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/CurrencyFormatter;->nf:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
