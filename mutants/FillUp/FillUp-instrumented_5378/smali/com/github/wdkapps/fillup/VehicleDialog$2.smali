.class final Lcom/github/wdkapps/fillup/VehicleDialog$2;
.super Ljava/lang/Object;
.source "VehicleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/VehicleDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;ILjava/lang/String;Lcom/github/wdkapps/fillup/Vehicle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x440c141207d0739bL


# instance fields
.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;


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

    sput-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/VehicleDialog$2"

    const-wide v2, 0x414d0d11e6a8ef73L    # 3807779.8020304977

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/VehicleDialog$Listener;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 125
    iput-object p1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;

    iput p2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 128
    iget-object v1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;

    iget v2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$2;->val$id:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/github/wdkapps/fillup/VehicleDialog$Listener;->onVehicleDialogClosure(ILcom/github/wdkapps/fillup/Vehicle;)V

    .line 129
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
