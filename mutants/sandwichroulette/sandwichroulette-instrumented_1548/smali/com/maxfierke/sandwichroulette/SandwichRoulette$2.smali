.class Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;
.super Ljava/lang/Object;
.source "SandwichRoulette.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maxfierke/sandwichroulette/SandwichRoulette;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x62562583fea51a69L


# instance fields
.field final synthetic this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

.field final synthetic val$sandwich:Lcom/maxfierke/sandwichroulette/SandwichDataModel;


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

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichRoulette$2"

    const-wide v2, 0x414d0d141935be05L    # 3807784.1969525837

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 200
    iput-object p1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iput-object p2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->val$sandwich:Lcom/maxfierke/sandwichroulette/SandwichDataModel;

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

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 203
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v1, v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->open()V

    .line 204
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->val$sandwich:Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    invoke-static {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->access$100(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    .line 205
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v1, v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 206
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$2;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    const-string v2, "Sandwich Deleted!"

    const-string v3, "The sandwich was removed from existence."

    invoke-static {v1, v2, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->access$200(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
