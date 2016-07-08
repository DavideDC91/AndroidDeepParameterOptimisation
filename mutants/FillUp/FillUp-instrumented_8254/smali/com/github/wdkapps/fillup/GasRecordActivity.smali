.class public Lcom/github/wdkapps/fillup/GasRecordActivity;
.super Landroid/app/Activity;
.source "GasRecordActivity.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;
.implements Lcom/github/wdkapps/fillup/DataEntryModeDialog$Listener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final $VRc:[[Z = null

.field public static final CURRENT_ODOMETER:Ljava/lang/String;

.field protected static final DIALOG_CONFIRM_GALLONS_HIGH_ID:I = 0x2

.field protected static final DIALOG_CONFIRM_ODOMETER_LOW_ID:I = 0x1

.field protected static final DIALOG_SELECT_DATA_ENTRY_MODE:I = 0x3

.field private static final EDIT_DATE_TIME_REQUEST:I = 0x1

.field public static final RECORD:Ljava/lang/String;

.field public static final TANK_SIZE:Ljava/lang/String;


# instance fields
.field private checkBoxFullTank:Landroid/widget/CheckBox;

.field private current_odometer:I

.field private editTextCost:Landroid/widget/EditText;

.field private editTextDate:Landroid/widget/EditText;

.field private editTextGallons:Landroid/widget/EditText;

.field private editTextNotes:Landroid/widget/EditText;

.field private editTextOdometer:Landroid/widget/EditText;

.field private editTextPrice:Landroid/widget/EditText;

.field private mode:Lcom/github/wdkapps/fillup/DataEntryMode;

.field private record:Lcom/github/wdkapps/fillup/GasRecord;

.field private tank_size:F

.field private watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x25

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x10

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasRecordActivity"

    const-wide v2, 0xcfb7c17a0c54912L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".RECORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".CURRENT_ODOMETER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecordActivity;->CURRENT_ODOMETER:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".TANK_SIZE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasRecordActivity;->TANK_SIZE:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getPriceText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCalculatedValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200(Lcom/github/wdkapps/fillup/GasRecordActivity;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setCalculatedText()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCostText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$400(Lcom/github/wdkapps/fillup/GasRecordActivity;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getGallonsText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private createGasRecordWatcher()Lcom/github/wdkapps/fillup/GasRecordWatcher;
    .locals 7

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v6, v0, v1

    .line 769
    new-instance v0, Lcom/github/wdkapps/fillup/GasRecordActivity$2;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/wdkapps/fillup/GasRecordActivity$2;-><init>(Lcom/github/wdkapps/fillup/GasRecordActivity;Lcom/github/wdkapps/fillup/DataEntryMode;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    return-object v0
.end method

.method private getCalculatedValue()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xe

    aget-object v3, v0, v3

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/DataEntryMode;->getValue()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    const/4 v0, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 388
    :goto_1
    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    return v0

    .line 376
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->calculateCost()V

    const/4 v0, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 379
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->calculatePrice()V

    const/4 v0, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->calculateGallons()V

    const/4 v0, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getCostText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xb

    aget-object v3, v0, v3

    .line 319
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 321
    :try_start_0
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setCost(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 326
    :goto_0
    invoke-static {}, Lcom/github/wdkapps/fillup/Settings;->isCostRequired()Z

    move-result v2

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    if-nez v2, :cond_1

    .line 327
    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v1

    .line 330
    :cond_1
    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    aput-boolean v1, v3, v1

    move v0, v2

    goto :goto_0
.end method

.method private getGallonsText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xd

    aget-object v3, v0, v3

    .line 356
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :try_start_0
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setGallons(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 362
    :goto_0
    const/4 v2, 0x2

    aput-boolean v1, v3, v2

    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    aput-boolean v1, v3, v1

    move v0, v2

    goto :goto_0
.end method

.method private getOdometerText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xa

    aget-object v3, v0, v3

    .line 303
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    :try_start_0
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setOdometer(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 309
    :goto_0
    const/4 v2, 0x2

    aput-boolean v1, v3, v2

    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    aput-boolean v1, v3, v1

    move v0, v2

    goto :goto_0
.end method

.method private getPriceText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0xc

    aget-object v3, v0, v3

    .line 340
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :try_start_0
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v4, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setPrice(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 346
    :goto_0
    const/4 v2, 0x2

    aput-boolean v1, v3, v2

    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    aput-boolean v1, v3, v1

    move v0, v2

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v1, v0, v1

    .line 794
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    aput-boolean v3, v1, v4

    if-eqz v0, :cond_1

    .line 796
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    aput-boolean v3, v1, v3

    .line 798
    :cond_1
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method

.method private loadForm()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 120
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    aput-boolean v7, v1, v8

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->destroy()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    aput-boolean v7, v1, v7

    .line 126
    :cond_1
    new-instance v0, Lcom/github/wdkapps/fillup/DataEntryMode;

    const-string v2, "data_entry_mode"

    invoke-direct {v0, v2}, Lcom/github/wdkapps/fillup/DataEntryMode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    .line 127
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/DataEntryMode;->getValue()I

    move-result v0

    aput-boolean v7, v1, v3

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextDate:Landroid/widget/EditText;

    .line 141
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    .line 142
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    .line 143
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    .line 144
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->checkBoxFullTank:Landroid/widget/CheckBox;

    .line 146
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextNotes:Landroid/widget/EditText;

    .line 149
    new-instance v2, Lcom/github/wdkapps/fillup/Units;

    const-string v0, "units"

    invoke-direct {v2, v0}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 150
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getDistanceLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    const v3, 0x7f070055

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v3, 0x7f070052

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/wdkapps/fillup/CurrencyManager;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    const v3, 0x7f070053

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeRatioLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 165
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeRatioLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextNotes:Landroid/widget/EditText;

    new-instance v2, Lcom/github/wdkapps/fillup/GasRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/github/wdkapps/fillup/GasRecordActivity$1;-><init>(Lcom/github/wdkapps/fillup/GasRecordActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setData()V

    .line 184
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->createGasRecordWatcher()Lcom/github/wdkapps/fillup/GasRecordWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->watcher:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    .line 185
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    const/4 v0, 0x6

    aput-boolean v7, v1, v0

    return-void

    .line 129
    :pswitch_0
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    goto/16 :goto_0

    .line 132
    :pswitch_1
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setContentView(I)V

    const/4 v0, 0x4

    aput-boolean v7, v1, v0

    goto/16 :goto_0

    .line 135
    :pswitch_2
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setContentView(I)V

    const/4 v0, 0x5

    aput-boolean v7, v1, v0

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCalculatedText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 282
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->getValue()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 294
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setCostText()V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setPriceText()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setGallonsText()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setCalculationError()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 397
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->getValue()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 414
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 399
    :pswitch_0
    const v1, 0x7f070094

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 404
    :pswitch_1
    const v1, 0x7f070093

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 409
    :pswitch_2
    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setCostText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 252
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getCost()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    const/4 v2, 0x0

    aput-boolean v6, v0, v2

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v6, v0, v6

    .line 259
    :goto_0
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getCostString()Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private setGallonsText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 267
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v3, v0, v3

    .line 274
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getGallonsString()Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private setOdometerText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 221
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v3, v0, v3

    .line 228
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometerString()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private setPriceText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 236
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    const/4 v2, 0x0

    aput-boolean v6, v0, v2

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v6, v0, v6

    .line 244
    :goto_0
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecord;->getPriceString()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clickedCancel(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 547
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecordActivity;->returnResult(I)V

    .line 548
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public clickedEditDate(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v0, v0, v1

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/DateTimeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    sget-object v2, Lcom/github/wdkapps/fillup/DateTimeActivity;->MILLISECONDS:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasRecord;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v1, v6}, Lcom/github/wdkapps/fillup/GasRecordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 614
    const/4 v1, 0x0

    aput-boolean v6, v0, v1

    return-void
.end method

.method public clickedMode(Landroid/view/View;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 576
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->hideSoftKeyboard()V

    .line 577
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->showDialog(I)V

    .line 578
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public clickedOk(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 557
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->hideSoftKeyboard()V

    .line 560
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getData()Z

    move-result v1

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    aput-boolean v3, v0, v3

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecordActivity;->confirmData(I)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 566
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->returnResult(I)V

    .line 567
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected confirmData(I)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x12

    aget-object v0, v0, v3

    .line 522
    aput-boolean v2, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 537
    :cond_1
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    move v0, v2

    :goto_0
    return v0

    .line 525
    :pswitch_0
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasRecord;->getOdometer()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->current_odometer:I

    aput-boolean v2, v0, v2

    if-ge v3, v4, :cond_2

    .line 526
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecordActivity;->showDialog(I)V

    .line 527
    aput-boolean v2, v0, v5

    move v0, v1

    goto :goto_0

    .line 531
    :cond_2
    :pswitch_1
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasRecord;->getGallons()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->tank_size:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x3

    aput-boolean v2, v0, v4

    if-lez v3, :cond_1

    .line 532
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/GasRecordActivity;->showDialog(I)V

    .line 533
    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    move v0, v1

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getData()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x11

    aget-object v0, v0, v3

    .line 446
    new-instance v3, Lcom/github/wdkapps/fillup/Units;

    const-string v4, "units"

    invoke-direct {v3, v4}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getOdometerText()Z

    move-result v4

    aput-boolean v2, v0, v1

    if-nez v4, :cond_1

    .line 457
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    const v4, 0x7f07008a

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextOdometer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 459
    aput-boolean v2, v0, v2

    move v0, v1

    .line 510
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculatePrice()Z

    move-result v4

    const/4 v5, 0x2

    aput-boolean v2, v0, v5

    if-nez v4, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getPriceText()Z

    move-result v4

    const/4 v5, 0x3

    aput-boolean v2, v0, v5

    if-nez v4, :cond_2

    .line 465
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    const v4, 0x7f070092

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextPrice:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 467
    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    move v0, v1

    goto :goto_0

    .line 472
    :cond_2
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateCost()Z

    move-result v4

    const/4 v5, 0x5

    aput-boolean v2, v0, v5

    if-nez v4, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCostText()Z

    move-result v4

    const/4 v5, 0x6

    aput-boolean v2, v0, v5

    if-nez v4, :cond_3

    .line 474
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    const v4, 0x7f07008f

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextCost:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 476
    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    move v0, v1

    goto :goto_0

    .line 481
    :cond_3
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v4}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateGallons()Z

    move-result v4

    const/16 v5, 0x8

    aput-boolean v2, v0, v5

    if-nez v4, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getGallonsText()Z

    move-result v4

    const/16 v5, 0x9

    aput-boolean v2, v0, v5

    if-nez v4, :cond_4

    .line 483
    const v4, 0x7f07008b

    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 484
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 485
    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextGallons:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 487
    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    move v0, v1

    goto/16 :goto_0

    .line 492
    :cond_4
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCalculatedValue()Z

    move-result v3

    const/16 v4, 0xb

    aput-boolean v2, v0, v4

    if-nez v3, :cond_5

    .line 493
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setCalculationError()V

    .line 494
    const/16 v3, 0xc

    aput-boolean v2, v0, v3

    move v0, v1

    goto/16 :goto_0

    .line 498
    :cond_5
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->checkBoxFullTank:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/Boolean;)V

    .line 501
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0xd

    aput-boolean v2, v0, v4

    if-nez v3, :cond_6

    .line 502
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setHiddenCalculation(Ljava/lang/Boolean;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 506
    :cond_6
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextNotes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v3, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setNotes(Ljava/lang/String;)V

    .line 510
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    move v0, v2

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 719
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    const/4 v1, 0x0

    aput-boolean v6, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 734
    const-string v1, "Invalid Request Code."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 736
    :cond_1
    :goto_0
    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    return-void

    .line 723
    :pswitch_0
    const/4 v1, -0x1

    aput-boolean v6, v0, v6

    if-ne p2, v1, :cond_1

    .line 724
    sget-object v1, Lcom/github/wdkapps/fillup/DateTimeActivity;->MILLISECONDS:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 725
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    const/4 v4, 0x2

    aput-boolean v6, v0, v4

    if-lez v1, :cond_2

    .line 726
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 727
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v2, v1}, Lcom/github/wdkapps/fillup/GasRecord;->setDate(Ljava/util/Date;)V

    .line 728
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextDate:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/GasRecord;->getDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    :cond_2
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfirmationDialogResponse(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 625
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->removeDialog(I)V

    .line 628
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->confirmData(I)Z

    move-result v1

    aput-boolean v2, v0, v2

    if-eqz v1, :cond_1

    .line 629
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->returnResult(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 631
    :cond_1
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 98
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    .line 99
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->CURRENT_ODOMETER:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->current_odometer:I

    .line 100
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->TANK_SIZE:Ljava/lang/String;

    const v3, 0x4cbebc20    # 1.0E8f

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->tank_size:F

    aput-boolean v4, v1, v4

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->loadForm()V

    .line 112
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-void

    .line 105
    :cond_1
    const-string v0, "record"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    .line 106
    const-string v0, "current_odometer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->current_odometer:I

    .line 107
    const-string v0, "tank_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->tank_size:F

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    .line 668
    const/4 v0, 0x0

    .line 673
    new-instance v2, Lcom/github/wdkapps/fillup/Units;

    const-string v3, "units"

    invoke-direct {v2, v3}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 675
    aput-boolean v8, v1, v9

    packed-switch p1, :pswitch_data_0

    .line 699
    :goto_0
    const/4 v2, 0x4

    aput-boolean v8, v1, v2

    return-object v0

    .line 677
    :pswitch_0
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 679
    iget v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->current_odometer:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 680
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v8, v1, v8

    goto :goto_0

    .line 685
    :pswitch_1
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 687
    const v3, 0x7f070023

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.1f %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->tank_size:F

    .line 689
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabelLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    .line 688
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 690
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v8, v1, v10

    goto :goto_0

    .line 695
    :pswitch_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-static {p0, p0, v4, v0}, Lcom/github/wdkapps/fillup/DataEntryModeDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/DataEntryModeDialog$Listener;ILcom/github/wdkapps/fillup/DataEntryMode;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v8, v1, v4

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 212
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return v2
.end method

.method public onDataEntryModeDialogResponse(ILcom/github/wdkapps/fillup/DataEntryModeDialog$Result;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 588
    sget-object v1, Lcom/github/wdkapps/fillup/DataEntryModeDialog$Result;->RESULT_CANCEL:Lcom/github/wdkapps/fillup/DataEntryModeDialog$Result;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-ne p2, v1, :cond_1

    aput-boolean v3, v0, v3

    .line 601
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getOdometerText()Z

    .line 592
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateCost()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCostText()Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculatePrice()Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getPriceText()Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->mode:Lcom/github/wdkapps/fillup/DataEntryMode;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/DataEntryMode;->isCalculateGallons()Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getGallonsText()Z

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->checkBoxFullTank:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setFullTank(Ljava/lang/Boolean;)V

    .line 596
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/GasRecord;->setNotes(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->loadForm()V

    .line 601
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 745
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    if-nez p2, :cond_1

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    aput-boolean v3, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 760
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void

    .line 749
    :pswitch_1
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getPriceText()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setPriceText()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 752
    :pswitch_2
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getCostText()Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setCostText()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 755
    :pswitch_3
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->getGallonsText()Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setGallonsText()V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x7f0b0015
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    const-string v1, "record"

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 199
    const-string v1, "current_odometer"

    iget v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->current_odometer:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v1, "tank_size"

    iget v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->tank_size:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 201
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected returnResult(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 640
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-ne p1, v2, :cond_1

    .line 644
    sget-object v2, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    aput-boolean v4, v0, v4

    .line 647
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 648
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->finish()V

    .line 649
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method

.method protected setData()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 422
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextDate:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/GasRecord;->getDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setOdometerText()V

    .line 426
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setPriceText()V

    .line 428
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setCostText()V

    .line 430
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasRecordActivity;->setGallonsText()V

    .line 432
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->checkBoxFullTank:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/GasRecord;->isFullTank()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 434
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->editTextNotes:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasRecordActivity;->record:Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/GasRecord;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
