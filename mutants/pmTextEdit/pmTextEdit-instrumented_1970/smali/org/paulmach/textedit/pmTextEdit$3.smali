.class Lorg/paulmach/textedit/pmTextEdit$3;
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

.field private static final serialVersionUID:J = 0x290e3d96cfa77dbbL


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/pmTextEdit;


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$3;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$3"

    const-wide v2, 0xfb35f0ccd5d9abaL    # 4.873959176859179E-233

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$3;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1119
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 1122
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$002(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1123
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$102(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1124
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$202(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1125
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$302(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1126
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$402(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1127
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->access$502(Lorg/paulmach/textedit/pmTextEdit;Z)Z

    .line 1129
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-static {v1}, Lorg/paulmach/textedit/pmTextEdit;->access$600(Lorg/paulmach/textedit/pmTextEdit;)Z

    move-result v1

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v2, p0, Lorg/paulmach/textedit/pmTextEdit$3;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-virtual {v2}, Lorg/paulmach/textedit/pmTextEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/paulmach/textedit/pmTextEdit;->openFile(Landroid/net/Uri;)V

    aput-boolean v3, v0, v3

    .line 1131
    :cond_1
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
