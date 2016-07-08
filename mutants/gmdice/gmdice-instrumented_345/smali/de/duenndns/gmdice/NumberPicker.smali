.class public Lde/duenndns/gmdice/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;,
        Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;,
        Lde/duenndns/gmdice/NumberPicker$Formatter;,
        Lde/duenndns/gmdice/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final DEFAULT_MAX:I = 0xc8

.field private static final DEFAULT_MIN:I = 0x0

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final DEFAULT_WRAP:Z = true

.field private static final DIGIT_CHARACTERS:[C

.field private static final TAG:Ljava/lang/String; = "NumberPicker"

.field public static final TWO_DIGIT_FORMATTER:Lde/duenndns/gmdice/NumberPicker$Formatter;


# instance fields
.field protected mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field protected mEnd:I

.field private mFormatter:Lde/duenndns/gmdice/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

.field private mListener:Lde/duenndns/gmdice/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field protected mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field protected mStart:I

.field private final mText:Landroid/widget/EditText;

.field private mWrap:Z


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x22

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/NumberPicker"

    const-wide v2, 0x69c0e082f0bf3e65L    # 2.5837013686901677E201

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x21

    aget-object v0, v0, v1

    .line 68
    new-instance v1, Lde/duenndns/gmdice/NumberPicker$1;

    invoke-direct {v1}, Lde/duenndns/gmdice/NumberPicker$1;-><init>()V

    sput-object v1, Lde/duenndns/gmdice/NumberPicker;->TWO_DIGIT_FORMATTER:Lde/duenndns/gmdice/NumberPicker$Formatter;

    .line 347
    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lde/duenndns/gmdice/NumberPicker;->DIGIT_CHARACTERS:[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 111
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lde/duenndns/gmdice/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 115
    invoke-direct {p0, p1, p2, v1}, Lde/duenndns/gmdice/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v6

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lde/duenndns/gmdice/NumberPicker$2;

    invoke-direct {v0, p0}, Lde/duenndns/gmdice/NumberPicker$2;-><init>(Lde/duenndns/gmdice/NumberPicker;)V

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 105
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lde/duenndns/gmdice/NumberPicker;->mSpeed:J

    .line 121
    invoke-virtual {p0, v4}, Lde/duenndns/gmdice/NumberPicker;->setOrientation(I)V

    .line 122
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    const v2, 0x7f030002

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v0, p0, v7}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;-><init>(Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/NumberPicker$1;)V

    .line 126
    new-instance v0, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v0, p0, v7}, Lde/duenndns/gmdice/NumberPicker$NumberRangeKeyListener;-><init>(Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/NumberPicker$1;)V

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 127
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/NumberPickerButton;

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    .line 128
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setNumberPicker(Lde/duenndns/gmdice/NumberPicker;)V

    .line 131
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/duenndns/gmdice/NumberPickerButton;

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    .line 132
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v0, p0}, Lde/duenndns/gmdice/NumberPickerButton;->setNumberPicker(Lde/duenndns/gmdice/NumberPicker;)V

    .line 136
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lde/duenndns/gmdice/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    const/16 v2, 0x1002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 141
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->isEnabled()Z

    move-result v0

    aput-boolean v4, v1, v5

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0, v5}, Lde/duenndns/gmdice/NumberPicker;->setEnabled(Z)V

    aput-boolean v4, v1, v4

    .line 145
    :cond_1
    sget-object v0, Lde/duenndns/gmdice/R$styleable;->numberpicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    .line 147
    const/16 v2, 0xc8

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    .line 148
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lde/duenndns/gmdice/NumberPicker;->mWrap:Z

    .line 149
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 150
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    iget v3, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 151
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    aput-boolean v4, v1, v6

    return-void
.end method

.method static synthetic access$000(Lde/duenndns/gmdice/NumberPicker;)Z
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x19

    aget-object v0, v0, v1

    .line 45
    iget-boolean v1, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrement:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lde/duenndns/gmdice/NumberPicker;)J
    .locals 5

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1a

    aget-object v0, v0, v1

    .line 45
    iget-wide v2, p0, Lde/duenndns/gmdice/NumberPicker;->mSpeed:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$200(Lde/duenndns/gmdice/NumberPicker;)Landroid/os/Handler;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1b

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lde/duenndns/gmdice/NumberPicker;)Z
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1c

    aget-object v0, v0, v1

    .line 45
    iget-boolean v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrement:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$600(Lde/duenndns/gmdice/NumberPicker;)[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1d

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lde/duenndns/gmdice/NumberPicker;)Landroid/text/InputFilter;
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1e

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800()[C
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x1f

    aget-object v0, v0, v1

    .line 45
    sget-object v1, Lde/duenndns/gmdice/NumberPicker;->DIGIT_CHARACTERS:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$900(Lde/duenndns/gmdice/NumberPicker;Ljava/lang/String;)I
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    aget-object v0, v0, v1

    .line 45
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v1, v0, v1

    .line 243
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mFormatter:Lde/duenndns/gmdice/NumberPicker$Formatter;

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mFormatter:Lde/duenndns/gmdice/NumberPicker$Formatter;

    .line 244
    invoke-interface {v0, p1}, Lde/duenndns/gmdice/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v3, v1, v3

    .line 245
    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x17

    aget-object v2, v0, v2

    .line 420
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aput-boolean v4, v2, v1

    if-nez v0, :cond_1

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput-boolean v4, v2, v4

    .line 442
    :goto_0
    return v0

    .line 423
    :cond_1
    const/4 v0, 0x2

    aput-boolean v4, v2, v0

    move v0, v1

    :goto_1
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    if-ge v0, v1, :cond_3

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    if-eqz v1, :cond_2

    .line 428
    iget v1, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 423
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    aput-boolean v4, v2, v1

    goto :goto_1

    .line 436
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 442
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    const/16 v1, 0x8

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v0, v0, v1

    .line 283
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    .line 284
    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-lt v1, v2, :cond_1

    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    aput-boolean v4, v0, v4

    if-gt v1, v2, :cond_1

    .line 285
    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-eq v2, v1, :cond_1

    .line 286
    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    iput v2, p0, Lde/duenndns/gmdice/NumberPicker;->mPrevious:I

    .line 287
    iput v1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 288
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->notifyChange()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 291
    :cond_1
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 292
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 305
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    aput-boolean v4, v0, v4

    .line 315
    :goto_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void

    .line 313
    :cond_1
    invoke-direct {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x16

    aget-object v0, v0, v1

    .line 344
    iput-boolean v2, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrement:Z

    .line 345
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public cancelIncrement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    aget-object v0, v0, v1

    .line 340
    iput-boolean v2, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrement:Z

    .line 341
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method protected changeCurrent(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xe

    aget-object v1, v0, v1

    .line 250
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-le p1, v0, :cond_2

    .line 251
    iget-boolean v0, p0, Lde/duenndns/gmdice/NumberPicker;->mWrap:Z

    aput-boolean v3, v1, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    :goto_0
    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 255
    :goto_1
    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    iput v2, p0, Lde/duenndns/gmdice/NumberPicker;->mPrevious:I

    .line 256
    iput v0, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 258
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->notifyChange()V

    .line 259
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 260
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void

    .line 251
    :cond_1
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 252
    :cond_2
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    if-ge p1, v0, :cond_4

    .line 253
    iget-boolean v0, p0, Lde/duenndns/gmdice/NumberPicker;->mWrap:Z

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    :goto_2
    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public getCurrent()I
    .locals 4

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    aget-object v0, v0, v1

    .line 449
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 450
    iget v1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected notifyChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 263
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mListener:Lde/duenndns/gmdice/NumberPicker$OnChangedListener;

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mListener:Lde/duenndns/gmdice/NumberPicker$OnChangedListener;

    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mPrevious:I

    iget v3, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    invoke-interface {v1, p0, v2, v3}, Lde/duenndns/gmdice/NumberPicker$OnChangedListener;->onChanged(Lde/duenndns/gmdice/NumberPicker;II)V

    aput-boolean v4, v0, v4

    .line 266
    :cond_1
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 231
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    aput-boolean v4, v0, v4

    .line 235
    :cond_1
    const v1, 0x7f060009

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_3

    .line 236
    iget v1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->changeCurrent(I)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 240
    :cond_2
    :goto_0
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void

    .line 237
    :cond_3
    const v1, 0x7f06000b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_2

    .line 238
    iget v1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lde/duenndns/gmdice/NumberPicker;->changeCurrent(I)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x12

    aget-object v0, v0, v1

    .line 299
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    if-nez p2, :cond_1

    .line 300
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPicker;->validateInput(Landroid/view/View;)V

    aput-boolean v2, v0, v2

    .line 302
    :cond_1
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x14

    aget-object v0, v0, v1

    .line 326
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 327
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 328
    const v1, 0x7f060009

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_2

    .line 329
    iput-boolean v4, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrement:Z

    .line 330
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    aput-boolean v4, v0, v4

    .line 336
    :cond_1
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return v4

    .line 331
    :cond_2
    const v1, 0x7f06000b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-ne v1, v2, :cond_1

    .line 332
    iput-boolean v4, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrement:Z

    .line 333
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 211
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 212
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 213
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCurrentAndNotify(I)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 216
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 217
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->notifyChange()V

    .line 218
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 219
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mIncrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v1, p1}, Lde/duenndns/gmdice/NumberPickerButton;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDecrementButton:Lde/duenndns/gmdice/NumberPickerButton;

    invoke-virtual {v1, p1}, Lde/duenndns/gmdice/NumberPickerButton;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setFormatter(Lde/duenndns/gmdice/NumberPicker$Formatter;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 167
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPicker;->mFormatter:Lde/duenndns/gmdice/NumberPicker$Formatter;

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOnChangeListener(Lde/duenndns/gmdice/NumberPicker$OnChangedListener;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 163
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPicker;->mListener:Lde/duenndns/gmdice/NumberPicker$OnChangedListener;

    .line 164
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRange(II)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 178
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    .line 179
    iput p2, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    .line 180
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 181
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 182
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 203
    iput-object p3, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 204
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    .line 205
    iput p2, p0, Lde/duenndns/gmdice/NumberPicker;->mEnd:I

    .line 206
    iput p1, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    .line 207
    invoke-virtual {p0}, Lde/duenndns/gmdice/NumberPicker;->updateView()V

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSpeed(J)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 227
    iput-wide p1, p0, Lde/duenndns/gmdice/NumberPicker;->mSpeed:J

    .line 228
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setWrap(Z)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 190
    iput-boolean p1, p0, Lde/duenndns/gmdice/NumberPicker;->mWrap:Z

    .line 191
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected updateView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 274
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-boolean v5, v0, v2

    if-nez v1, :cond_1

    .line 275
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    iget v2, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    invoke-direct {p0, v2}, Lde/duenndns/gmdice/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v5, v0, v5

    .line 279
    :goto_0
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 280
    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lde/duenndns/gmdice/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v2, p0, Lde/duenndns/gmdice/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lde/duenndns/gmdice/NumberPicker;->mCurrent:I

    iget v4, p0, Lde/duenndns/gmdice/NumberPicker;->mStart:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    goto :goto_0
.end method
