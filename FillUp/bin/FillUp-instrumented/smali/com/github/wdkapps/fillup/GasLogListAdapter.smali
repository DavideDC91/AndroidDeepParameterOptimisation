.class public Lcom/github/wdkapps/fillup/GasLogListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GasLogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/github/wdkapps/fillup/GasRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x5afb455e3998f11aL


# instance fields
.field private final activity:Landroid/app/Activity;

.field private isCostDisplayable:Z

.field private isNotesDisplayable:Z

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field

.field private units:Lcom/github/wdkapps/fillup/Units;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x14

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasLogListAdapter"

    const-wide v2, 0xe7df578b1d040efL    # 7.1886761985327E-239

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 61
    const v1, 0x7f03000f

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 62
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->activity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->records:Ljava/util/List;

    .line 64
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->getSettings()V

    .line 65
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private getSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 75
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->units:Lcom/github/wdkapps/fillup/Units;

    .line 76
    invoke-static {}, Lcom/github/wdkapps/fillup/Settings;->isCostDisplayable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->isCostDisplayable:Z

    .line 77
    invoke-static {}, Lcom/github/wdkapps/fillup/Settings;->isNotesDisplayable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->isNotesDisplayable:Z

    .line 78
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v7, v0, v1

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    if-nez p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 96
    :cond_1
    const v0, 0x7f0b0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0b0046

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0b0047

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0b0048

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    const v4, 0x7f0b0049

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0b004a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 104
    iget-object v6, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->records:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/wdkapps/fillup/GasRecord;

    .line 107
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getDateString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    if-eqz v0, :cond_6

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "</b>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 117
    :goto_0
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getGallonsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const-string v0, ""

    .line 121
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v1

    const/4 v2, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v7, v2

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileageString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "9999.99"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    if-le v1, v2, :cond_2

    .line 124
    const-string v0, "#VAL!"

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 126
    :cond_2
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v7, v2

    if-eqz v1, :cond_3

    .line 127
    const-string v0, "---"

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 130
    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean v0, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->isCostDisplayable:Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getCost()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    if-nez v0, :cond_7

    .line 134
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 146
    :goto_1
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getNotes()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-boolean v1, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->isNotesDisplayable:Z

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    if-eqz v1, :cond_8

    .line 148
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x11

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 158
    :goto_2
    const/16 v0, 0x13

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    return-object p2

    .line 113
    :cond_6
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    goto/16 :goto_0

    .line 136
    :cond_7
    const-string v0, "<b>%s</b>: %s (%s %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v8, 0x7f070051

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 138
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v3

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getCost()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 139
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/CurrencyManager;->getSymbolicFractionalFormatter()Lcom/github/wdkapps/fillup/CurrencyFormatter;

    move-result-object v3

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/GasRecord;->getPrice()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/github/wdkapps/fillup/CurrencyFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->units:Lcom/github/wdkapps/fillup/Units;

    .line 140
    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeRatioLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    goto/16 :goto_1

    .line 150
    :cond_8
    const-string v1, "<b>%s</b>: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f070054

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 150
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x12

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    goto/16 :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 170
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->getSettings()V

    .line 172
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
