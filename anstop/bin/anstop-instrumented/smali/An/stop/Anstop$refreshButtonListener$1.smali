.class LAn/stop/Anstop$refreshButtonListener$1;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAn/stop/Anstop$refreshButtonListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x6f20ccd4e1592745L


# instance fields
.field final synthetic this$1:LAn/stop/Anstop$refreshButtonListener;


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

    sput-object v0, LAn/stop/Anstop$refreshButtonListener$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$refreshButtonListener$1"

    const-wide v2, 0x3bf444ba6e9491d3L    # 6.867224659294651E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$refreshButtonListener$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(LAn/stop/Anstop$refreshButtonListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$refreshButtonListener$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$refreshButtonListener$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1222
    iput-object p1, p0, LAn/stop/Anstop$refreshButtonListener$1;->this$1:LAn/stop/Anstop$refreshButtonListener;

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

    sget-object v0, LAn/stop/Anstop$refreshButtonListener$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$refreshButtonListener$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 1224
    iget-object v1, p0, LAn/stop/Anstop$refreshButtonListener$1;->this$1:LAn/stop/Anstop$refreshButtonListener;

    iget-object v1, v1, LAn/stop/Anstop$refreshButtonListener;->this$0:LAn/stop/Anstop;

    invoke-static {v1, v2}, LAn/stop/Anstop;->access$400(LAn/stop/Anstop;Z)V

    .line 1225
    aput-boolean v3, v0, v2

    return-void
.end method
