.class public Lorg/paulmach/textedit/pmTextEdit;
.super Landroid/app/Activity;
.source "pmTextEdit.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final DIALOG_MODIFIED:I = 0xe

.field private static final DIALOG_NOTFOUND_ERROR:I = 0x9

.field private static final DIALOG_OPEN_FILE:I = 0x2

.field private static final DIALOG_OPEN_FILE_AUTOCOMPLETE:I = 0xb

.field private static final DIALOG_OVERWRITE:I = 0x4

.field private static final DIALOG_READ_ERROR:I = 0x8

.field private static final DIALOG_RECENT_FILE_DIALOG:I = 0xc

.field private static final DIALOG_SAVE_ERROR:I = 0x5

.field private static final DIALOG_SAVE_ERROR_PERMISSIONS:I = 0x6

.field private static final DIALOG_SAVE_ERROR_SDCARD:I = 0x7

.field private static final DIALOG_SAVE_FILE:I = 0x1

.field private static final DIALOG_SAVE_FILE_AUTOCOMPLETE:I = 0xa

.field private static final DIALOG_SHOULD_SAVE:I = 0x3

.field private static final DIALOG_SHOULD_SAVE_INTENT:I = 0xd

.field private static final FILEFORMAT_CR:I = 0x2

.field private static final FILEFORMAT_CRNL:I = 0x3

.field private static final FILEFORMAT_NL:I = 0x1

.field private static final MENU_ATTACHMENT:I = 0x9

.field private static final MENU_EMAIL:I = 0x7

.field private static final MENU_NEW_ID:I = 0x6

.field private static final MENU_OPENRECENT_ID:I = 0x4

.field private static final MENU_OPEN_ID:I = 0x3

.field private static final MENU_OPTIONS_ID:I = 0x5

.field private static final MENU_SAVEAS_ID:I = 0x2

.field private static final MENU_SAVE_ID:I = 0x1

.field private static final MENU_SEARCH:I = 0x8

.field private static final REQUEST_CODE_PREFERENCES:I = 0x1

.field private static final REQUEST_FILE_BROWSER_OPEN:I = 0x2

.field private static final REQUEST_FILE_BROWSER_SAVE:I = 0x3

.field private static items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static prevFile:Ljava/io/File;

.field protected static recentFilesAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

.field private static recentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static temp_filename:Ljava/lang/CharSequence;

.field protected static text:Landroid/widget/EditText;

.field protected static title:Landroid/widget/TextView;


# instance fields
.field private autoComplete:Z

.field private backFromFileBrowser:Z

.field private creatingFile:Z

.field private errorFname:Ljava/lang/CharSequence;

.field private errorSaving:Z

.field private fileBrowserReturnFile:Ljava/lang/CharSequence;

.field private fileformat:I

.field protected filename:Ljava/lang/CharSequence;

.field private fromIntent:Z

.field private fromSearch:Z

.field protected lastModified:J

.field private newIntent:Landroid/content/Intent;

.field protected openDialog_fne:Landroid/widget/EditText;

.field protected openRecentDialog:Landroid/app/AlertDialog;

.field protected openRecentListView:Landroid/widget/ListView;

.field private openingError:Z

.field private openingFile:Z

.field private openingIntent:Z

.field private openingRecent:Z

.field private queryString:Ljava/lang/String;

.field protected saveDialog_fne:Landroid/widget/EditText;

.field private savingFile:Z

.field private sendingAttachment:Z

.field protected untitled:Z


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x5

    const/16 v6, 0x13

    const/16 v5, 0xd

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x2f

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x27

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [Z

    aput-object v1, v0, v5

    const/16 v1, 0xe

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x36

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x36

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1a

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x14

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1b

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [Z

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

    const/16 v1, 0x25

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit"

    const-wide v2, -0x633ab724a197d9d8L    # -4.406135983955425E-170

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x2e

    aget-object v0, v0, v1

    .line 85
    sput-object v2, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    .line 86
    sput-object v2, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    .line 92
    sput-object v2, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    .line 93
    sput-object v2, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    .line 114
    const-string v1, ""

    sput-object v1, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    .line 1666
    sput-object v2, Lorg/paulmach/textedit/pmTextEdit;->prevFile:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 90
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    .line 95
    iput-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    .line 96
    iput-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    .line 102
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    .line 106
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    .line 108
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 109
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    .line 110
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 111
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 112
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    .line 113
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    .line 116
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->fromIntent:Z

    .line 117
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 118
    iput-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->newIntent:Landroid/content/Intent;

    .line 120
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->fromSearch:Z

    .line 121
    const-string v1, ""

    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    .line 123
    const-string v1, "File"

    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 124
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    aput-boolean v5, v0, v4

    return-void
.end method

.method static synthetic access$000(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x27

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x22

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1000(Lorg/paulmach/textedit/pmTextEdit;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2b

    aget-object v0, v0, v1

    .line 43
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$1100(Lorg/paulmach/textedit/pmTextEdit;)Landroid/content/Intent;
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2c

    aget-object v0, v0, v1

    .line 43
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->newIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x25

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$202(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$300(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x26

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$302(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$400(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x23

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$402(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$500(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x29

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$502(Lorg/paulmach/textedit/pmTextEdit;Z)Z
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 43
    iput-boolean p1, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$600(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$700()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2d

    aget-object v0, v0, v1

    .line 43
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x24

    aget-object v0, v0, v1

    .line 43
    sput-object p0, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method static synthetic access$800(Lorg/paulmach/textedit/pmTextEdit;)Z
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x28

    aget-object v0, v0, v1

    .line 43
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 4

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x2a

    aget-object v0, v0, v1

    .line 43
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static countQuotes(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x16

    aget-object v3, v0, v2

    .line 1655
    const/4 v0, 0x0

    aput-boolean v5, v3, v0

    move v0, v1

    move v2, v1

    .line 1658
    :cond_1
    const/16 v4, 0x22

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1659
    add-int/lit8 v0, v0, 0x1

    .line 1660
    aput-boolean v5, v3, v5

    if-ne v2, v1, :cond_1

    .line 1662
    const/4 v1, 0x2

    aput-boolean v5, v3, v1

    return v0
.end method

.method public static isTextChanged()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x15

    aget-object v0, v0, v3

    .line 1637
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1641
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    if-ne v3, v4, :cond_1

    .line 1643
    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1649
    :goto_0
    return v0

    .line 1643
    :cond_1
    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    .line 1649
    const/4 v3, 0x4

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v3

    .line 1646
    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0
.end method

.method private myResume()V
    .locals 13

    .prologue
    const/16 v12, 0xe

    const/4 v11, -0x1

    const/4 v10, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v2, v0, v1

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->updateOptions()V

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 774
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    const-string v0, "fntext"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    const-string v4, "openingIntent"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 779
    const-string v4, "selection-start"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 780
    const-string v5, "selection-end"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 782
    const-string v6, "lastModified"

    iget-wide v8, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 783
    const-string v6, "filename"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    .line 784
    iget-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-ne v6, v7, :cond_d

    .line 785
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 789
    :goto_0
    const-string v6, "fileformat"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    .line 792
    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v1, :cond_2

    .line 794
    const-string v6, "text-quotes"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 795
    const/4 v7, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-eqz v6, :cond_2

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v6, v6, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-ne v7, v6, :cond_2

    .line 796
    const-string v6, "\"\""

    const-string v7, "\""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 799
    :cond_2
    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v0, :cond_3

    .line 801
    const-string v6, "fntext-quotes"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 802
    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-eqz v6, :cond_3

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v6, v6, 0x2

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    if-ne v7, v6, :cond_3

    .line 803
    const-string v6, "\"\""

    const-string v7, "\""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xb

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 806
    :cond_3
    iget-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const/16 v7, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-eqz v6, :cond_4

    .line 808
    const-string v6, "filename-quotes"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 809
    const/16 v6, 0xd

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    const/16 v7, 0xe

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    if-ne v6, v3, :cond_4

    .line 810
    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\"\""

    const-string v7, "\""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const/16 v3, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 814
    :cond_4
    const/16 v3, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-eqz v1, :cond_5

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v6, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_5

    .line 816
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 818
    const/16 v3, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-eq v4, v11, :cond_5

    const/16 v3, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-eq v5, v11, :cond_5

    .line 820
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setSelection(II)V

    const/16 v3, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 824
    :cond_5
    const/16 v3, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-eqz v0, :cond_6

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    const/16 v6, 0x16

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_6

    .line 826
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x17

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 829
    :cond_6
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v6, 0x18

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_7

    .line 830
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v3, 0x19

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 834
    :cond_7
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v6, 0x1a

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-eqz v3, :cond_9

    const/16 v3, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-nez v4, :cond_9

    const/16 v3, 0x1c

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    if-nez v5, :cond_9

    .line 836
    const/16 v3, 0x1d

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    if-eqz v1, :cond_8

    .line 838
    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 841
    :cond_8
    const/16 v1, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_9

    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    const/16 v3, 0x20

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    if-eqz v1, :cond_9

    .line 843
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 848
    :cond_9
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->fromSearch:Z

    const/16 v1, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eqz v0, :cond_b

    .line 851
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 853
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 854
    const/16 v3, 0x23

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    if-ne v0, v11, :cond_a

    .line 855
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 857
    :cond_a
    const/16 v1, 0x25

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-eq v0, v11, :cond_e

    .line 859
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v3}, Landroid/widget/EditText;->setSelection(II)V

    const/16 v0, 0x26

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 864
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->fromSearch:Z

    const/16 v0, 0x28

    const/4 v1, 0x1

    aput-boolean v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :cond_b
    const/16 v0, 0x29

    aput-boolean v10, v2, v0

    .line 871
    :goto_2
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    const/16 v1, 0x2b

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    const/16 v1, 0x2c

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    const/16 v1, 0x2d

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    const/16 v1, 0x2e

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    const/16 v1, 0x2f

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    const/16 v1, 0x30

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    const/16 v1, 0x31

    aput-boolean v10, v2, v1

    if-nez v0, :cond_c

    .line 874
    iget-wide v0, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/16 v1, 0x32

    aput-boolean v10, v2, v1

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v0, v0, v4

    const/16 v1, 0x33

    aput-boolean v10, v2, v1

    if-eqz v0, :cond_c

    .line 876
    invoke-virtual {p0, v12}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v0, 0x34

    aput-boolean v10, v2, v0

    .line 879
    :cond_c
    const/16 v0, 0x35

    aput-boolean v10, v2, v0

    return-void

    .line 787
    :cond_d
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v2, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    const/16 v0, 0x2a

    aput-boolean v10, v2, v0

    goto :goto_2

    .line 861
    :cond_e
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x27

    const/4 v1, 0x1

    aput-boolean v1, v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method protected addRecentFile(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v4, v0, v1

    .line 1747
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    aput-boolean v6, v4, v3

    if-nez v0, :cond_1

    .line 1748
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->readRecentFiles()V

    aput-boolean v6, v4, v6

    .line 1752
    :cond_1
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1754
    const/4 v1, 0x2

    aput-boolean v6, v4, v1

    move v1, v0

    move v2, v3

    :goto_0
    const/4 v0, 0x3

    aput-boolean v6, v4, v0

    if-ge v2, v1, :cond_2

    .line 1756
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1757
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    aput-boolean v6, v4, v5

    if-eqz v0, :cond_5

    .line 1759
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1760
    add-int/lit8 v2, v2, -0x1

    .line 1761
    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x5

    aput-boolean v6, v4, v1

    .line 1754
    :goto_1
    add-int/lit8 v1, v2, 0x1

    const/4 v2, 0x6

    aput-boolean v6, v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1766
    :cond_2
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1769
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput-boolean v6, v4, v7

    if-le v0, v7, :cond_3

    .line 1770
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/16 v0, 0x8

    aput-boolean v6, v4, v0

    .line 1773
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1776
    const/16 v0, 0x9

    aput-boolean v6, v4, v0

    :goto_2
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    aput-boolean v6, v4, v2

    if-ge v3, v0, :cond_4

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rf_file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1776
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0xb

    aput-boolean v6, v4, v0

    goto :goto_2

    .line 1781
    :cond_4
    const-string v0, "rf_numfiles"

    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1782
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1783
    const/16 v0, 0xc

    aput-boolean v6, v4, v0

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public createNew()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 259
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->setContentView(I)V

    .line 261
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    .line 262
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    .line 264
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 268
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    aput-boolean v4, v1, v5

    if-eqz v0, :cond_1

    .line 271
    const-string v2, "mode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string v2, "text"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v2, "text-quotes"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v2, "fntext"

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v2, "fntext-quotes"

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v2, "filename"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v2, "filename-quotes"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    const-string v2, "selection-start"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v2, "selection-end"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    aput-boolean v4, v1, v4

    .line 287
    :cond_1
    iput v4, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    .line 289
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 290
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    .line 292
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 294
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->updateOptions()V

    .line 295
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 297
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    return-void
.end method

.method public getFileList(Ljava/lang/CharSequence;Landroid/widget/AutoCompleteTextView;)V
    .locals 10

    .prologue
    const/16 v9, 0x17

    const/4 v2, 0x0

    const/4 v8, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v9

    .line 1669
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    aput-boolean v8, v3, v2

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v4, 0x2f

    aput-boolean v8, v3, v8

    if-ne v1, v4, :cond_6

    .line 1674
    const/4 v1, 0x2

    aput-boolean v8, v3, v1

    .line 1679
    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x4

    aput-boolean v8, v3, v4

    if-eqz v1, :cond_1

    .line 1680
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v8, v3, v1

    .line 1682
    :cond_1
    const/4 v1, 0x6

    aput-boolean v8, v3, v1

    if-nez v0, :cond_2

    .line 1683
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v8, v3, v1

    .line 1686
    :cond_2
    const/16 v1, 0x8

    aput-boolean v8, v3, v1

    if-eqz v0, :cond_5

    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->prevFile:Ljava/io/File;

    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    if-eqz v1, :cond_3

    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->prevFile:Ljava/io/File;

    const/16 v4, 0xa

    aput-boolean v8, v3, v4

    if-eqz v1, :cond_5

    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->prevFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xb

    aput-boolean v8, v3, v4

    if-nez v1, :cond_5

    .line 1688
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    if-nez v1, :cond_7

    .line 1689
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 v1, 0xd

    aput-boolean v8, v3, v1

    .line 1714
    :cond_4
    new-instance v1, Lorg/paulmach/textedit/FileAutoCompleteArrayAdapter;

    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x109000a

    sget-object v5, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    invoke-direct {v1, v2, v4, v5}, Lorg/paulmach/textedit/FileAutoCompleteArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1715
    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x19

    aput-boolean v8, v3, v1

    .line 1718
    :cond_5
    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->prevFile:Ljava/io/File;

    .line 1719
    const/16 v0, 0x1a

    aput-boolean v8, v3, v0

    return-void

    .line 1676
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v8, v3, v1

    goto :goto_0

    .line 1691
    :cond_7
    new-array v1, v2, [Ljava/io/File;

    .line 1694
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/16 v5, 0xe

    aput-boolean v8, v3, v5

    if-eqz v4, :cond_8

    .line 1695
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/16 v4, 0xf

    aput-boolean v8, v3, v4

    .line 1698
    :cond_8
    sget-object v4, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    const/16 v5, 0x10

    aput-boolean v8, v3, v5

    if-nez v4, :cond_9

    .line 1699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    const/16 v4, 0x11

    aput-boolean v8, v3, v4

    .line 1703
    :goto_1
    array-length v4, v1

    .line 1704
    const/16 v5, 0x13

    aput-boolean v8, v3, v5

    :goto_2
    const/16 v5, 0x14

    aput-boolean v8, v3, v5

    if-ge v2, v4, :cond_4

    .line 1706
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/16 v6, 0x15

    aput-boolean v8, v3, v6

    if-eqz v5, :cond_a

    .line 1707
    sget-object v5, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x16

    aput-boolean v8, v3, v5

    .line 1704
    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x18

    aput-boolean v8, v3, v5

    goto :goto_2

    .line 1701
    :cond_9
    sget-object v4, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/16 v4, 0x12

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 1709
    :cond_a
    sget-object v5, Lorg/paulmach/textedit/pmTextEdit;->items:Ljava/util/List;

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-boolean v8, v3, v9

    goto :goto_3
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 157
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/pmTextEdit;->setIntent(Landroid/content/Intent;)V

    .line 160
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v5, v0, v4

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/provider/SearchRecentSuggestions;

    const-string v3, "org.paulmach.authority"

    invoke-direct {v2, p0, v3, v5}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "number"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 168
    const-string v3, "number"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    aput-boolean v5, v0, v5

    if-ne v2, v5, :cond_1

    .line 172
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->fromSearch:Z

    .line 173
    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->queryString:Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    :cond_1
    aput-boolean v5, v0, v6

    .line 209
    :cond_2
    :goto_0
    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    return-void

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 180
    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    if-eqz v1, :cond_2

    .line 182
    invoke-direct {p0}, Lorg/paulmach/textedit/pmTextEdit;->myResume()V

    .line 185
    const-string v2, "number"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    const-string v3, "number"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    if-nez v3, :cond_2

    const/4 v3, 0x6

    aput-boolean v5, v0, v3

    if-gt v2, v5, :cond_2

    .line 195
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->fromIntent:Z

    .line 198
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    aput-boolean v5, v0, v3

    if-nez v2, :cond_4

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v2

    const/16 v3, 0x8

    aput-boolean v5, v0, v3

    if-eqz v2, :cond_4

    .line 200
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 201
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->newIntent:Landroid/content/Intent;

    .line 202
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xa

    aput-boolean v5, v0, v3

    if-nez v2, :cond_2

    .line 204
    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Landroid/net/Uri;)V

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 684
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 687
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    if-ne p1, v3, :cond_2

    .line 688
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->updateOptions()V

    aput-boolean v3, v0, v3

    .line 709
    :cond_1
    :goto_0
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void

    .line 689
    :cond_2
    aput-boolean v3, v0, v4

    if-ne p1, v4, :cond_4

    aput-boolean v3, v0, v2

    if-eqz p3, :cond_4

    .line 691
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->fileBrowserReturnFile:Ljava/lang/CharSequence;

    .line 692
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    .line 694
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 695
    invoke-virtual {p0, v6}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 697
    :cond_3
    invoke-virtual {p0, v4}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 699
    :cond_4
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    if-ne p1, v2, :cond_1

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    if-eqz p3, :cond_1

    .line 701
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->fileBrowserReturnFile:Ljava/lang/CharSequence;

    .line 702
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    .line 704
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_5

    .line 705
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    aput-boolean v3, v0, v5

    goto :goto_0

    .line 707
    :cond_5
    invoke-virtual {p0, v3}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    aput-boolean v3, v0, v6

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->requestWindowFeature(I)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->updateOptions()V

    .line 141
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->newIntent(Landroid/content/Intent;)V

    .line 143
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void

    .line 137
    :catch_0
    move-exception v1

    aput-boolean v3, v0, v3

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v1, 0x0

    const v4, 0x7f060002

    const/high16 v3, 0x7f020000

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x11

    aget-object v2, v0, v2

    .line 1007
    const/4 v0, 0x0

    aput-boolean v5, v2, v0

    packed-switch p1, :pswitch_data_0

    .line 1510
    const/16 v0, 0x19

    aput-boolean v5, v2, v0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1011
    :pswitch_0
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    aput-boolean v5, v2, v5

    if-eqz v0, :cond_2

    .line 1012
    const v0, 0x7f030003

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    .line 1017
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1018
    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1020
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    .line 1022
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    if-eqz v0, :cond_1

    .line 1025
    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$2;

    invoke-direct {v3, p0, v1}, Lorg/paulmach/textedit/pmTextEdit$2;-><init>(Lorg/paulmach/textedit/pmTextEdit;Landroid/view/View;)V

    .line 1037
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1038
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1039
    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1044
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    aput-boolean v5, v2, v0

    .line 1048
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    .line 1049
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Save File"

    .line 1050
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1051
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Save"

    new-instance v4, Lorg/paulmach/textedit/pmTextEdit$5;

    invoke-direct {v4, p0, v1}, Lorg/paulmach/textedit/pmTextEdit$5;-><init>(Lorg/paulmach/textedit/pmTextEdit;Landroid/view/View;)V

    .line 1052
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Browser"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$4;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$4;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1096
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$3;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$3;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1119
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 1014
    :cond_2
    const v0, 0x7f030004

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 1139
    :pswitch_1
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    if-eqz v0, :cond_4

    .line 1140
    const v0, 0x7f030003

    const/16 v3, 0x8

    aput-boolean v5, v2, v3

    .line 1145
    :goto_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1146
    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1148
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    .line 1150
    iget-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/16 v3, 0xa

    aput-boolean v5, v2, v3

    if-eqz v0, :cond_3

    .line 1153
    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$6;

    invoke-direct {v3, p0, v1}, Lorg/paulmach/textedit/pmTextEdit$6;-><init>(Lorg/paulmach/textedit/pmTextEdit;Landroid/view/View;)V

    .line 1165
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1166
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1167
    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1171
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xb

    aput-boolean v5, v2, v0

    .line 1175
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    .line 1176
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Open File"

    .line 1177
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1178
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Open"

    new-instance v4, Lorg/paulmach/textedit/pmTextEdit$9;

    invoke-direct {v4, p0, v1}, Lorg/paulmach/textedit/pmTextEdit$9;-><init>(Lorg/paulmach/textedit/pmTextEdit;Landroid/view/View;)V

    .line 1179
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Browser"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$8;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$8;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1186
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$7;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$7;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1209
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0xc

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1142
    :cond_4
    const v0, 0x7f030004

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    goto :goto_2

    .line 1224
    :pswitch_2
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->readRecentFiles()V

    .line 1227
    new-instance v0, Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lorg/paulmach/textedit/FileViewArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentFilesAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    .line 1231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1232
    const v3, 0x7f03000e

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentListView:Landroid/widget/ListView;

    .line 1235
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentListView:Landroid/widget/ListView;

    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->recentFilesAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1236
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentListView:Landroid/widget/ListView;

    new-instance v1, Lorg/paulmach/textedit/pmTextEdit$10;

    invoke-direct {v1, p0}, Lorg/paulmach/textedit/pmTextEdit$10;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020010

    .line 1244
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050009

    .line 1245
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentListView:Landroid/widget/ListView;

    .line 1246
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1247
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/paulmach/textedit/pmTextEdit$11;

    invoke-direct {v1, p0}, Lorg/paulmach/textedit/pmTextEdit$11;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1248
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentDialog:Landroid/app/AlertDialog;

    .line 1254
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentDialog:Landroid/app/AlertDialog;

    aput-boolean v5, v2, v6

    goto/16 :goto_0

    .line 1258
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1259
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000d

    .line 1260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$12;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$12;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1261
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0xe

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1277
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1278
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000e

    .line 1279
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$13;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$13;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1281
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1297
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1298
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000f

    .line 1299
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$14;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$14;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1301
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1317
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1318
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$15;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$15;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1320
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x11

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1339
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1340
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$16;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$16;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1342
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x12

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1361
    :pswitch_8
    const/16 v0, 0x13

    aput-boolean v5, v2, v0

    if-ne p1, v6, :cond_5

    .line 1362
    const v0, 0x7f050011

    const/16 v1, 0x14

    aput-boolean v5, v2, v1

    .line 1366
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1367
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1368
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$18;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$18;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1369
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$17;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$17;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1414
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x16

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1364
    :cond_5
    const v0, 0x7f050010

    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    goto :goto_3

    .line 1449
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1450
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050014

    .line 1451
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$20;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$20;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1452
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$19;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$19;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1457
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x17

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1466
    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1467
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050012

    .line 1468
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$22;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$22;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1469
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v3, Lorg/paulmach/textedit/pmTextEdit$21;

    invoke-direct {v3, p0}, Lorg/paulmach/textedit/pmTextEdit$21;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    .line 1498
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1506
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x18

    aput-boolean v5, v2, v1

    goto/16 :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x30

    const/4 v3, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 1518
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1520
    const/4 v1, 0x6

    const-string v2, "New File"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020012

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1521
    const-string v1, "Save"

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020017

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1522
    const/4 v1, 0x2

    const-string v2, "Save As"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020018

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1523
    const/4 v1, 0x3

    const-string v2, "Open"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020014

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1524
    const/4 v1, 0x4

    const-string v2, "Recent"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020015

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1526
    const/4 v1, 0x7

    const-string v2, "Email Text"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x65

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 1527
    const/16 v1, 0x8

    const-string v2, "Search Text"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x66

    invoke-interface {v1, v4, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 1528
    const/16 v1, 0x9

    const-string v2, "Email as Attachment"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1529
    const/4 v1, 0x5

    const-string v2, "Options"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020016

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1530
    aput-boolean v5, v0, v3

    return v5
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/pmTextEdit;->newIntent(Landroid/content/Intent;)V

    .line 151
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 1536
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 1537
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 1539
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    aput-boolean v4, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 1619
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x1c

    aput-boolean v4, v0, v2

    return v1

    .line 1541
    :pswitch_0
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    .line 1542
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    aput-boolean v4, v0, v4

    if-eqz v1, :cond_2

    .line 1543
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    aput-boolean v4, v0, v7

    if-eqz v1, :cond_1

    .line 1544
    invoke-virtual {p0, v6}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    aput-boolean v4, v0, v5

    goto :goto_0

    .line 1546
    :cond_1
    invoke-virtual {p0, v4}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1548
    :cond_2
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->saveNote(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1551
    :pswitch_1
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    .line 1553
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_3

    .line 1554
    invoke-virtual {p0, v6}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1556
    :cond_3
    invoke-virtual {p0, v4}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1560
    :pswitch_2
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    .line 1562
    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_4

    .line 1563
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 1565
    :cond_4
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1569
    :pswitch_3
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 1570
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 1572
    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v1

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_5

    .line 1573
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1575
    :cond_5
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_6

    .line 1576
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1578
    :cond_6
    invoke-virtual {p0, v7}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1583
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/paulmach/textedit/EditPreferences;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v4}, Lorg/paulmach/textedit/pmTextEdit;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1587
    :pswitch_5
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 1588
    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v1

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_7

    .line 1589
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1591
    :cond_7
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1596
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    const-string v2, "android.intent.extra.TEXT"

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1598
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    const-string v2, "Send email with"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1603
    :pswitch_7
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->onSearchRequested()Z

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1607
    :pswitch_8
    iput-boolean v4, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    .line 1609
    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v1

    const/16 v2, 0x17

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_8

    .line 1610
    invoke-virtual {p0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1611
    :cond_8
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/16 v2, 0x19

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_9

    .line 1612
    const v1, 0x7f050013

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1614
    :cond_9
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->sendAttachment()V

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 1539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v1, v0, v1

    .line 717
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 720
    invoke-virtual {p0, v3}, Lorg/paulmach/textedit/pmTextEdit;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 722
    aput-boolean v6, v1, v3

    if-eqz v2, :cond_1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    aput-boolean v6, v1, v6

    if-eqz v0, :cond_1

    .line 726
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    const-string v3, "text"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 728
    const-string v3, "text-quotes"

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 730
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    const-string v3, "fntext"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 732
    const-string v3, "fntext-quotes"

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 734
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    aput-boolean v6, v1, v3

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-boolean v6, v1, v3

    .line 738
    :goto_0
    const-string v3, "filename"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    const-string v3, "lastModified"

    iget-wide v4, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 740
    const-string v3, "filename-quotes"

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->countQuotes(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 742
    const-string v0, "selection-start"

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 743
    const-string v0, "selection-end"

    sget-object v3, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 745
    const-string v0, "fileformat"

    iget v3, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 747
    const-string v0, "openingIntent"

    iget-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 750
    :cond_1
    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    return-void

    .line 737
    :cond_2
    const-string v0, ""

    const/4 v3, 0x4

    aput-boolean v6, v1, v3

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8

    .prologue
    const v7, 0x7f05000c

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 887
    aput-boolean v4, v0, v5

    packed-switch p1, :pswitch_data_0

    .line 999
    :goto_0
    :pswitch_0
    const/16 v1, 0x35

    aput-boolean v4, v0, v1

    return-void

    .line 890
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    aput-boolean v4, v0, v4

    goto :goto_0

    .line 894
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 901
    :pswitch_3
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_4

    .line 902
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->fileBrowserReturnFile:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 928
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    if-nez v1, :cond_3

    .line 930
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const-string v2, ""

    const/16 v3, 0x14

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/16 v2, 0x15

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_b

    .line 932
    :cond_2
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(I)V

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    .line 938
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 904
    :cond_4
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_5

    .line 905
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 906
    :cond_5
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 907
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const-string v2, ""

    const/16 v3, 0x8

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_6

    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_a

    .line 910
    :cond_6
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 911
    const-string v2, "defaultdir"

    const-string v3, "/sdcard/"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 913
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xa

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_7

    .line 915
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 923
    :goto_3
    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    goto/16 :goto_1

    .line 916
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/16 v3, 0xc

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_8

    .line 917
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    goto :goto_3

    .line 918
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xe

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_9

    .line 919
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    goto :goto_3

    .line 921
    :cond_9
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v4, v0, v6

    goto :goto_3

    .line 924
    :cond_a
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    goto/16 :goto_1

    .line 934
    :cond_b
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    goto/16 :goto_2

    .line 945
    :pswitch_4
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    const/16 v2, 0x19

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_f

    .line 946
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1a

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_c

    .line 948
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    .line 956
    :goto_4
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 987
    :goto_5
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    const/16 v1, 0x33

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 949
    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/16 v3, 0x1c

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_d

    .line 950
    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    goto :goto_4

    .line 951
    :cond_d
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1e

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_e

    .line 952
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    goto :goto_4

    .line 954
    :cond_e
    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    goto/16 :goto_4

    .line 957
    :cond_f
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    const/16 v2, 0x22

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_10

    .line 958
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->fileBrowserReturnFile:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->backFromFileBrowser:Z

    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    goto/16 :goto_5

    .line 960
    :cond_10
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    const-string v2, ""

    const/16 v3, 0x24

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_11

    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    const/16 v2, 0x25

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_15

    .line 963
    :cond_11
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 964
    const-string v2, "defaultdir"

    const-string v3, "/sdcard/"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 966
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x26

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_12

    .line 968
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    .line 975
    :goto_6
    const/16 v1, 0x2d

    aput-boolean v4, v0, v1

    goto/16 :goto_5

    .line 969
    :cond_12
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/16 v3, 0x28

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_13

    .line 970
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x29

    aput-boolean v4, v0, v1

    goto :goto_6

    .line 971
    :cond_13
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x2a

    aput-boolean v4, v0, v3

    if-eqz v1, :cond_14

    .line 972
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    goto :goto_6

    .line 974
    :cond_14
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    goto :goto_6

    .line 976
    :cond_15
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    const/16 v2, 0x2e

    aput-boolean v4, v0, v2

    if-nez v1, :cond_16

    .line 978
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(I)V

    const/16 v1, 0x2f

    aput-boolean v4, v0, v1

    goto/16 :goto_5

    .line 980
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x30

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_17

    .line 981
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    aput-boolean v4, v0, v1

    goto/16 :goto_5

    .line 983
    :cond_17
    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    aput-boolean v4, v0, v1

    goto/16 :goto_5

    .line 993
    :pswitch_5
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->readRecentFiles()V

    .line 994
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->recentFilesAdapter:Lorg/paulmach/textedit/FileViewArrayAdapter;

    invoke-virtual {v1}, Lorg/paulmach/textedit/FileViewArrayAdapter;->notifyDataSetChanged()V

    .line 996
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openRecentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSelection(I)V

    const/16 v1, 0x34

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string v1, "creatingFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 242
    const-string v1, "savingFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    .line 243
    const-string v1, "openingFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 244
    const-string v1, "openingError"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 245
    const-string v1, "openingRecent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    .line 246
    const-string v1, "openingIntent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 247
    const-string v1, "sendingAttachment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    .line 249
    const-string v1, "temp_filename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    .line 250
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 758
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 760
    iget-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->fromIntent:Z

    aput-boolean v2, v0, v3

    if-nez v1, :cond_1

    .line 761
    invoke-direct {p0}, Lorg/paulmach/textedit/pmTextEdit;->myResume()V

    aput-boolean v2, v0, v2

    .line 763
    :cond_1
    iput-boolean v3, p0, Lorg/paulmach/textedit/pmTextEdit;->fromIntent:Z

    .line 764
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 219
    const-string v1, "creatingFile"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    const-string v1, "savingFile"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->savingFile:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    const-string v1, "openingFile"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    const-string v1, "openingError"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    const-string v1, "openingRecent"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v1, "openingIntent"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v1, "sendingAttachment"

    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v1, "temp_filename"

    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public openFile(Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v2

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    aput-boolean v8, v2, v1

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Ljava/lang/CharSequence;)V

    aput-boolean v8, v2, v8

    .line 363
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    const-string v3, "defaultdir"

    const-string v4, "/sdcard/"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/attachment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-boolean v8, v2, v4

    .line 319
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x3

    aput-boolean v8, v2, v5

    if-eqz v4, :cond_2

    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 322
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/attachment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-boolean v8, v2, v4

    goto :goto_1

    .line 327
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 328
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 331
    const/16 v1, 0x44c

    new-array v1, v1, [C

    .line 333
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 338
    :cond_3
    invoke-virtual {v3, v1}, Ljava/io/FileReader;->read([C)I

    move-result v5

    .line 340
    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-ltz v5, :cond_4

    .line 342
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 344
    :cond_4
    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    if-gez v5, :cond_3

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Ljava/lang/CharSequence;Ljava/lang/StringBuffer;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->removeRecentFile(Ljava/lang/CharSequence;)V

    .line 351
    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->isTextChanged()Z

    move-result v0

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    if-nez v0, :cond_5

    .line 353
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 354
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    :cond_5
    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_2
    const/16 v0, 0xd

    aput-boolean v8, v2, v0

    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    const-string v0, "attachment"

    iput-object v0, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 360
    iput-boolean v8, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 361
    invoke-virtual {p0, v9}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v0, 0xc

    aput-boolean v8, v2, v0

    goto :goto_2
.end method

.method public openFile(Ljava/lang/CharSequence;)V
    .locals 12

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v10

    .line 370
    iput-boolean v9, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 371
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    if-nez v2, :cond_3

    .line 380
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 412
    :catch_0
    move-exception v2

    .line 414
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 415
    iput-boolean v8, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 416
    invoke-virtual {p0, v11}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v2, 0xb

    aput-boolean v8, v0, v2

    .line 429
    :goto_0
    iget-boolean v2, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    const/16 v3, 0xe

    aput-boolean v8, v0, v3

    if-nez v2, :cond_1

    .line 431
    invoke-virtual {p0, p1, v1}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Ljava/lang/CharSequence;Ljava/lang/StringBuffer;)V

    const/16 v1, 0xf

    aput-boolean v8, v0, v1

    .line 434
    :cond_1
    iput-boolean v9, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    .line 435
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v2, 0x10

    aput-boolean v8, v0, v2

    if-eqz v1, :cond_2

    .line 436
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v1, 0x11

    aput-boolean v8, v0, v1

    .line 437
    :cond_2
    const/16 v1, 0x12

    aput-boolean v8, v0, v1

    return-void

    .line 383
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    if-eqz v4, :cond_4

    .line 385
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 417
    :catch_1
    move-exception v2

    .line 419
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 420
    iput-boolean v8, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 421
    invoke-virtual {p0, v10}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v2, 0xc

    aput-boolean v8, v0, v2

    goto :goto_0

    .line 390
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    if-nez v3, :cond_7

    .line 399
    const/16 v3, 0x44c

    new-array v3, v3, [C

    .line 401
    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 404
    :cond_5
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 406
    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    if-ltz v4, :cond_6

    .line 408
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    .line 410
    :cond_6
    const/16 v5, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    if-gez v4, :cond_5

    :cond_7
    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 422
    :catch_2
    move-exception v2

    .line 423
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 424
    iput-boolean v8, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 425
    invoke-virtual {p0, v10}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v2, 0xd

    aput-boolean v8, v0, v2

    goto/16 :goto_0
.end method

.method public openFile(Ljava/lang/CharSequence;Ljava/lang/StringBuffer;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    .line 449
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v2, "\r\n"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    if-eq v2, v7, :cond_1

    .line 453
    const/4 v2, 0x3

    iput v2, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    .line 454
    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 463
    :goto_0
    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 468
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    .line 471
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/pmTextEdit;->addRecentFile(Ljava/lang/CharSequence;)V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->openingRecent:Z

    const/4 v0, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_1
    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->openingIntent:Z

    .line 482
    const-string v0, ""

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    .line 483
    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    return-void

    .line 455
    :cond_1
    :try_start_1
    const-string v2, "\r"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    if-eq v2, v7, :cond_2

    .line 456
    const/4 v2, 0x2

    iput v2, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    .line 457
    const-string v2, "\r"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorFname:Ljava/lang/CharSequence;

    .line 477
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->openingError:Z

    .line 478
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    goto :goto_1

    .line 459
    :cond_2
    const/4 v2, -0x8

    :try_start_2
    iput v2, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected readRecentFiles()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x18

    aget-object v2, v0, v2

    .line 1728
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1730
    const-string v0, "rf_numfiles"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1733
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    aput-boolean v8, v2, v1

    if-nez v0, :cond_1

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    aput-boolean v8, v2, v8

    .line 1736
    :cond_1
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1739
    const/4 v0, 0x2

    aput-boolean v8, v2, v0

    move v0, v1

    :goto_0
    const/4 v1, 0x3

    aput-boolean v8, v2, v1

    if-ge v0, v4, :cond_2

    .line 1741
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rf_file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 1743
    :cond_2
    const/4 v0, 0x5

    aput-boolean v8, v2, v0

    return-void
.end method

.method protected removeRecentFile(Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v4, v0, v1

    .line 1787
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    aput-boolean v6, v4, v3

    if-nez v0, :cond_1

    .line 1788
    invoke-virtual {p0}, Lorg/paulmach/textedit/pmTextEdit;->readRecentFiles()V

    aput-boolean v6, v4, v6

    .line 1792
    :cond_1
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1793
    const/4 v1, 0x2

    aput-boolean v6, v4, v1

    move v1, v0

    move v2, v3

    :goto_0
    const/4 v0, 0x3

    aput-boolean v6, v4, v0

    if-ge v2, v1, :cond_2

    .line 1795
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1797
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    aput-boolean v6, v4, v5

    if-eqz v0, :cond_4

    .line 1799
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1800
    add-int/lit8 v2, v2, -0x1

    .line 1801
    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x5

    aput-boolean v6, v4, v1

    .line 1793
    :goto_1
    add-int/lit8 v1, v2, 0x1

    const/4 v2, 0x6

    aput-boolean v6, v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1806
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1809
    const/4 v0, 0x7

    aput-boolean v6, v4, v0

    :goto_2
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    aput-boolean v6, v4, v2

    if-ge v3, v0, :cond_3

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rf_file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1809
    add-int/lit8 v3, v3, 0x2

    const/16 v0, 0x9

    aput-boolean v6, v4, v0

    goto :goto_2

    .line 1814
    :cond_3
    const-string v0, "rf_numfiles"

    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->recentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1815
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1816
    const/16 v0, 0xa

    aput-boolean v6, v4, v0

    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public saveNote(Ljava/lang/CharSequence;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 491
    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    .line 495
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    if-nez v1, :cond_4

    .line 499
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    .line 503
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    if-nez v1, :cond_3

    .line 504
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 508
    :goto_0
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 510
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 556
    :goto_1
    return-void

    .line 506
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->creatingFile:Z

    .line 545
    iput-boolean v6, p0, Lorg/paulmach/textedit/pmTextEdit;->openingFile:Z

    .line 547
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput-boolean v5, v0, v2

    if-nez v1, :cond_7

    .line 548
    invoke-virtual {p0, v7}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    .line 552
    :goto_2
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->errorSaving:Z

    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    .line 555
    :goto_3
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 556
    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 516
    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 517
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 519
    iget v1, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-ne v1, v8, :cond_5

    .line 521
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\r"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 528
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 531
    const v1, 0x7f050004

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 534
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    .line 536
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/paulmach/textedit/pmTextEdit;->untitled:Z

    .line 538
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 540
    const-string v1, ""

    sput-object v1, Lorg/paulmach/textedit/pmTextEdit;->temp_filename:Ljava/lang/CharSequence;

    .line 542
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/pmTextEdit;->addRecentFile(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto :goto_3

    .line 522
    :cond_5
    iget v1, p0, Lorg/paulmach/textedit/pmTextEdit;->fileformat:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    if-ne v1, v9, :cond_6

    .line 523
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\r\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    goto :goto_4

    .line 525
    :cond_6
    sget-object v1, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 550
    :cond_7
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x10

    aput-boolean v5, v0, v1

    goto/16 :goto_2
.end method

.method public sendAttachment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 1627
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1628
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1630
    const-string v2, "Send attachment with:"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/paulmach/textedit/pmTextEdit;->startActivity(Landroid/content/Intent;)V

    .line 1632
    iput-boolean v5, p0, Lorg/paulmach/textedit/pmTextEdit;->sendingAttachment:Z

    .line 1633
    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    return-void
.end method

.method protected updateOptions()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0x8

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v9

    .line 567
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 568
    const-string v0, "autocomplete"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/paulmach/textedit/pmTextEdit;->autoComplete:Z

    .line 572
    const-string v0, "autocorrect"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 573
    const-string v5, "autocase"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 575
    aput-boolean v1, v3, v2

    if-eqz v0, :cond_2

    aput-boolean v1, v3, v1

    if-eqz v5, :cond_2

    .line 577
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    .line 586
    :goto_0
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    .line 587
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    .line 589
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    new-instance v5, Lorg/paulmach/textedit/pmTextEdit$1;

    invoke-direct {v5, p0}, Lorg/paulmach/textedit/pmTextEdit$1;-><init>(Lorg/paulmach/textedit/pmTextEdit;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 608
    const-string v0, "linksclickable"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 610
    aput-boolean v1, v3, v8

    if-eqz v0, :cond_5

    .line 611
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    .line 617
    :goto_1
    const-string v0, "hidefilename"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 618
    aput-boolean v1, v3, v9

    if-eqz v0, :cond_6

    .line 619
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xc

    aput-boolean v1, v3, v0

    .line 625
    :goto_2
    const-string v0, "linewrap"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 626
    sget-object v6, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/16 v0, 0xe

    aput-boolean v1, v3, v0

    if-nez v5, :cond_7

    const/16 v0, 0xf

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 629
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 630
    const/16 v6, 0x12

    aput-boolean v1, v3, v6

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 633
    const/16 v6, 0x12

    aput-boolean v1, v3, v6

    if-nez v5, :cond_8

    const/16 v2, 0x13

    aput-boolean v1, v3, v2

    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/16 v0, 0x15

    aput-boolean v1, v3, v0

    .line 638
    :cond_1
    const-string v0, "font"

    const-string v2, "Monospace"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    const-string v2, "Serif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x16

    aput-boolean v1, v3, v5

    if-eqz v2, :cond_9

    .line 641
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x17

    aput-boolean v1, v3, v0

    .line 649
    :goto_5
    const-string v0, "fontsize"

    const-string v2, "Medium"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v2, "Extra Small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x1b

    aput-boolean v1, v3, v5

    if-eqz v2, :cond_b

    .line 652
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x1c

    aput-boolean v1, v3, v0

    .line 666
    :goto_6
    const-string v0, "bgcolor"

    const/high16 v2, -0x1000000

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 667
    sget-object v2, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 669
    const-string v2, "fontcolor"

    const v5, -0x333334

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 670
    sget-object v4, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 672
    sget-object v4, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 675
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLinksClickable(Z)V

    .line 676
    const/16 v0, 0x26

    aput-boolean v1, v3, v0

    return-void

    .line 578
    :cond_2
    const/4 v6, 0x3

    aput-boolean v1, v3, v6

    if-eqz v0, :cond_3

    .line 579
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->setContentView(I)V

    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    goto/16 :goto_0

    .line 580
    :cond_3
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    if-eqz v5, :cond_4

    .line 581
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->setContentView(I)V

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    goto/16 :goto_0

    .line 583
    :cond_4
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lorg/paulmach/textedit/pmTextEdit;->setContentView(I)V

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    goto/16 :goto_0

    .line 613
    :cond_5
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    goto/16 :goto_1

    .line 621
    :cond_6
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    goto/16 :goto_2

    .line 626
    :cond_7
    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    move v0, v2

    goto/16 :goto_3

    .line 633
    :cond_8
    const/16 v5, 0x14

    aput-boolean v1, v3, v5

    goto/16 :goto_4

    .line 642
    :cond_9
    const-string v2, "Sans Serif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x18

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_a

    .line 643
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x19

    aput-boolean v1, v3, v0

    goto/16 :goto_5

    .line 645
    :cond_a
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x1a

    aput-boolean v1, v3, v0

    goto/16 :goto_5

    .line 653
    :cond_b
    const-string v2, "Small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x1d

    aput-boolean v1, v3, v5

    if-eqz v2, :cond_c

    .line 654
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x1e

    aput-boolean v1, v3, v0

    goto/16 :goto_6

    .line 655
    :cond_c
    const-string v2, "Medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x1f

    aput-boolean v1, v3, v5

    if-eqz v2, :cond_d

    .line 656
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x20

    aput-boolean v1, v3, v0

    goto/16 :goto_6

    .line 657
    :cond_d
    const-string v2, "Large"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x21

    aput-boolean v1, v3, v5

    if-eqz v2, :cond_e

    .line 658
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x22

    aput-boolean v1, v3, v0

    goto/16 :goto_6

    .line 659
    :cond_e
    const-string v2, "Huge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x23

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_f

    .line 660
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x24

    aput-boolean v1, v3, v0

    goto/16 :goto_6

    .line 662
    :cond_f
    sget-object v0, Lorg/paulmach/textedit/pmTextEdit;->text:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x25

    aput-boolean v1, v3, v0

    goto/16 :goto_6
.end method
