.class Lorg/paulmach/textedit/pmTextEdit$17;
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

.field private static final serialVersionUID:J = 0x14639ae4c5b37839L


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$17;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$17"

    const-wide v2, 0x43e25f84811e8ddaL    # 1.0591380044547805E19

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$17;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$17;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$17;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1414
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$17;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$17;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 1416
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$502(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1418
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$000(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    aput-boolean v4, v1, v4

    .line 1421
    :cond_1
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$300(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    aput-boolean v4, v1, v3

    if-eqz v0, :cond_2

    .line 1422
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v6}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 1424
    :cond_2
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$100(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_3

    .line 1426
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$800(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_5

    .line 1427
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 1432
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$600(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_4

    .line 1436
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$1100(Lorg/paulmach/textedit/pmTextEdit;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    if-eqz v0, :cond_6

    .line 1437
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$1100(Lorg/paulmach/textedit/pmTextEdit;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 1441
    :goto_1
    aput-boolean v4, v1, v6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v3, v3, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xd

    aput-boolean v4, v1, v3

    if-nez v2, :cond_4

    .line 1442
    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v2, v0}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Landroid/net/Uri;)V

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 1444
    :cond_4
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-void

    .line 1429
    :cond_5
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v3}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1439
    :cond_6
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$17;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    aput-boolean v4, v1, v5

    goto :goto_1
.end method
