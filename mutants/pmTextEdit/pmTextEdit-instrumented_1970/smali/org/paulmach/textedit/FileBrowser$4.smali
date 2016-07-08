.class Lorg/paulmach/textedit/FileBrowser$4;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field private static final serialVersionUID:J = -0x394ad17f77edc551L


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

    sput-object v0, Lorg/paulmach/textedit/FileBrowser$4;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FileBrowser$4"

    const-wide v2, 0x5e564ad911daccb7L    # 2.7836475387913454E146

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$4;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 110
    iput-object p1, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/paulmach/textedit/FileBrowser;->access$000(Lorg/paulmach/textedit/FileBrowser;Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    .line 123
    :goto_0
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    .line 119
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, v0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/paulmach/textedit/FileBrowser;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$4;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-virtual {v0}, Lorg/paulmach/textedit/FileBrowser;->finish()V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
