.class public Lcom/github/wdkapps/fillup/MileageEstimateDialog;
.super Ljava/lang/Object;
.source "MileageEstimateDialog.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static calculation:Lcom/github/wdkapps/fillup/MileageCalculation; = null

.field private static records:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x39b5d35bd6b0588fL

.field private static vehicle:Lcom/github/wdkapps/fillup/Vehicle;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xb

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v3, [Z

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

    const-string v1, "com/github/wdkapps/fillup/MileageEstimateDialog"

    const-wide v2, 0x5d5340c39e589914L    # 3.668394635447138E141

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xa

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

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000()Lcom/github/wdkapps/fillup/MileageCalculation;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 42
    sget-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$002(Lcom/github/wdkapps/fillup/MileageCalculation;)Lcom/github/wdkapps/fillup/MileageCalculation;
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 42
    sput-object p0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method static synthetic access$100(F)Lcom/github/wdkapps/fillup/MileageCalculation;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 42
    invoke-static {p0}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->getEstimateCalculation(F)Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 42
    invoke-static {p0}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->getEstimateString(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static create(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v10

    .line 134
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 139
    const v0, 0x7f03000b

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 140
    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 141
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 144
    new-instance v5, Lcom/github/wdkapps/fillup/Units;

    const-string v0, "units"

    invoke-direct {v5, v0}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 147
    const v0, 0x7f07000b

    .line 148
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 147
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const v0, 0x7f0b0035

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "<sup><small>*</small></sup>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0b0037

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v1, 0x7f070067

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    sget-object v6, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    aput-boolean v7, v2, v8

    if-eqz v6, :cond_1

    .line 159
    sget-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->getEstimateString(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v7, v2, v7

    .line 161
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v0, 0x7f0b0038

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasGauge;

    .line 165
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/wdkapps/fillup/GasGauge;->setHandTarget(F)V

    .line 166
    invoke-virtual {v0, v7}, Lcom/github/wdkapps/fillup/GasGauge;->setInteractive(Z)V

    .line 169
    new-instance v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;

    invoke-direct {v1, v4}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/github/wdkapps/fillup/GasGauge;->setOnHandPositionChangedListener(Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;)V

    .line 179
    const v0, 0x7f0b0039

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    sget-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    aput-boolean v7, v2, v9

    if-nez v1, :cond_2

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v7, v2, v10

    .line 195
    :goto_0
    const v0, 0x7f0b0036

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    new-instance v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$3;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 212
    const/4 v0, 0x5

    aput-boolean v7, v2, v0

    return-object v4

    .line 184
    :cond_2
    const v1, 0x7f070062

    .line 185
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 186
    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSizeString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 187
    invoke-virtual {v5}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 184
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<sup><small>*</small></sup><u>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</u>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v1, 0x7f070066

    sget-object v3, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->Click:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    invoke-static {v0, v1, v3}, Lcom/github/wdkapps/fillup/CheatSheet;->setup(Landroid/view/View;ILcom/github/wdkapps/fillup/CheatSheet$Trigger;)V

    const/4 v0, 0x4

    aput-boolean v7, v2, v0

    goto :goto_0
.end method

.method private static getEstimateCalculation(F)Lcom/github/wdkapps/fillup/MileageCalculation;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 255
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    const/4 v2, 0x0

    aput-boolean v6, v1, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    aput-boolean v6, v1, v6

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput-boolean v6, v1, v3

    if-ge v0, v3, :cond_2

    .line 256
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    .line 281
    :goto_0
    return-object v0

    .line 260
    :cond_2
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v2, v0

    .line 263
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 264
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 267
    new-instance v4, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-direct {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;-><init>(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 268
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/Float;)V

    .line 269
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/Boolean;)V

    .line 272
    sget-object v2, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v2, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 278
    sget-object v2, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/GasRecord;->getCalculation()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private static getEstimateString(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 223
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    aput-boolean v7, v1, v8

    if-nez p0, :cond_1

    .line 226
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v7, v1, v7

    .line 242
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getUnits()Lcom/github/wdkapps/fillup/Units;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070063

    .line 232
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getDistanceDriven()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 234
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 232
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070064

    .line 235
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getGasolineUsedString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 237
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 235
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%s %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MileageCalculation;->getMileageString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 240
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 238
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    aput-boolean v7, v1, v9

    goto :goto_0
.end method

.method public static init(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;I)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 112
    new-instance v1, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v1, p0}, Lcom/github/wdkapps/fillup/Vehicle;-><init>(Lcom/github/wdkapps/fillup/Vehicle;)V

    sput-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 117
    invoke-static {p1, p2}, Lcom/github/wdkapps/fillup/GasRecordList;->findPreviousFullTank(Ljava/util/List;I)I

    move-result v1

    .line 118
    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v1, v2}, Lcom/github/wdkapps/fillup/GasRecordList;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->records:Ljava/util/List;

    .line 121
    const/4 v1, 0x0

    sput-object v1, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->calculation:Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static isDisplayable(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v2

    .line 72
    aput-boolean v2, v3, v1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    aput-boolean v2, v3, v2

    if-gtz v0, :cond_2

    .line 73
    :cond_1
    aput-boolean v2, v3, v5

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 77
    :cond_2
    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x4

    aput-boolean v2, v3, v4

    if-ge v0, v5, :cond_4

    .line 78
    :cond_3
    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    .line 82
    :cond_4
    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    if-lt p2, v2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x7

    aput-boolean v2, v3, v4

    if-le p2, v0, :cond_6

    .line 83
    :cond_5
    const/16 v0, 0x8

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    .line 87
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v4, 0x9

    aput-boolean v2, v3, v4

    if-eqz v0, :cond_7

    .line 88
    const/16 v0, 0xa

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    .line 92
    :cond_7
    invoke-static {p1, p2}, Lcom/github/wdkapps/fillup/GasRecordList;->findPreviousFullTank(Ljava/util/List;I)I

    move-result v0

    const/16 v4, 0xb

    aput-boolean v2, v3, v4

    if-gez v0, :cond_8

    .line 93
    const/16 v0, 0xc

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    .line 97
    :cond_8
    const/16 v0, 0xd

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0
.end method
