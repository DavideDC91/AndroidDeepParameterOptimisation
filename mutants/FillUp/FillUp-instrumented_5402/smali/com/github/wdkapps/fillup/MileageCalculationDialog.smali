.class public Lcom/github/wdkapps/fillup/MileageCalculationDialog;
.super Ljava/lang/Object;
.source "MileageCalculationDialog.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static calculation:Lcom/github/wdkapps/fillup/MileageCalculation; = null

.field private static final serialVersionUID:J = -0x76ddd7c53ebecf5fL


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

    sput-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MileageCalculationDialog"

    const-wide v2, -0x6372072a36882847L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

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

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public static create(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 75
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 80
    const v3, 0x7f03000b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 81
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 85
    new-instance v3, Lcom/github/wdkapps/fillup/Units;

    const-string v4, "units"

    invoke-direct {v3, v4}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 88
    const v4, 0x7f07000a

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 88
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 93
    const v0, 0x7f0b0035

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f0b0037

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    sget-object v3, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-static {v3}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->getCalculationText(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f0b0039

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v0, 0x7f0b0038

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasGauge;

    .line 106
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/github/wdkapps/fillup/GasGauge;->setHandTarget(F)V

    .line 107
    invoke-virtual {v0, v5}, Lcom/github/wdkapps/fillup/GasGauge;->setInteractive(Z)V

    .line 110
    const v0, 0x7f0b0036

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    new-instance v3, Lcom/github/wdkapps/fillup/MileageCalculationDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog$2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 127
    aput-boolean v6, v1, v5

    return-object v2
.end method

.method private static getCalculationText(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 138
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    aput-boolean v7, v1, v8

    if-nez p0, :cond_1

    .line 141
    const v2, 0x7f07006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v7, v1, v7

    .line 157
    :goto_0
    return-object v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getUnits()Lcom/github/wdkapps/fillup/Units;

    move-result-object v2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070068

    .line 147
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getDistanceDriven()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 149
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 147
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070069

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getGasolineUsedString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 152
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 150
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%s %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileageString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 155
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 153
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    aput-boolean v7, v1, v9

    goto :goto_0
.end method

.method public static init(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 63
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static isDisplayable(Lcom/github/wdkapps/fillup/GasRecord;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 52
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
