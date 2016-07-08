.class public Lcom/androidplot/ui/XPositionMetric;
.super Lcom/androidplot/ui/PositionMetric;
.source "XPositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/XPositionMetric$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/PositionMetric",
        "<",
        "Lcom/androidplot/ui/XLayoutStyle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/XLayoutStyle;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/PositionMetric;-><init>(FLjava/lang/Enum;)V

    .line 29
    invoke-static {p1, p2}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/XLayoutStyle;)V

    .line 31
    return-void
.end method

.method private static a(FLcom/androidplot/ui/XLayoutStyle;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/androidplot/ui/XPositionMetric$a;->a:[I

    invoke-virtual {p1}, Lcom/androidplot/ui/XLayoutStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 42
    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ABSOLUTE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p0, v0}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->RELATIVE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p0, v0}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    .line 38
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


# virtual methods
.method protected final bridge synthetic a(FLjava/lang/Enum;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Lcom/androidplot/ui/XLayoutStyle;

    invoke-static {p1, p2}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/XLayoutStyle;)V

    return-void
.end method

.method public getPixelValue(F)F
    .locals 3

    .prologue
    .line 53
    sget-object v1, Lcom/androidplot/ui/XPositionMetric$a;->a:[I

    invoke-virtual {p0}, Lcom/androidplot/ui/XPositionMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/XLayoutStyle;

    invoke-virtual {v0}, Lcom/androidplot/ui/XLayoutStyle;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported LayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/ui/XPositionMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->a(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_3
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 63
    :pswitch_4
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/XPositionMetric;->b(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 53
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
