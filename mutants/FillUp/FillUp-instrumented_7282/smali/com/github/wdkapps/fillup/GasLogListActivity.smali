.class public Lcom/github/wdkapps/fillup/GasLogListActivity;
.super Landroid/app/Activity;
.source "GasLogListActivity.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;
.implements Lcom/github/wdkapps/fillup/StorageSelectionDialog$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final CHOOSE_IMPORT_FILE:I = 0x3

.field protected static final DIALOG_CONFIRM_DELETE_ID:I = 0x1

.field protected static final DIALOG_CONFIRM_EXPORT_OVERWRITE_ID:I = 0x3

.field protected static final DIALOG_CONFIRM_EXPORT_SHARE_ID:I = 0x7

.field protected static final DIALOG_SELECT_STORAGE_LOCATION_ID:I = 0x4

.field protected static final DIALOG_SHOW_CALCULATION_ID:I = 0x2

.field protected static final DIALOG_SHOW_ESTIMATE_ID:I = 0x5

.field protected static final DIALOG_TANK_NEVER_FILLED_ID:I = 0x6

.field private static final EDIT_ROW_REQUEST:I = 0x1

.field private static final GET_GAS_REQUEST:I = 0x2

.field public static final VEHICLE:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

.field private gaslog:Lcom/github/wdkapps/fillup/GasLog;

.field private listView:Landroid/widget/ListView;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/wdkapps/fillup/GasRecord;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRow:I

.field private vehicle:Lcom/github/wdkapps/fillup/Vehicle;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x1c

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v7

    new-array v1, v7, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xa

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasLogListActivity"

    const-wide v2, -0x421fd0e171c27281L    # -1.1775453452619544E-10

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/GasLogListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".VEHICLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasLogListActivity;->VEHICLE:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private showCloudStorageChooser()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 346
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void

    .line 351
    :catch_0
    move-exception v1

    .line 352
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    goto :goto_0
.end method

.method private showInternalStorageChooser()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 362
    invoke-static {}, Lcom/github/wdkapps/fillup/ExternalStorage;->isReadable()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v5, v0, v2

    if-eqz v1, :cond_1

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 365
    const-string v3, "download"

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 366
    sget-object v4, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    sget-object v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;->PATH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    sget-object v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;->EXT:Ljava/lang/String;

    const-string v3, ".csv"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v1, v6}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    aput-boolean v5, v0, v5

    .line 374
    :goto_0
    aput-boolean v5, v0, v6

    return-void

    .line 371
    :cond_1
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected deleteRow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v1, v0, v1

    .line 507
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 510
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v2, v0}, Lcom/github/wdkapps/fillup/GasLog;->deleteRecord(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v0}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 520
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    aput-boolean v3, v1, v3

    .line 525
    :goto_0
    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    return-void

    .line 522
    :cond_1
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method protected editRow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v1, v0, v1

    .line 477
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 479
    sget-object v3, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 480
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->TANK_SIZE:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v2, v4}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 482
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    return-void
.end method

.method protected exportData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 382
    invoke-static {}, Lcom/github/wdkapps/fillup/ExternalStorage;->isWritable()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 383
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getExportFile()Ljava/io/File;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2, v3, v1}, Lcom/github/wdkapps/fillup/GasLog;->exportData(Lcom/github/wdkapps/fillup/Vehicle;Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_2

    .line 390
    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 396
    :goto_1
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 394
    :cond_2
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_1
.end method

.method protected getExportFile()Ljava/io/File;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 333
    invoke-static {}, Lcom/github/wdkapps/fillup/ExternalStorage;->getPublicDownloadDirectory()Ljava/io/File;

    move-result-object v1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Vehicle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".csv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object v3
.end method

.method protected getGas(Landroid/view/View;)V
    .locals 5

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/GasRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    new-instance v2, Lcom/github/wdkapps/fillup/GasRecord;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-direct {v2, v3}, Lcom/github/wdkapps/fillup/GasRecord;-><init>(Lcom/github/wdkapps/fillup/Vehicle;)V

    .line 408
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v4, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v3, v4}, Lcom/github/wdkapps/fillup/GasLog;->readCurrentOdometer(Lcom/github/wdkapps/fillup/Vehicle;)I

    move-result v3

    .line 409
    sget-object v4, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    sget-object v2, Lcom/github/wdkapps/fillup/GasRecordActivity;->CURRENT_ODOMETER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    sget-object v2, Lcom/github/wdkapps/fillup/GasRecordActivity;->TANK_SIZE:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v3}, Lcom/github/wdkapps/fillup/Vehicle;->getTankSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected importData(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const v5, 0x7f070083

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2, v3, v1}, Lcom/github/wdkapps/fillup/GasLog;->importData(Lcom/github/wdkapps/fillup/Vehicle;Ljava/io/InputStream;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 323
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v1

    .line 310
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 320
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v2, v3}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    .line 322
    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const v4, 0x7f07007e

    const/4 v3, -0x1

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v1, v0, v1

    .line 546
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 548
    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 578
    const-string v0, "Invalid request code."

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0xa

    aput-boolean v2, v1, v0

    .line 580
    :goto_0
    const/16 v0, 0xb

    aput-boolean v2, v1, v0

    return-void

    .line 550
    :pswitch_0
    aput-boolean v2, v1, v2

    if-ne p2, v3, :cond_1

    .line 551
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 552
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->onEditRowResult(Lcom/github/wdkapps/fillup/GasRecord;)V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 559
    :pswitch_1
    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    if-ne p2, v3, :cond_2

    .line 560
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordActivity;->RECORD:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 561
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->onGetGasResult(Lcom/github/wdkapps/fillup/GasRecord;)V

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 568
    :pswitch_2
    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    if-ne p2, v3, :cond_3

    .line 569
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 570
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->importData(Landroid/net/Uri;)V

    const/16 v0, 0x8

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x9

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfirmationDialogResponse(IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 659
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->removeDialog(I)V

    .line 661
    const/4 v1, 0x0

    aput-boolean v5, v0, v1

    if-nez p2, :cond_1

    aput-boolean v5, v0, v5

    .line 684
    :goto_0
    return-void

    .line 663
    :cond_1
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    sparse-switch p1, :sswitch_data_0

    .line 681
    const-string v1, "Invalid dialog id."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 684
    :goto_1
    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 665
    :sswitch_0
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->deleteRow()V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 668
    :sswitch_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->exportData()V

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 671
    :sswitch_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getExportFile()Ljava/io/File;

    move-result-object v1

    .line 672
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 675
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const/high16 v1, 0x10800000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x7

    aget-object v2, v0, v2

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 253
    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v4

    iput v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 258
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->editRow()V

    .line 259
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    .line 263
    aput-boolean v1, v2, v6

    move v0, v1

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v4, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-static {v0, v3, v4}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->init(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)V

    .line 267
    invoke-virtual {p0, v7}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    .line 268
    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 271
    :pswitch_3
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 272
    invoke-static {v0}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->init(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 273
    invoke-virtual {p0, v6}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    .line 274
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 277
    :pswitch_4
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->toggleHiddenCalculation(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 278
    aput-boolean v1, v2, v7

    move v0, v1

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x7f0b0055
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    sget-object v2, Lcom/github/wdkapps/fillup/GasLogListActivity;->VEHICLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/Vehicle;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    .line 99
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->getInstance()Lcom/github/wdkapps/fillup/GasLog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    .line 100
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v0, v2}, Lcom/github/wdkapps/fillup/GasLog;->readAllRecords(Lcom/github/wdkapps/fillup/Vehicle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    .line 101
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    .line 102
    new-instance v0, Lcom/github/wdkapps/fillup/GasLogListAdapter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/github/wdkapps/fillup/GasLogListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    .line 105
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 110
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    aput-boolean v3, v1, v4

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    aput-boolean v3, v1, v3

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->updateColumnHeaderLabels()V

    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 123
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    const v7, 0x7f0b0059

    const/4 v6, 0x5

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 203
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0a0006

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 206
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 207
    iget-wide v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v2

    iput v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    .line 210
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/GasRecord;

    .line 213
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v4, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-static {v2, v3, v4}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->isDisplayable(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    if-nez v2, :cond_1

    .line 214
    const v2, 0x7f0b0057

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    aput-boolean v5, v1, v5

    .line 218
    :cond_1
    invoke-static {v0}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->isDisplayable(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v2

    const/4 v3, 0x2

    aput-boolean v5, v1, v3

    if-nez v2, :cond_2

    .line 219
    const v2, 0x7f0b0058

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 223
    :cond_2
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->hasCalculation()Z

    move-result v2

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    if-eqz v2, :cond_3

    .line 224
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 225
    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    aput-boolean v5, v1, v6

    .line 230
    :goto_0
    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    return-void

    .line 227
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->removeItem(I)V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v1, v0, v1

    .line 607
    aput-boolean v5, v1, v6

    packed-switch p1, :pswitch_data_0

    .line 645
    const/4 v0, 0x0

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 648
    :goto_0
    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    return-object v0

    .line 609
    :pswitch_0
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v5, v1, v5

    goto :goto_0

    .line 615
    :pswitch_1
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 619
    :pswitch_2
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 623
    :pswitch_3
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getExportFile()Ljava/io/File;

    move-result-object v0

    .line 624
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 626
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {p0, p0, p1, v2, v0}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v5, v1, v7

    goto :goto_0

    .line 631
    :pswitch_4
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    const v2, 0x7f07001f

    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-static {p0, p0, p1, v0, v2}, Lcom/github/wdkapps/fillup/ConfirmationDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/ConfirmationDialog$Listener;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 637
    :pswitch_5
    invoke-static {p0, p0, v7}, Lcom/github/wdkapps/fillup/StorageSelectionDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/StorageSelectionDialog$Listener;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 641
    :pswitch_6
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/TankNeverFilledDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 133
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return v3
.end method

.method protected onEditRowResult(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 490
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v1, p1}, Lcom/github/wdkapps/fillup/GasLog;->updateRecord(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    iget v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 493
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    aput-boolean v3, v0, v3

    .line 497
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 495
    :cond_1
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onGetGasResult(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 424
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2, p1}, Lcom/github/wdkapps/fillup/GasLog;->createRecord(Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 425
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 469
    :goto_0
    return-void

    .line 430
    :cond_1
    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->hasFullTank(Ljava/util/List;)Z

    move-result v1

    .line 436
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v2}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    .line 442
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    .line 445
    iget-object v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/github/wdkapps/fillup/GasRecordList;->find(Ljava/util/List;Lcom/github/wdkapps/fillup/GasRecord;)I

    move-result v2

    .line 448
    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 451
    aput-boolean v4, v0, v5

    if-nez v1, :cond_2

    .line 452
    invoke-virtual {p0, v7}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 457
    :cond_2
    invoke-static {p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->isDisplayable(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v1

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_3

    .line 458
    invoke-static {p1}, Lcom/github/wdkapps/fillup/MileageCalculationDialog;->init(Lcom/github/wdkapps/fillup/GasRecord;)V

    .line 459
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 464
    :cond_3
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v1, v3, v2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->isDisplayable(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)Z

    move-result v1

    aput-boolean v4, v0, v7

    if-eqz v1, :cond_4

    .line 465
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v1, v3, v2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->init(Lcom/github/wdkapps/fillup/Vehicle;Ljava/util/List;I)V

    .line 466
    invoke-virtual {p0, v6}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 469
    :cond_4
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v4

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 163
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getGas(Landroid/view/View;)V

    .line 164
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    .line 168
    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v1, v2, v5

    if-eqz v0, :cond_1

    .line 172
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v1, v2, v4

    .line 181
    :goto_1
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getExportFile()Ljava/io/File;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0, v5}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showDialog(I)V

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->exportData()V

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 184
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/github/wdkapps/fillup/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b004b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v5

    .line 147
    const v0, 0x7f0b004d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 148
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 149
    aput-boolean v1, v3, v5

    return v1

    .line 148
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v0, v0, v1

    .line 768
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 769
    const-string v1, "selectedRow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    .line 770
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 757
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 758
    const-string v1, "selectedRow"

    iget v2, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->selectedRow:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 735
    const-string v1, "units"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->updateColumnHeaderLabels()V

    .line 741
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->records:Ljava/util/List;

    invoke-static {v1}, Lcom/github/wdkapps/fillup/GasRecordList;->calculateMileage(Ljava/util/List;)V

    aput-boolean v3, v0, v3

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    .line 746
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onStorageSelectionDialogResponse(ILcom/github/wdkapps/fillup/StorageSelectionDialog$Result;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 694
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->removeDialog(I)V

    .line 696
    sget-object v1, Lcom/github/wdkapps/fillup/StorageSelectionDialog$Result;->RESULT_CANCEL:Lcom/github/wdkapps/fillup/StorageSelectionDialog$Result;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-ne p2, v1, :cond_1

    .line 697
    const v1, 0x7f07007e

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 713
    :goto_0
    return-void

    .line 701
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 710
    const-string v1, "Invalid dialog id."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 713
    :goto_1
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 703
    :pswitch_0
    const-string v1, "cloud"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showCloudStorageChooser()V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 706
    :cond_2
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->showInternalStorageChooser()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected toggleHiddenCalculation(Lcom/github/wdkapps/fillup/GasRecord;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x8

    aget-object v3, v0, v3

    .line 291
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/GasRecord;->isCalculationHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 292
    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/wdkapps/fillup/GasRecord;->setHiddenCalculation(Ljava/lang/Boolean;)V

    .line 293
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->gaslog:Lcom/github/wdkapps/fillup/GasLog;

    invoke-virtual {v0, p1}, Lcom/github/wdkapps/fillup/GasLog;->updateRecord(Lcom/github/wdkapps/fillup/GasRecord;)Z

    move-result v0

    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/github/wdkapps/fillup/GasLogListActivity;->adapter:Lcom/github/wdkapps/fillup/GasLogListAdapter;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/GasLogListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    .line 298
    :goto_1
    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    return-void

    .line 292
    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 296
    :cond_2
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    goto :goto_1
.end method

.method protected updateColumnHeaderLabels()V
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogListActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x17

    aget-object v1, v0, v1

    .line 721
    new-instance v2, Lcom/github/wdkapps/fillup/Units;

    const-string v0, "units"

    invoke-direct {v2, v0}, Lcom/github/wdkapps/fillup/Units;-><init>(Ljava/lang/String;)V

    .line 722
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 723
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getLiquidVolumeLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/GasLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 725
    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/Units;->getMileageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method
