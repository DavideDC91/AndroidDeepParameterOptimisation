.class Lcom/github/wdkapps/fillup/GasRecordWatcher$1;
.super Ljava/lang/Object;
.source "GasRecordWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/GasRecordWatcher;->getPriceTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x5844358f12cbf234L


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/GasRecordWatcher;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/GasRecordWatcher$1"

    const-wide v2, -0x2f70ce9cdccc331dL    # -1.1558058421614245E80

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/GasRecordWatcher;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 103
    iput-object p1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->this$0:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 107
    iget-object v1, p0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->this$0:Lcom/github/wdkapps/fillup/GasRecordWatcher;

    invoke-virtual {v1}, Lcom/github/wdkapps/fillup/GasRecordWatcher;->priceChanged()V

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 104
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasRecordWatcher$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
