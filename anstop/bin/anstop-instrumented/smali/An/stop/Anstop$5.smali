.class LAn/stop/Anstop$5;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAn/stop/Anstop;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0xc7773bba4ecde67L


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;

.field final synthetic val$inputComm:Landroid/widget/EditText;


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

    sput-object v0, LAn/stop/Anstop$5;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$5"

    const-wide v2, 0x5551ab6641ac7fb0L    # 9.89380870275477E102

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$5;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(LAn/stop/Anstop;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 820
    iput-object p1, p0, LAn/stop/Anstop$5;->this$0:LAn/stop/Anstop;

    iput-object p2, p0, LAn/stop/Anstop$5;->val$inputComm:Landroid/widget/EditText;

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

    sget-object v0, LAn/stop/Anstop$5;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$5;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 822
    iget-object v1, p0, LAn/stop/Anstop$5;->this$0:LAn/stop/Anstop;

    iget-object v2, p0, LAn/stop/Anstop$5;->val$inputComm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LAn/stop/Anstop;->comment:Ljava/lang/String;

    .line 823
    iget-object v1, p0, LAn/stop/Anstop$5;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput-boolean v3, v0, v4

    if-nez v1, :cond_1

    .line 824
    iget-object v1, p0, LAn/stop/Anstop$5;->this$0:LAn/stop/Anstop;

    const/4 v2, 0x0

    iput-object v2, v1, LAn/stop/Anstop;->comment:Ljava/lang/String;

    aput-boolean v3, v0, v3

    .line 825
    :cond_1
    iget-object v1, p0, LAn/stop/Anstop$5;->this$0:LAn/stop/Anstop;

    invoke-virtual {v1, v4}, LAn/stop/Anstop;->updateStartTimeCommentLapsView(Z)V

    .line 826
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
