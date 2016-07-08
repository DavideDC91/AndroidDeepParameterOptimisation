.class Lorg/paulmach/textedit/pmTextEdit$22;
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

.field private static final serialVersionUID:J = -0x63a270ffd20fec4fL


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$22;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$22"

    const-wide v2, -0x3c540896eb94288aL    # -1.00759744735056563E18

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$22;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$22;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$22;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1469
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

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

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$22;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$22;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 1472
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit;->access$700()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->saveNote(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$300(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    aput-boolean v3, v0, v3

    if-eqz v1, :cond_1

    .line 1475
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v1, v6}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    aput-boolean v3, v0, v4

    .line 1477
    :cond_1
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$000(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 1478
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v1}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 1480
    :cond_2
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$100(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_3

    .line 1482
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$800(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_7

    .line 1483
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v1, v5}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 1488
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    aput-boolean v3, v0, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$500(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    aput-boolean v3, v0, v6

    if-eqz v1, :cond_4

    .line 1489
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v1}, Lorg/paulmach/textedit/pmTextEdit;->sendAttachment()V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    .line 1491
    :cond_4
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$600(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_5

    .line 1492
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v2}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Landroid/net/Uri;)V

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    .line 1494
    :cond_5
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    if-nez v1, :cond_6

    .line 1495
    const-string v1, ""

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    .line 1496
    :cond_6
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void

    .line 1485
    :cond_7
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$22;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v1, v4}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
