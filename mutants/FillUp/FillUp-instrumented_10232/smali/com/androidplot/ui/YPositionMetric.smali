.class public Lcom/androidplot/ui/YPositionMetric;
.super Lcom/androidplot/ui/PositionMetric;
.source "YPositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/YPositionMetric$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/PositionMetric",
        "<",
        "Lcom/androidplot/ui/YLayoutStyle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/YLayoutStyle;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/PositionMetric;-><init>(FLjava/lang/Enum;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(FLjava/lang/Enum;)V
    .locals 2

    .prologue
    .line 22
    check-cast p2, Lcom/androidplot/ui/YLayoutStyle;

    sget-object v0, Lcom/androidplot/ui/YPositionMetric$a;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/YLayoutStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ABSOLUTE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p1, v0}, Lcom/androidplot/ui/YPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->RELATIVE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p1, v0}, Lcom/androidplot/ui/YPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getPixelValue(F)F
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/androidplot/ui/YPositionMetric$a;->a:[I

    invoke-virtual {p0}, Lcom/androidplot/ui/YPositionMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/YLayoutStyle;

    invoke-virtual {v0}, Lcom/androidplot/ui/YLayoutStyle;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported LayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/ui/YPositionMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 87
    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 93
    :pswitch_4
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_5
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/YPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
