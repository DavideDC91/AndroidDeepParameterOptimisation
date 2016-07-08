.class public abstract Lcom/androidplot/xy/ValueMarker;
.super Ljava/lang/Object;
.source "ValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/ValueMarker$TextOrientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PositionMetricType:",
        "Lcom/androidplot/ui/PositionMetric;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Number;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/androidplot/xy/ValueMarker$TextOrientation;

.field private e:I

.field private f:Lcom/androidplot/ui/PositionMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPositionMetricType;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x10000

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/androidplot/xy/ValueMarker;->e:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->a:Ljava/lang/Number;

    .line 66
    iput-object p3, p0, Lcom/androidplot/xy/ValueMarker;->f:Lcom/androidplot/ui/PositionMetric;

    .line 67
    iput-object p2, p0, Lcom/androidplot/xy/ValueMarker;->g:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;II)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 88
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 81
    iput-object p4, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    .line 82
    iput-object p5, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    .line 84
    return-void
.end method


# virtual methods
.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMargin()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/androidplot/xy/ValueMarker;->e:I

    return v0
.end method

.method public getTextOrientation()Lcom/androidplot/xy/ValueMarker$TextOrientation;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->d:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPosition()Lcom/androidplot/ui/PositionMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPositionMetricType;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->f:Lcom/androidplot/ui/PositionMetric;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->a:Ljava/lang/Number;

    return-object v0
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->b:Landroid/graphics/Paint;

    .line 106
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->g:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTextMargin(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/androidplot/xy/ValueMarker;->e:I

    .line 147
    return-void
.end method

.method public setTextOrientation(Lcom/androidplot/xy/ValueMarker$TextOrientation;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->d:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    .line 135
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->c:Landroid/graphics/Paint;

    .line 114
    return-void
.end method

.method public setTextPosition(Lcom/androidplot/ui/PositionMetric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPositionMetricType;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->f:Lcom/androidplot/ui/PositionMetric;

    .line 155
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->a:Ljava/lang/Number;

    .line 98
    return-void
.end method
