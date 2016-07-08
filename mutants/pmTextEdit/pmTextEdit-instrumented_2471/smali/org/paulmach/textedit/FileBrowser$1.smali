.class Lorg/paulmach/textedit/FileBrowser$1;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/FileBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x6e638edb1bf8c848L


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/FileBrowser;


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

    sput-object v0, Lorg/paulmach/textedit/FileBrowser$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FileBrowser$1"

    const-wide v2, 0x3bf444bbfbacab2bL    # 6.867232678546879E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/FileBrowser;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 72
    iput-object p1, p0, Lorg/paulmach/textedit/FileBrowser$1;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 75
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser$1;->this$0:Lorg/paulmach/textedit/FileBrowser;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$1;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, v0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/paulmach/textedit/FileBrowser;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$1;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-virtual {v0}, Lorg/paulmach/textedit/FileBrowser;->finish()V

    .line 77
    const/4 v0, 0x0

    aput-boolean v4, v1, v0

    return-void
.end method
