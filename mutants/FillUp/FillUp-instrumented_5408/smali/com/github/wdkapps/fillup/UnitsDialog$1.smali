.class final Lcom/github/wdkapps/fillup/UnitsDialog$1;
.super Ljava/lang/Object;
.source "UnitsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/UnitsDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/UnitsDialog$Listener;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x5b31bd73887fc581L


# instance fields
.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/github/wdkapps/fillup/UnitsDialog$Listener;

.field final synthetic val$res:Landroid/content/res/Resources;


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

    sput-object v0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/UnitsDialog$1"

    const-wide v2, 0x46a5d56a254959bfL    # 2.2141952538995402E32

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/github/wdkapps/fillup/UnitsDialog$Listener;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 73
    iput-object p1, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$res:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$listener:Lcom/github/wdkapps/fillup/UnitsDialog$Listener;

    iput p3, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/UnitsDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 75
    iget-object v1, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$listener:Lcom/github/wdkapps/fillup/UnitsDialog$Listener;

    iget v3, p0, Lcom/github/wdkapps/fillup/UnitsDialog$1;->val$id:I

    sget-object v4, Lcom/github/wdkapps/fillup/UnitsDialog$Result;->RESULT_SELECTED:Lcom/github/wdkapps/fillup/UnitsDialog$Result;

    aget-object v1, v1, p2

    invoke-interface {v2, v3, v4, v1}, Lcom/github/wdkapps/fillup/UnitsDialog$Listener;->onUnitsDialogResponse(ILcom/github/wdkapps/fillup/UnitsDialog$Result;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    aput-boolean v5, v0, v1

    return-void
.end method
