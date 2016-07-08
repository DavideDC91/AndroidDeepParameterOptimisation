.class Lcom/github/wdkapps/fillup/FileSelectionActivity$2;
.super Ljava/lang/Object;
.source "FileSelectionActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/FileSelectionActivity;->chooseDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x37e199b530280aebL


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/FileSelectionActivity$2"

    const-wide v2, 0x632ee8e347c24fe2L    # 5.83260571889735E169

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 153
    iput-object p1, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-static {v3}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->access$000(Lcom/github/wdkapps/fillup/FileSelectionActivity;)Ljava/lang/String;

    move-result-object v3

    aput-boolean v5, v2, v1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity$2;->this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-static {v4}, Lcom/github/wdkapps/fillup/FileSelectionActivity;->access$000(Lcom/github/wdkapps/fillup/FileSelectionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v5, v2, v5

    if-nez v3, :cond_1

    .line 157
    const/4 v0, 0x2

    aput-boolean v5, v2, v0

    move v0, v1

    .line 158
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    goto :goto_0
.end method
