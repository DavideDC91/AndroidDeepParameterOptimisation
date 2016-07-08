.class Lorg/paulmach/textedit/FileBrowser$11;
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

.field private static final serialVersionUID:J = -0x37b814f5bb352ff5L


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

    sput-object v0, Lorg/paulmach/textedit/FileBrowser$11;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FileBrowser$11"

    const-wide v2, -0x752067f2ebb857c5L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$11;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$11;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$11;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 249
    iput-object p1, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileBrowser$11;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileBrowser$11;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 251
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-static {v0}, Lorg/paulmach/textedit/FileBrowser;->access$100(Lorg/paulmach/textedit/FileBrowser;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    aput-boolean v3, v1, v4

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    invoke-static {v0}, Lorg/paulmach/textedit/FileBrowser;->access$100(Lorg/paulmach/textedit/FileBrowser;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    aput-boolean v3, v1, v3

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/paulmach/textedit/FileBrowser;->showDialog(I)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 258
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    iget-object v0, v0, Lorg/paulmach/textedit/FileBrowser;->filePath:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v4}, Lorg/paulmach/textedit/FileBrowser;->access$200(Lorg/paulmach/textedit/FileBrowser;Ljava/lang/String;Z)V

    .line 259
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lorg/paulmach/textedit/FileBrowser$11;->this$0:Lorg/paulmach/textedit/FileBrowser;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/paulmach/textedit/FileBrowser;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
