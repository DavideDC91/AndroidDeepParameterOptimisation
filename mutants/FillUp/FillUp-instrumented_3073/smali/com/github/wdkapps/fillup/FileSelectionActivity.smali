.class public Lcom/github/wdkapps/fillup/FileSelectionActivity;
.super Landroid/app/Activity;
.source "FileSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z

.field public static final EXT:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String;

.field public static final ROOT:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/github/wdkapps/fillup/FileSelectionListAdapter;

.field private ext:Ljava/lang/String;

.field private final filelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field private path:Ljava/io/File;

.field private root:Ljava/io/File;

.field private textviewPath:Landroid/widget/TextView;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/FileSelectionActivity"

    const-wide v2, -0x6764cb82ac261cc1L    # -3.816208332562523E-190

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ROOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ROOT:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PATH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/FileSelectionActivity;->PATH:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/FileSelectionActivity;->EXT:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/github/wdkapps/fillup/FileSelectionActivity;)Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 46
    iget-object v1, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ext:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private chooseDirectory(Ljava/io/File;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v8

    .line 141
    iput-object p1, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    .line 142
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->textviewPath:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/github/wdkapps/fillup/FileSelectionActivity$1;-><init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;)V

    .line 153
    new-instance v3, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;

    invoke-direct {v3, p0}, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;-><init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;)V

    .line 163
    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 166
    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    iget-object v5, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->root:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v10, v2, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    aput-boolean v10, v2, v10

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    const-string v7, ".."

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    aput-boolean v10, v2, v4

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 172
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    const/4 v0, 0x3

    aput-boolean v10, v2, v0

    if-eqz v4, :cond_2

    .line 176
    new-instance v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;

    invoke-direct {v0, p0, v11}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;-><init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;Lcom/github/wdkapps/fillup/FileSelectionActivity$1;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 177
    array-length v5, v4

    aput-boolean v10, v2, v8

    move v0, v1

    :goto_0
    const/4 v6, 0x5

    aput-boolean v10, v2, v6

    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 178
    iget-object v7, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x6

    aput-boolean v10, v2, v6

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x7

    aput-boolean v10, v2, v0

    if-eqz v3, :cond_3

    .line 184
    new-instance v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;

    invoke-direct {v0, p0, v11}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;-><init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;Lcom/github/wdkapps/fillup/FileSelectionActivity$1;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 185
    array-length v0, v3

    const/16 v4, 0x8

    aput-boolean v10, v2, v4

    :goto_1
    const/16 v4, 0x9

    aput-boolean v10, v2, v4

    if-ge v1, v0, :cond_3

    aget-object v4, v3, v1

    .line 186
    iget-object v5, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0xa

    aput-boolean v10, v2, v4

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->adapter:Lcom/github/wdkapps/fillup/FileSelectionListAdapter;

    invoke-virtual {v0}, Lcom/github/wdkapps/fillup/FileSelectionListAdapter;->notifyDataSetChanged()V

    .line 192
    const/16 v0, 0xb

    aput-boolean v10, v2, v0

    return-void
.end method

.method private finishWithResult(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 217
    aput-boolean v4, v0, v2

    if-eqz p1, :cond_1

    .line 218
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 219
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->finish()V

    aput-boolean v4, v0, v4

    .line 225
    :goto_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void

    .line 222
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->finish()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->root:Ljava/io/File;

    .line 87
    sget-object v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;->EXT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ext:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ext:Ljava/lang/String;

    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ext:Ljava/lang/String;

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->ext:Ljava/lang/String;

    aput-boolean v4, v1, v4

    .line 89
    :cond_1
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    if-nez p1, :cond_2

    .line 90
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/github/wdkapps/fillup/FileSelectionActivity;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 96
    :goto_0
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->textviewPath:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->listview:Landroid/widget/ListView;

    .line 100
    new-instance v0, Lcom/github/wdkapps/fillup/FileSelectionListAdapter;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->filelist:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/github/wdkapps/fillup/FileSelectionListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->adapter:Lcom/github/wdkapps/fillup/FileSelectionListAdapter;

    .line 101
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->listview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->adapter:Lcom/github/wdkapps/fillup/FileSelectionListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->chooseDirectory(Ljava/io/File;)V

    .line 106
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/github/wdkapps/fillup/FileSelectionActivity;->PATH:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 117
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x5

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 201
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    if-eqz v2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->chooseDirectory(Ljava/io/File;)V

    aput-boolean v4, v1, v4

    .line 209
    :cond_1
    :goto_0
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    if-eqz v2, :cond_3

    .line 205
    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->chooseDirectory(Ljava/io/File;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    if-eqz v2, :cond_1

    .line 207
    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->finishWithResult(Ljava/io/File;)V

    aput-boolean v4, v1, v5

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    sget-object v1, Lcom/github/wdkapps/fillup/FileSelectionActivity;->PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity;->path:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
