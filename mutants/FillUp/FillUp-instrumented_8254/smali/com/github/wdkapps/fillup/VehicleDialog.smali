.class public Lcom/github/wdkapps/fillup/VehicleDialog;
.super Ljava/lang/Object;
.source "VehicleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/wdkapps/fillup/VehicleDialog$Listener;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x4aacc58e6106f7e2L


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/VehicleDialog"

    const-wide v2, -0x3190b69595001708L    # -6.747919374288396E69

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x6

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

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 35
    invoke-static {p0}, Lcom/github/wdkapps/fillup/VehicleDialog;->isValidName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 35
    invoke-static {p0}, Lcom/github/wdkapps/fillup/VehicleDialog;->isValidTankSize(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static create(Landroid/content/Context;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;ILjava/lang/String;Lcom/github/wdkapps/fillup/Vehicle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 70
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 71
    const v0, 0x7f03000c

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    invoke-virtual {v9, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 76
    const v0, 0x7f0b003b

    .line 77
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    new-instance v1, Lcom/github/wdkapps/fillup/Units;

    const-string v2, "units"

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0b003a

    .line 85
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0b003c

    .line 87
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 88
    invoke-virtual {p4}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p4}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSizeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f0b0004

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 93
    new-instance v0, Lcom/github/wdkapps/fillup/VehicleDialog$1;

    move-object v2, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/github/wdkapps/fillup/VehicleDialog$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/EditText;Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;I)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0b0005

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    new-instance v1, Lcom/github/wdkapps/fillup/VehicleDialog$2;

    invoke-direct {v1, p1, p2}, Lcom/github/wdkapps/fillup/VehicleDialog$2;-><init>(Lcom/github/wdkapps/fillup/VehicleDialog$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    return-object v9
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 147
    :try_start_0
    new-instance v3, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v3}, Lcom/github/wdkapps/fillup/Vehicle;-><init>()V

    .line 148
    invoke-virtual {v3, p0}, Lcom/github/wdkapps/fillup/Vehicle;->setName(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    aput-boolean v1, v0, v5

    move v0, v1

    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v3

    .line 150
    aput-boolean v1, v0, v1

    move v0, v2

    goto :goto_0
.end method

.method private static isValidTankSize(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v3, 0x3

    aget-object v0, v0, v3

    .line 165
    :try_start_0
    new-instance v3, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v3}, Lcom/github/wdkapps/fillup/Vehicle;-><init>()V

    .line 166
    invoke-virtual {v3, p0}, Lcom/github/wdkapps/fillup/Vehicle;->setTankSize(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    move v0, v1

    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v3

    .line 168
    aput-boolean v1, v0, v1

    move v0, v2

    goto :goto_0
.end method
