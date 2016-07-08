.class Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/duenndns/gmdice/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x68aaf64faac39025L


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/NumberPicker;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/NumberPicker$NumberRangeKeyListener"

    const-wide v2, -0x1eae887f8d6079a7L    # -6.139190948775266E160

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Lde/duenndns/gmdice/NumberPicker;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 375
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/NumberPicker$1;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 375
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;-><init>(Lde/duenndns/gmdice/NumberPicker;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 392
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    aput-boolean v5, v2, v3

    if-nez v0, :cond_1

    .line 394
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-boolean v5, v2, v5

    .line 397
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    if-eqz v3, :cond_2

    .line 402
    aput-boolean v5, v2, v6

    move-object v0, v1

    .line 414
    :goto_0
    return-object v0

    .line 404
    :cond_2
    iget-object v3, p0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v3, v1}, Lde/duenndns/gmdice/NumberPicker;->access$900(Lde/duenndns/gmdice/NumberPicker;Ljava/lang/String;)I

    move-result v1

    .line 411
    iget-object v3, p0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->this$0:Lde/duenndns/gmdice/NumberPicker;

    iget v3, v3, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    if-le v1, v3, :cond_3

    .line 412
    const-string v0, ""

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 414
    :cond_3
    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 385
    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->access$800()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getInputType()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 380
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
