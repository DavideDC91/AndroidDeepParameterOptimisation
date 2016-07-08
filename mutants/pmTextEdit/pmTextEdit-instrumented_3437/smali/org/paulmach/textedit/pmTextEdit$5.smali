.class Lorg/paulmach/textedit/pmTextEdit$5;
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

.field private static final serialVersionUID:J = 0x23c5df3df94beadL


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/pmTextEdit;

.field final synthetic val$textEntryView:Landroid/view/View;


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$5;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$5"

    const-wide v2, -0x3847e2c63e7d32fbL    # -3.205321993659917E37

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$5;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/pmTextEdit;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1052
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iput-object p2, p0, Lorg/paulmach/textedit/pmTextEdit$5;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 1055
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->val$textEntryView:Landroid/view/View;

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1057
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1059
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 1060
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    .line 1062
    aput-boolean v5, v1, v6

    if-eqz v3, :cond_2

    aput-boolean v5, v1, v5

    if-nez v4, :cond_2

    aput-boolean v5, v1, v7

    if-eqz v2, :cond_2

    .line 1064
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1065
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v8}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    .line 1094
    :cond_1
    :goto_0
    const/16 v0, 0x16

    aput-boolean v5, v1, v0

    return-void

    .line 1068
    :cond_2
    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/paulmach/textedit/pmTextEdit;->saveNote(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0, v6}, Lorg/paulmach/textedit/pmTextEdit;->access$402(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1072
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    aput-boolean v5, v1, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$300(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 1075
    :cond_3
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$000(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Lorg/paulmach/textedit/pmTextEdit;->createNew()V

    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    .line 1078
    :cond_4
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$100(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    aput-boolean v5, v1, v9

    if-eqz v0, :cond_5

    .line 1080
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$800(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0xc

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_7

    .line 1082
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v9}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    .line 1088
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0xf

    aput-boolean v5, v1, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$500(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0x10

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_6

    .line 1089
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Lorg/paulmach/textedit/pmTextEdit;->sendAttachment()V

    const/16 v0, 0x11

    aput-boolean v5, v1, v0

    .line 1091
    :cond_6
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$200(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0x12

    aput-boolean v5, v1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v0}, Lorg/paulmach/textedit/pmTextEdit;->access$600(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v0

    const/16 v2, 0x13

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v2}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Landroid/net/Uri;)V

    const/16 v0, 0x15

    aput-boolean v5, v1, v0

    goto/16 :goto_0

    .line 1084
    :cond_7
    iget-object v0, p0, Lorg/paulmach/textedit/pmTextEdit$5;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v0, v7}, Lorg/paulmach/textedit/pmTextEdit;->showDialog(I)V

    const/16 v0, 0xe

    aput-boolean v5, v1, v0

    goto :goto_1
.end method
