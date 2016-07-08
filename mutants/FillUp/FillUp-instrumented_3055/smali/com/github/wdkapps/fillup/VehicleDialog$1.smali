.class final Lcom/github/wdkapps/fillup/VehicleDialog$1;
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

.field private static final serialVersionUID:J = -0x1638b7f8e6183281L


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;

.field final synthetic val$textVehicleName:Landroid/widget/EditText;

.field final synthetic val$textVehicleTankSize:Landroid/widget/EditText;

.field final synthetic val$vehicle:Lcom/github/wdkapps/fillup/Vehicle;


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

    sput-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/VehicleDialog$1"

    const-wide v2, 0x2b668c08efd74c76L    # 1.2885474851189914E-99

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/EditText;Lcom/github/wdkapps/fillup/Vehicle;Lcom/github/wdkapps/fillup/VehicleDialog$Listener;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 93
    iput-object p1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$textVehicleName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$textVehicleTankSize:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    iput-object p5, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;

    iput p6, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/VehicleDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 97
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$textVehicleName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/github/wdkapps/fillup/VehicleDialog;->access$000(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    aput-boolean v6, v0, v4

    if-nez v3, :cond_1

    .line 103
    const v2, 0x7f07008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v6, v0, v6

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$textVehicleTankSize:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Lcom/github/wdkapps/fillup/VehicleDialog;->access$100(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    aput-boolean v6, v0, v5

    if-nez v4, :cond_2

    .line 111
    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v2}, Lcom/github/wdkapps/fillup/Vehicle;->setName(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-virtual {v1, v3}, Lcom/github/wdkapps/fillup/Vehicle;->setTankSize(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$listener:Lcom/github/wdkapps/fillup/VehicleDialog$Listener;

    iget v2, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$id:I

    iget-object v3, p0, Lcom/github/wdkapps/fillup/VehicleDialog$1;->val$vehicle:Lcom/github/wdkapps/fillup/Vehicle;

    invoke-interface {v1, v2, v3}, Lcom/github/wdkapps/fillup/VehicleDialog$Listener;->onVehicleDialogClosure(ILcom/github/wdkapps/fillup/Vehicle;)V

    .line 120
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
