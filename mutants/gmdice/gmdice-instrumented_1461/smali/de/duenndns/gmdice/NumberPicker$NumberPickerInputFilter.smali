.class Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/duenndns/gmdice/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4c5a0145886ebd3dL


# instance fields
.field final synthetic this$0:Lde/duenndns/gmdice/NumberPicker;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "de/duenndns/gmdice/NumberPicker$NumberPickerInputFilter"

    const-wide v2, -0x5edb1bafd35fea44L    # -5.10586138118837E-149

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

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

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 354
    iput-object p1, p0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lde/duenndns/gmdice/NumberPicker;Lde/duenndns/gmdice/NumberPicker$1;)V
    .locals 3

    .prologue
    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 354
    invoke-direct {p0, p1}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;-><init>(Lde/duenndns/gmdice/NumberPicker;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v7, v0, v8

    .line 357
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v0}, Lde/duenndns/gmdice/NumberPicker;->access$600(Lde/duenndns/gmdice/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    aput-boolean v8, v7, v1

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v0}, Lde/duenndns/gmdice/NumberPicker;->access$700(Lde/duenndns/gmdice/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-boolean v8, v7, v8

    .line 371
    :goto_0
    return-object v0

    .line 360
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 365
    iget-object v0, p0, Lde/duenndns/gmdice/NumberPicker$NumberPickerInputFilter;->this$0:Lde/duenndns/gmdice/NumberPicker;

    invoke-static {v0}, Lde/duenndns/gmdice/NumberPicker;->access$600(Lde/duenndns/gmdice/NumberPicker;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    move v0, v1

    :goto_1
    const/4 v1, 0x3

    aput-boolean v8, v7, v1

    if-ge v0, v5, :cond_3

    aget-object v1, v4, v0

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x4

    aput-boolean v8, v7, v6

    if-eqz v1, :cond_2

    .line 368
    const/4 v0, 0x5

    aput-boolean v8, v7, v0

    move-object v0, v2

    goto :goto_0

    .line 365
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    aput-boolean v8, v7, v1

    goto :goto_1

    .line 371
    :cond_3
    const-string v0, ""

    const/4 v1, 0x7

    aput-boolean v8, v7, v1

    goto :goto_0
.end method
