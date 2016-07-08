.class Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;
.super Ljava/lang/Object;
.source "SandwichRoulette.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maxfierke/sandwichroulette/SandwichRoulette;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x9b8e0f47098dbceL


# instance fields
.field final synthetic this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;


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

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichRoulette$4"

    const-wide v2, 0x3bf444bfecf49640L    # 6.867253060812958E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 241
    iput-object p1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

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

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v5

    .line 243
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v1, v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->open()V

    .line 245
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v2, v2, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    iget-object v3, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    invoke-static {v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->access$300(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->getSandwich(Ljava/lang/String;)Lcom/maxfierke/sandwichroulette/SandwichDataModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->saveSammich(Lcom/maxfierke/sandwichroulette/SandwichDataModel;)V

    .line 246
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    iget-object v1, v1, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->dataSrc:Lcom/maxfierke/sandwichroulette/SandwichDataSource;

    invoke-virtual {v1}, Lcom/maxfierke/sandwichroulette/SandwichDataSource;->close()V

    .line 247
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    const-string v2, "Sandwich Saved!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/maxfierke/sandwichroulette/SandwichRoulette$4;->this$0:Lcom/maxfierke/sandwichroulette/SandwichRoulette;

    invoke-static {v4}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->access$300(Lcom/maxfierke/sandwichroulette/SandwichRoulette;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was saved."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/maxfierke/sandwichroulette/SandwichRoulette;->access$200(Lcom/maxfierke/sandwichroulette/SandwichRoulette;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    aput-boolean v5, v0, v1

    return-void
.end method
