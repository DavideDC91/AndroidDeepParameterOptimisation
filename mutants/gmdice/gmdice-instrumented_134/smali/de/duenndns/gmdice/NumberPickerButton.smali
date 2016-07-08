.class public Lde/duenndns/gmdice/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x527dc63ba090bcd7L


# instance fields
.field private mNumberPicker:Lde/duenndns/gmdice/NumberPicker;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xa

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

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

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/NumberPickerButton"

    const-wide v2, -0x6fdda48ae12c6916L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private cancelLongpress()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 78
    const v1, 0x7f060009

    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPickerButton;->getId()I

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_2

    .line 79
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPickerButton;->mNumberPicker:Lde/duenndns/gmdice/NumberPicker;

    invoke-virtual {v1}, Lde/duenndns/gmdice/NumberPicker;->cancelIncrement()V

    aput-boolean v4, v0, v4

    .line 83
    :cond_1
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void

    .line 80
    :cond_2
    const v1, 0x7f06000b

    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPickerButton;->getId()I

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPickerButton;->mNumberPicker:Lde/duenndns/gmdice/NumberPicker;

    invoke-virtual {v1}, Lde/duenndns/gmdice/NumberPicker;->cancelDecrement()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eq v1, v4, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    aput-boolean v3, v0, v3

    if-ne v1, v3, :cond_2

    .line 73
    :cond_1
    invoke-direct {p0}, Lde/duenndns/gmdice/NumberPickerButton;->cancelLongpress()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 75
    :cond_2
    aput-boolean v3, v0, v4

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 63
    const/16 v1, 0x17

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eq p1, v1, :cond_1

    const/16 v1, 0x42

    aput-boolean v3, v0, v3

    if-ne p1, v1, :cond_2

    .line 65
    :cond_1
    invoke-direct {p0}, Lde/duenndns/gmdice/NumberPickerButton;->cancelLongpress()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 67
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 51
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 57
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setNumberPicker(Lde/duenndns/gmdice/NumberPicker;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPickerButton;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPickerButton;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 46
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPickerButton;->mNumberPicker:Lde/duenndns/gmdice/NumberPicker;

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
