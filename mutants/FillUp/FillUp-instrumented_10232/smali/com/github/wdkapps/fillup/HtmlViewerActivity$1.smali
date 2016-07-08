.class Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;
.super Ljava/lang/Object;
.source "HtmlViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/HtmlViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x1dc1ab9d26822d47L


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

.field final synthetic val$activity:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

.field final synthetic val$return_result:Z


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

    sput-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/HtmlViewerActivity$1"

    const-wide v2, -0x5fb70505340611d2L    # -3.72624510818256E-153

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/HtmlViewerActivity;ZLcom/github/wdkapps/fillup/HtmlViewerActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 67
    iput-object p1, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->this$0:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    iput-boolean p2, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->val$return_result:Z

    iput-object p3, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->val$activity:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 70
    iget-boolean v1, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->val$return_result:Z

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->this$0:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->setResult(I)V

    aput-boolean v3, v0, v3

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;->val$activity:Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->finish()V

    .line 74
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
