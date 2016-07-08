.class final Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;
.super Ljava/lang/Object;
.source "MileageEstimateDialog.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/GasGauge$OnHandPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/MileageEstimateDialog;->create(Landroid/app/Activity;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x141f7a866eced230L


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


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

    sput-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/MileageEstimateDialog$1"

    const-wide v2, 0x3bf444bbb97dfc47L    # 6.867231342004841E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 169
    iput-object p1, p0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onHandPositionChanged(Lcom/github/wdkapps/fillup/GasGauge;F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 172
    invoke-static {p2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->access$100(F)Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v0

    invoke-static {v0}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->access$002(Lcom/github/wdkapps/fillup/MileageCalculation;)Lcom/github/wdkapps/fillup/MileageCalculation;

    .line 173
    iget-object v0, p0, Lcom/github/wdkapps/fillup/MileageEstimateDialog$1;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    invoke-static {}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->access$000()Lcom/github/wdkapps/fillup/MileageCalculation;

    move-result-object v2

    invoke-static {v2}, Lcom/github/wdkapps/fillup/MileageEstimateDialog;->access$200(Lcom/github/wdkapps/fillup/MileageCalculation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    return-void
.end method
