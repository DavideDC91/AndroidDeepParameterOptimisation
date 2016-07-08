.class Lorg/paulmach/textedit/FileBrowser$9;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/FileBrowser;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x1abd85d43dfc86fcL


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/FileBrowser;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    filled-new-array {v4}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/FileBrowser$9;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FileBrowser$9"

    const-wide v2, 0x161de0a686823e16L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$9;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 226
    iput-object p1, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$9;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$9;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 229
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, v0, Lorg/paulmach/textedit/FileBrowser;->mkDIRView:Landroid/view/View;

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v4, v4, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    aput-boolean v5, v1, v6

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/paulmach/textedit/FileBrowser;->showDialog(I)V

    aput-boolean v5, v1, v5

    .line 236
    :cond_1
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$9;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, v0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v6}, Lorg/paulmach/textedit/FileBrowser;->access$200(Lorg/paulmach/textedit/FileBrowser;Ljava/lang/String;Z)V

    .line 237
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    return-void
.end method
