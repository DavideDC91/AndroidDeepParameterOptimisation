.class public abstract Lcom/androidplot/ui/PositionMetric;
.super Lcom/androidplot/ui/a;
.source "PositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/PositionMetric$a;,
        Lcom/androidplot/ui/PositionMetric$LayoutMode;,
        Lcom/androidplot/ui/PositionMetric$Origin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LayoutType:Ljava/lang/Enum;",
        ">",
        "Lcom/androidplot/ui/a",
        "<T",
        "LayoutType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/a;-><init>(FLjava/lang/Enum;)V

    .line 34
    return-void
.end method

.method protected static a(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/androidplot/ui/PositionMetric$a;->a:[I

    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown LayoutMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Relative layout values must be within the range of -1 to 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    :pswitch_1
    return-void

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(FLcom/androidplot/ui/PositionMetric$Origin;)F
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/androidplot/ui/PositionMetric$a;->b:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/PositionMetric$Origin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 62
    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v0

    sub-float v0, p1, v0

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(FLcom/androidplot/ui/PositionMetric$Origin;)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 73
    sget-object v0, Lcom/androidplot/ui/PositionMetric$a;->b:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/PositionMetric$Origin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v0

    mul-float/2addr v0, p1

    .line 79
    :goto_0
    return v0

    .line 77
    :pswitch_1
    div-float v0, p1, v2

    div-float v1, p1, v2

    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p1

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getLayoutType()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/androidplot/ui/a;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()F
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/androidplot/ui/a;->getValue()F

    move-result v0

    return v0
.end method

.method public bridge synthetic set(FLjava/lang/Enum;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/androidplot/ui/a;->set(FLjava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic setLayoutType(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/androidplot/ui/a;->setLayoutType(Ljava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic setValue(F)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/androidplot/ui/a;->setValue(F)V

    return-void
.end method
