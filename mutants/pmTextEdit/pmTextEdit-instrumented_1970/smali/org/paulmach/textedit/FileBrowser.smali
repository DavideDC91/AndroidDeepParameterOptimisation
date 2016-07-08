.class public Lorg/paulmach/textedit/FileBrowser;
.super Landroid/app/Activity;
.source "FileBrowser.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final MENU_MKDIR:I = 0x1

.field private static final serialVersionUID:J = -0x49341149ae9a30d1L


# instance fields
.field private final DIALOG_COULDNT_DELETE:I

.field private final DIALOG_COULDNT_DELETEDIR:I

.field private final DIALOG_COULDNT_MKDIR:I

.field private final DIALOG_COULDNT_RENAME:I

.field private final DIALOG_FILE_OPTIONS:I

.field private final DIALOG_MKDIR:I

.field private final DIALOG_RENAME:I

.field private final DIALOG_SHOULD_DELETE:I

.field private dialog_file:Ljava/io/File;

.field protected fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

.field protected fileBrowserList:Landroid/widget/ListView;

.field protected fileBrowserNoFiles:Landroid/widget/TextView;

.field protected fileBrowserPath:Landroid/widget/TextView;

.field protected filePath:Ljava/lang/CharSequence;

.field protected mkDIRView:Landroid/view/View;

.field protected textEntryView:Landroid/view/View;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xf

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v7, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v1, v1, [Z

    aput-object v1, v0, v7

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

    const-string v1, "org/paulmach/textedit/FileBrowser"

    const-wide v2, -0x50fd7d5d867a821dL    # -3.049049355331159E-82

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v3, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_FILE_OPTIONS:I

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_RENAME:I

    .line 35
    const/4 v1, 0x3

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_MKDIR:I

    .line 36
    const/4 v1, 0x4

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_SHOULD_DELETE:I

    .line 37
    const/4 v1, 0x5

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_COULDNT_DELETE:I

    .line 38
    const/4 v1, 0x6

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_COULDNT_RENAME:I

    .line 39
    const/4 v1, 0x7

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_COULDNT_MKDIR:I

    .line 40
    const/16 v1, 0x8

    iput v1, p0, Lorg/paulmach/textedit/FileBrowser;->DIALOG_COULDNT_DELETEDIR:I

    .line 44
    iput-object v4, p0, Lorg/paulmach/textedit/FileBrowser;->textEntryView:Landroid/view/View;

    .line 45
    iput-object v4, p0, Lorg/paulmach/textedit/FileBrowser;->mkDIRView:Landroid/view/View;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    aput-boolean v3, v0, v2

    return-void
.end method

.method static synthetic access$000(Lorg/paulmach/textedit/FileBrowser;Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 29
    invoke-direct {p0, p1}, Lorg/paulmach/textedit/FileBrowser;->updateFileBrowserList(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lorg/paulmach/textedit/FileBrowser;)Ljava/io/File;
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 29
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lorg/paulmach/textedit/FileBrowser;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 29
    iput-object p1, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$200(Lorg/paulmach/textedit/FileBrowser;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/paulmach/textedit/FileBrowser;->updateFileBrowserList(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateFileBrowserList(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 378
    invoke-direct {p0, p1, v2}, Lorg/paulmach/textedit/FileBrowser;->updateFileBrowserList(Ljava/lang/String;Z)V

    .line 379
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateFileBrowserList(Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/16 v4, 0x9

    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v9, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v5, v0, v4

    .line 383
    aput-boolean v9, v5, v3

    if-nez p1, :cond_1

    .line 384
    const-string p1, ""

    aput-boolean v9, v5, v9

    .line 386
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v9, v5, v2

    if-nez v1, :cond_2

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v9, v5, v1

    .line 392
    :cond_2
    const/4 v1, 0x4

    aput-boolean v9, v5, v1

    if-nez v0, :cond_3

    .line 393
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v9, v5, v1

    .line 396
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 397
    const/4 v2, 0x6

    aput-boolean v9, v5, v2

    if-eqz v1, :cond_5

    .line 398
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x7

    aput-boolean v9, v5, v2

    .line 402
    :goto_0
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-virtual {v2}, Lorg/paulmach/textedit/FileViewArrayAdapter;->clear()V

    .line 404
    array-length v6, v1

    .line 406
    aput-boolean v9, v5, v4

    move v2, v3

    move v4, v3

    :goto_1
    const/16 v7, 0xa

    aput-boolean v9, v5, v7

    if-ge v4, v6, :cond_6

    .line 408
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const/16 v8, 0xb

    aput-boolean v9, v5, v8

    if-eqz v7, :cond_4

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v7

    const/16 v8, 0xc

    aput-boolean v9, v5, v8

    if-nez v7, :cond_4

    .line 410
    iget-object v7, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/paulmach/textedit/FileViewArrayAdapter;->add(Ljava/lang/Object;)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0xd

    aput-boolean v9, v5, v7

    .line 406
    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0xe

    aput-boolean v9, v5, v7

    goto :goto_1

    .line 400
    :cond_5
    new-array v1, v3, [Ljava/io/File;

    aput-boolean v9, v5, v10

    goto :goto_0

    .line 415
    :cond_6
    const/16 v4, 0xf

    aput-boolean v9, v5, v4

    move v4, v3

    :goto_2
    const/16 v7, 0x10

    aput-boolean v9, v5, v7

    if-ge v4, v6, :cond_8

    .line 417
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const/16 v8, 0x11

    aput-boolean v9, v5, v8

    if-nez v7, :cond_7

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v7

    const/16 v8, 0x12

    aput-boolean v9, v5, v8

    if-nez v7, :cond_7

    .line 419
    iget-object v7, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/paulmach/textedit/FileViewArrayAdapter;->add(Ljava/lang/Object;)V

    .line 420
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x13

    aput-boolean v9, v5, v7

    .line 415
    :cond_7
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x14

    aput-boolean v9, v5, v7

    goto :goto_2

    .line 424
    :cond_8
    const/16 v1, 0x15

    aput-boolean v9, v5, v1

    if-nez v2, :cond_a

    .line 425
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserNoFiles:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x16

    aput-boolean v9, v5, v1

    .line 430
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x18

    aput-boolean v9, v5, v2

    if-eqz v1, :cond_b

    .line 432
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserPath:Landroid/widget/TextView;

    const-string v1, "Location: /"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    const-string v0, "/"

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    const/16 v0, 0x19

    aput-boolean v9, v5, v0

    .line 439
    :goto_4
    const/16 v0, 0x1b

    aput-boolean v9, v5, v0

    if-eqz p2, :cond_9

    .line 440
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    const/16 v0, 0x1c

    aput-boolean v9, v5, v0

    .line 442
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/paulmach/textedit/FileBrowser;->setResult(ILandroid/content/Intent;)V

    .line 443
    const/16 v0, 0x1d

    aput-boolean v9, v5, v0

    return-void

    .line 427
    :cond_a
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserNoFiles:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x17

    aput-boolean v9, v5, v1

    goto :goto_3

    .line 435
    :cond_b
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserPath:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    const/16 v0, 0x1a

    aput-boolean v9, v5, v0

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v4

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v4}, Lorg/paulmach/textedit/FileBrowser;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->setContentView(I)V

    .line 69
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 70
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 72
    new-instance v3, Lorg/paulmach/textedit/FileBrowser$1;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$1;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lorg/paulmach/textedit/FileBrowser$2;

    invoke-direct {v0, p0}, Lorg/paulmach/textedit/FileBrowser$2;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserList:Landroid/widget/ListView;

    .line 91
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserPath:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserNoFiles:Landroid/widget/TextView;

    .line 96
    new-instance v0, Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-direct {v0, p0}, Lorg/paulmach/textedit/FileViewArrayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    .line 97
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/paulmach/textedit/FileViewArrayAdapter;->setMode(I)V

    .line 98
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserList:Landroid/widget/ListView;

    new-instance v1, Lorg/paulmach/textedit/FileBrowser$3;

    invoke-direct {v1, p0}, Lorg/paulmach/textedit/FileBrowser$3;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 110
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->fileBrowserList:Landroid/widget/ListView;

    new-instance v1, Lorg/paulmach/textedit/FileBrowser$4;

    invoke-direct {v1, p0}, Lorg/paulmach/textedit/FileBrowser$4;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    invoke-virtual {p0}, Lorg/paulmach/textedit/FileBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/paulmach/textedit/FileBrowser;->updateFileBrowserList(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    aput-boolean v4, v2, v0

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    .prologue
    const v8, 0x108009b

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v7

    .line 166
    aput-boolean v4, v1, v5

    packed-switch p1, :pswitch_data_0

    .line 170
    new-array v0, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string v3, "Delete File"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/String;

    const-string v3, "Rename File"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v4

    .line 172
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$5;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$5;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 174
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v1, v4

    .line 310
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 189
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->textEntryView:Landroid/view/View;

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Rename File"

    .line 194
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->textEntryView:Landroid/view/View;

    .line 195
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Rename"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$7;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$7;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 196
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$6;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$6;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 209
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v1, v6

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->mkDIRView:Landroid/view/View;

    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Create Directory"

    .line 224
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->mkDIRView:Landroid/view/View;

    .line 225
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Create"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$9;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$9;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 226
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$8;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$8;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-boolean v4, v1, v7

    goto :goto_0

    .line 247
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirm deletion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    .line 248
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Yes"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$11;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$11;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 249
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "No"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$10;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$10;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 269
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Error"

    .line 270
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Unable to delete file."

    .line 271
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Continue"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$12;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$12;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 272
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 280
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Error"

    .line 281
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Unable to delete directory.\n\n- A directory must be empty to be deleted"

    .line 282
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Continue"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$13;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$13;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 283
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 291
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Error"

    .line 292
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Unable to rename file."

    .line 293
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Continue"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$14;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$14;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 294
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 302
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Error"

    .line 303
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Unable to create directory."

    .line 304
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Continue"

    new-instance v3, Lorg/paulmach/textedit/FileBrowser$15;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/FileBrowser$15;-><init>(Lorg/paulmach/textedit/FileBrowser;)V

    .line 305
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 322
    const-string v1, "Create Directory"

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x30

    const/16 v3, 0x63

    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 324
    aput-boolean v5, v0, v4

    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 335
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    :goto_0
    return v3

    .line 331
    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/FileBrowser;->showDialog(I)V

    .line 332
    aput-boolean v3, v0, v3

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    .prologue
    const v2, 0x7f060002

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 139
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 145
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirm deletion of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    aput-boolean v4, v1, v3

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 150
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser;->mkDIRView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 156
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 363
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    const-string v2, "FB_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 364
    const-string v1, "FilePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    .line 365
    new-instance v1, Ljava/io/File;

    const-string v2, "dialog_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    .line 369
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/paulmach/textedit/FileBrowser;->updateFileBrowserList(Ljava/lang/String;Z)V

    .line 371
    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 345
    const-string v1, "FB_mode"

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->fileAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    iget v2, v2, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v1, "FilePath"

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 348
    const-string v1, "dialog_file"

    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser;->dialog_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 352
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 350
    :cond_1
    const-string v1, "dialog_file"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
