.class public Lcom/androidplot/ui/widget/TextLabelWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "TextLabelWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/widget/TextLabelWidget$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/androidplot/ui/TextOrientationType;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/ui/widget/TextLabelWidget;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/androidplot/ui/TextOrientationType;->HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/androidplot/ui/SizeMetrics;

    sget-object v1, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    sget-object v2, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;)V

    .line 32
    iput-boolean v4, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/SizeMetrics;)V

    .line 56
    iput-object p3, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Ljava/lang/String;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p3, p4}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 64
    :cond_0
    return-void
.end method

.method public doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 111
    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->CENTER:Lcom/androidplot/ui/AnchorPosition;

    invoke-static {p2, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/AnchorPosition;)Landroid/graphics/PointF;

    move-result-object v1

    .line 118
    const/16 v2, 0x1f

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 119
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    sget-object v1, Lcom/androidplot/ui/widget/TextLabelWidget$a;->a:[I

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    invoke-virtual {v2}, Lcom/androidplot/ui/TextOrientationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet implemented for TextLabelWidget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 124
    :pswitch_0
    const/high16 v1, -0x3d4c0000    # -90.0f

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 133
    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 127
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    :try_start_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOrientation()Lcom/androidplot/ui/TextOrientationType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPackEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    return v0
.end method

.method public onPostInit()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 71
    :cond_0
    return-void
.end method

.method public pack()V
    .locals 5

    .prologue
    .line 79
    sget-object v0, Lcom/androidplot/ui/widget/TextLabelWidget;->a:Ljava/lang/String;

    const-string v1, "Packing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/androidplot/ui/widget/TextLabelWidget;->a:Ljava/lang/String;

    const-string v1, "Attempt to pack empty text."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v1, Lcom/androidplot/ui/widget/TextLabelWidget$a;->a:[I

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    invoke-virtual {v2}, Lcom/androidplot/ui/TextOrientationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->refreshLayout()V

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v1, Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/SizeMetrics;)V

    goto :goto_1

    .line 91
    :pswitch_1
    new-instance v1, Lcom/androidplot/ui/SizeMetrics;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v4, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/SizeMetrics;)V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setAutoPackEnabled(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 176
    :cond_0
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->c:Landroid/graphics/Paint;

    .line 151
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 154
    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/androidplot/ui/TextOrientationType;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->d:Lcom/androidplot/ui/TextOrientationType;

    .line 162
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 165
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/androidplot/ui/widget/TextLabelWidget;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting textLabel to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->b:Ljava/lang/String;

    .line 181
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->e:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 184
    :cond_0
    return-void
.end method
