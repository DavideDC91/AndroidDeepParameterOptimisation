.class public abstract Lcom/github/wdkapps/fillup/GasRecordWatcher;
.super Ljava/lang/Object;
.source "GasRecordWatcher.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x40a415a2b04ce1efL


# instance fields
.field private costWatcher:Landroid/text/TextWatcher;

.field private editTextCost:Landroid/widget/EditText;

.field private editTextGallons:Landroid/widget/EditText;

.field private editTextPrice:Landroid/widget/EditText;

.field private gallonsWatcher:Landroid/text/TextWatcher;

.field private mode:Lcom/github/wdkapps/fillup/DataEntryMode;

.field private priceWatcher:Landroid/text/TextWatcher;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasRecordWatcher"

    const-wide v2, -0x1edb67c820b720c6L    # -9.048177877953388E159

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/github/wdkapps/fillup/DataEntryMode;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextPrice:Landroid/widget/EditText;

    .line 58
    iput-object p3, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextCost:Landroid/widget/EditText;

    .line 59
    iput-object p4, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextGallons:Landroid/widget/EditText;

    .line 60
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    .line 62
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculatePrice()Z

    move-result v1

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->getPriceTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->priceWatcher:Landroid/text/TextWatcher;

    .line 64
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextPrice:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->priceWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    aput-boolean v3, v0, v3

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateCost()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->getCostTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->costWatcher:Landroid/text/TextWatcher;

    .line 69
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextCost:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->costWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateGallons()Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-nez v1, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->getGallonsTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->gallonsWatcher:Landroid/text/TextWatcher;

    .line 74
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextGallons:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->gallonsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 76
    :cond_3
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method private getCostTextWatcher()Landroid/text/TextWatcher;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 119
    new-instance v1, Lcom/github/wdkapps/fillup/GasRecordWatcher$2;

    invoke-direct {v1, p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher$2;-><init>(Lcom/github/wdkapps/fillup/GasRecordWatcher;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getGallonsTextWatcher()Landroid/text/TextWatcher;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 135
    new-instance v1, Lcom/github/wdkapps/fillup/GasRecordWatcher$3;

    invoke-direct {v1, p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher$3;-><init>(Lcom/github/wdkapps/fillup/GasRecordWatcher;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getPriceTextWatcher()Landroid/text/TextWatcher;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 103
    new-instance v1, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;

    invoke-direct {v1, p0}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;-><init>(Lcom/github/wdkapps/fillup/GasRecordWatcher;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public abstract costChanged()V
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 83
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculatePrice()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextPrice:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->priceWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    aput-boolean v3, v0, v3

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateCost()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextCost:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->costWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateGallons()Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->editTextGallons:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher;->gallonsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 94
    :cond_3
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public abstract gallonsChanged()V
.end method

.method public abstract priceChanged()V
.end method
