.class Lorg/paulmach/textedit/pmTextEdit$4;
.super Ljava/lang/Object;
.source "pmTextEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/pmTextEdit;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x2b37407fd4cf7dcfL


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/pmTextEdit;


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$4;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$4"

    const-wide v2, -0x21df2b8113c6b60dL    # -2.626961033727325E145

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$4;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/pmTextEdit;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1096
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v6

    .line 1100
    const/4 v1, 0x0

    .line 1101
    const-string v2, "/sdcard/"

    .line 1104
    :try_start_0
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$100(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    if-nez v0, :cond_1

    .line 1105
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v4, v4, Lorg/paulmach/textedit/pmTextEdit;->openDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1108
    :goto_0
    const/4 v1, 0x4

    aput-boolean v6, v3, v1

    .line 1110
    :goto_1
    const/4 v1, 0x6

    aput-boolean v6, v3, v1

    if-eqz v0, :cond_2

    .line 1111
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    .line 1114
    :goto_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v2}, Lorg/paulmach/textedit/pmTextEdit;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lorg/paulmach/textedit/FileBrowser;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v1, v7}, Lorg/paulmach/textedit/pmTextEdit;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1117
    const/16 v0, 0x8

    aput-boolean v6, v3, v0

    return-void

    .line 1106
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$400(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    if-eqz v0, :cond_3

    .line 1107
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/paulmach/textedit/pmTextEdit$4;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v4, v4, Lorg/paulmach/textedit/pmTextEdit;->saveDialog_fne:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x3

    const/4 v4, 0x1

    :try_start_3
    aput-boolean v4, v3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v1

    :goto_3
    const/4 v1, 0x5

    aput-boolean v6, v3, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
