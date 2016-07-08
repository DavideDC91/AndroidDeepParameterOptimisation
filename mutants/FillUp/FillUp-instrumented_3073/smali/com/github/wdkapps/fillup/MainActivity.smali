.class public Lcom/github/wdkapps/fillup/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/VehicleDialog$Listener;
.implements Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final $VRc:[[Z = null

.field protected static final DIALOG_ADD_VEHICLE_ID:I = 0x1

.field protected static final DIALOG_DELETE_VEHICLE_ID:I = 0x3

.field protected static final DIALOG_EDIT_VEHICLE_ID:I = 0x2

.field protected static final DIALOG_SHOW_CALCULATION_ID:I = 0x4

.field protected static final DIALOG_SHOW_ESTIMATE_ID:I = 0x5

.field protected static final DIALOG_TANK_NEVER_FILLED_ID:I = 0x6

.field private static final GET_GAS_REQUEST:I = 0x1

.field private static final serialVersionUID:J = -0x55a31bd662af6a64L


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            ">;"
        }
    .end annotation
.end field

.field private gaslog:Lcom/github/wdkapps/fillup/GasLog;

.field private listViewsThatNeedVehicle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

.field private spinnerVehicles:Landroid/widget/Spinner;

.field private vehicles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/Vehicle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/16 v0, 0x18

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xc

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v6, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MainActivity"

    const-wide v2, -0x427bf7b019b87d34L    # -2.2774280716992246E-12

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x17

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

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private updateVehiclesSpinnerState()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v4

    .line 133
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v2, v3, v1

    if-nez v0, :cond_1

    aput-boolean v2, v3, v2

    move v1, v2

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->spinnerVehicles:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x4

    aput-boolean v2, v3, v5

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    goto :goto_1

    .line 133
    :cond_1
    aput-boolean v2, v3, v4

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    return-void
.end method


# virtual methods
.method protected addGasRecord(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 559
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v1

    .line 562
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2, v3, p1}, Lcom/github/wdkapps/fillup/GasLog;->createRecord(Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-nez v2, :cond_1

    .line 563
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 598
    :goto_0
    return-void

    .line 568
    :cond_1
    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    invoke-static {v1}, Lcom/github/wdkapps/fillup/TankNeverFilledDialog;->isDisplayable(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_2

    .line 572
    invoke-virtual {p0, v7}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 577
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 583
    invoke-static {v1, p1}, Lcom/github/wdkapps/fillup/GasRecordList;->find(Ljava/util/List;Lcom/github/wdkapps/fillup/GasRecord;)I

    move-result v2

    .line 586
    invoke-static {p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->isDisplayable(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v3

    aput-boolean v4, v0, v5

    if-eqz v3, :cond_3

    .line 587
    invoke-static {p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->init(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 588
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 593
    :cond_3
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-static {v3, v1, v2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->isDisplayable(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)Z

    move-result v3

    aput-boolean v4, v0, v7

    if-eqz v3, :cond_4

    .line 594
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-static {v3, v1, v2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->init(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)V

    .line 595
    invoke-virtual {p0, v6}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 598
    :cond_4
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected addVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xd

    aget-object v0, v0, v3

    .line 370
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v3, p1}, Lcom/github/wdkapps/fillup/GasLog;->createVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z

    move-result v3

    aput-boolean v2, v0, v1

    if-nez v3, :cond_1

    .line 371
    const v3, 0x7f07007b

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    aput-boolean v2, v0, v2

    move v0, v1

    .line 384
    :goto_0
    return v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 377
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasLog;->readAllVehicles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 381
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->setSelectedVehicle(Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0
.end method

.method protected deleteVehicle()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xf

    aget-object v0, v0, v3

    .line 423
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v3, v4}, Lcom/github/wdkapps/fillup/GasLog;->deleteVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z

    move-result v3

    aput-boolean v2, v0, v1

    if-nez v3, :cond_1

    .line 424
    const v3, 0x7f07007d

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    aput-boolean v2, v0, v2

    move v0, v1

    .line 437
    :goto_0
    return v0

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 430
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/GasLog;->readAllVehicles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 434
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->setSelectedVehicle(I)V

    .line 437
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0
.end method

.method protected editVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xe

    aget-object v0, v0, v3

    .line 397
    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v3, p1}, Lcom/github/wdkapps/fillup/GasLog;->updateVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z

    move-result v3

    aput-boolean v2, v0, v1

    if-nez v3, :cond_1

    .line 398
    const v3, 0x7f07007c

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    aput-boolean v2, v0, v2

    move v0, v1

    .line 411
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 404
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasLog;->readAllVehicles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 408
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->setSelectedVehicle(Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    move v0, v2

    goto :goto_0
.end method

.method public getGas(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 315
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v5, v0, v2

    if-nez v1, :cond_1

    aput-boolean v5, v0, v5

    .line 327
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v1, Lcom/github/wdkapps/fillup/GasRecord;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v1, v2}, Lcom/github/wdkapps/fillup/GasRecord;-><init>(Lcom/github/wdkapps/fillup/Vehicle;)V

    .line 319
    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2, v3}, Lcom/github/wdkapps/fillup/GasLog;->readCurrentOdometer(Lcom/github/wdkapps/fillup/Vehicle;)I

    move-result v2

    .line 322
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    sget-object v4, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecordActivity;->CURRENT_ODOMETER:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    sget-object v1, Lcom/github/wdkapps/fillup/GasRecordActivity;->TANK_SIZE:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v3, v5}, Lcom/github/wdkapps/fillup/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 327
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method protected getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 250
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->spinnerVehicles:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 251
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-nez v0, :cond_1

    .line 252
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v3, v1, v3

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v1, v0, v1

    .line 617
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 619
    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 630
    const-string v0, "Invalid Request Code."

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 632
    :goto_0
    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    return-void

    .line 621
    :pswitch_0
    const/4 v0, -0x1

    aput-boolean v2, v1, v2

    if-ne p2, v0, :cond_1

    .line 622
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 623
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->addGasRecord(Lcom/github/wdkapps/fillup/GasRecord;)V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 625
    :cond_1
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 239
    const-string v1, "Invalid view id."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 242
    :cond_1
    :goto_0
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    aput-boolean v3, v0, v4

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    aput-boolean v3, v0, v5

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    aput-boolean v3, v0, v6

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->getGas(Landroid/view/View;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 227
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->viewLog(Landroid/view/View;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 231
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->plotData(Landroid/view/View;)V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 235
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->viewStatistics(Landroid/view/View;)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0020
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfirmationDialogResponse(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 536
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->removeDialog(I)V

    .line 538
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-nez p2, :cond_1

    aput-boolean v2, v0, v2

    .line 549
    :goto_0
    return-void

    .line 540
    :cond_1
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 547
    const-string v1, "Invalid dialog id."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 549
    :goto_1
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->deleteVehicle()Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v8

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->setContentView(I)V

    .line 78
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0, v9}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 81
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 83
    const v2, 0x7f0b0020

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 84
    const v3, 0x7f0b0023

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 85
    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 86
    const v5, 0x7f0b0025

    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 87
    const v6, 0x7f0b0026

    invoke-virtual {p0, v6}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->listViewsThatNeedVehicle:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->getInstance()Lcom/github/wdkapps/fillup/GasLog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    .line 109
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->getInstance()Lcom/github/wdkapps/fillup/GasLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasLog;->readAllVehicles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    .line 112
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 113
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 114
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->spinnerVehicles:Landroid/widget/Spinner;

    .line 115
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->spinnerVehicles:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MainActivity;->updateVehiclesSpinnerState()V

    .line 120
    aput-boolean v8, v7, v9

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v8, v7, v8

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0, v8}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    .line 124
    :cond_1
    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v1, v0, v1

    .line 459
    const/4 v0, 0x0

    .line 463
    const/4 v2, 0x0

    aput-boolean v4, v1, v2

    packed-switch p1, :pswitch_data_0

    .line 493
    const-string v2, "Invalid dialog id."

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 495
    :goto_0
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-object v0

    .line 465
    :pswitch_0
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v2, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v2}, Lcom/github/wdkapps/fillup/Vehicle;-><init>()V

    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/VehicleDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;ILjava/lang/String;Lcom/github/wdkapps/fillup/Vehicle;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 470
    :pswitch_1
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v2, Lcom/github/wdkapps/fillup/Vehicle;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v2, v3}, Lcom/github/wdkapps/fillup/Vehicle;-><init>(Lcom/github/wdkapps/fillup/Vehicle;)V

    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/VehicleDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;ILjava/lang/String;Lcom/github/wdkapps/fillup/Vehicle;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 475
    :pswitch_2
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 481
    :pswitch_3
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 485
    :pswitch_4
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 489
    :pswitch_5
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/TankNeverFilledDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 147
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 191
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 164
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    .line 165
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v0

    aput-boolean v1, v2, v4

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    aput-boolean v1, v2, v5

    .line 171
    :cond_1
    aput-boolean v1, v2, v6

    move v0, v1

    goto :goto_0

    .line 174
    :pswitch_3
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/MainActivity;->showDialog(I)V

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    .line 177
    :cond_2
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 180
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    sget-object v3, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->URL:Ljava/lang/String;

    const v4, 0x7f0700cd

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 186
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/github/wdkapps/fillup/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b004e
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v1, v0, v1

    .line 654
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 655
    const-string v0, "selectedVehicle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 656
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 643
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 644
    const-string v1, "selectedVehicle"

    iget-object v2, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 645
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onVehicleDialogClosure(ILcom/github/wdkapps/fillup/Vehicle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 506
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/MainActivity;->removeDialog(I)V

    .line 508
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-nez p2, :cond_1

    .line 509
    const v1, 0x7f07007e

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_1
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 524
    const-string v1, "Invalid dialog id."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 526
    :goto_1
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 516
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/github/wdkapps/fillup/MainActivity;->addVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 520
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/github/wdkapps/fillup/MainActivity;->editVehicle(Lcom/github/wdkapps/fillup/Vehicle;)Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public plotData(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 337
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    aput-boolean v4, v0, v4

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/PlotActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    sget-object v2, Lcom/github/wdkapps/fillup/PlotActivity;->VEHICLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected setSelectedVehicle(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 263
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/MainActivity;->updateVehiclesSpinnerState()V

    .line 264
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    if-ge p1, v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/github/wdkapps/fillup/MainActivity;->spinnerVehicles:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 267
    :cond_1
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected setSelectedVehicle(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x8

    aget-object v3, v0, v2

    .line 279
    aput-boolean v5, v3, v1

    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput-boolean v5, v3, v5

    if-ge v1, v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    aput-boolean v5, v3, v4

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x3

    aput-boolean v5, v3, v0

    move v2, v1

    .line 279
    :cond_1
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x4

    aput-boolean v5, v3, v1

    move v1, v0

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/MainActivity;->setSelectedVehicle(I)V

    .line 287
    const/4 v0, 0x5

    aput-boolean v5, v3, v0

    return-void
.end method

.method public viewLog(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 298
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    aput-boolean v4, v0, v4

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/GasLogListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    sget-object v2, Lcom/github/wdkapps/fillup/GasLogListActivity;->VEHICLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public viewStatistics(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MainActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MainActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 353
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/MainActivity;->getSelectedVehicle()Lcom/github/wdkapps/fillup/Vehicle;

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    aput-boolean v4, v0, v4

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/StatisticsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    sget-object v2, Lcom/github/wdkapps/fillup/StatisticsActivity;->VEHICLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/MainActivity;->selectedVehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 359
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
