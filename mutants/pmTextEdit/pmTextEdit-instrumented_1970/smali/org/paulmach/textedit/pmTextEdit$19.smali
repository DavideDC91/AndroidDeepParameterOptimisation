.class Lorg/paulmach/textedit/pmTextEdit$19;
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

.field private static final serialVersionUID:J = 0x4d15883079bd3d47L


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

    sput-object v0, Lorg/paulmach/textedit/pmTextEdit$19;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/pmTextEdit$19"

    const-wide v2, 0x3bf444bb9866a4d5L    # 6.867230673733822E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$19;->$VRi()[[Z

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

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$19;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$19;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1457
    iput-object p1, p0, Lorg/paulmach/textedit/pmTextEdit$19;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/pmTextEdit$19;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/pmTextEdit$19;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 1459
    iget-object v1, p0, Lorg/paulmach/textedit/pmTextEdit$19;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/paulmach/textedit/pmTextEdit$19;->this$0:Lorg/paulmach/textedit/pmTextEdit;

    iget-object v3, v3, Lorg/paulmach/textedit/pmTextEdit;->filename:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/paulmach/textedit/pmTextEdit;->lastModified:J

    .line 1460
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
