.class public Lcom/androidplot/ui/DynamicTableModel;
.super Lcom/androidplot/ui/TableModel;
.source "DynamicTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/DynamicTableModel$b;,
        Lcom/androidplot/ui/DynamicTableModel$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/DynamicTableModel;-><init>(IILcom/androidplot/ui/TableOrder;)V

    .line 61
    return-void
.end method

.method public constructor <init>(IILcom/androidplot/ui/TableOrder;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p3}, Lcom/androidplot/ui/TableModel;-><init>(Lcom/androidplot/ui/TableOrder;)V

    .line 65
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->b:I

    .line 68
    iput p2, p0, Lcom/androidplot/ui/DynamicTableModel;->a:I

    .line 72
    return-void
.end method

.method private a(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F
    .locals 4

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    sget-object v2, Lcom/androidplot/ui/DynamicTableModel$b;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 141
    :goto_0
    if-eqz v1, :cond_0

    .line 142
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 144
    :goto_1
    return v0

    .line 130
    :pswitch_0
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel;->a:I

    .line 131
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_1
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel;->b:I

    .line 136
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_0

    .line 144
    :cond_0
    int-to-float v1, p3

    div-float/2addr v0, v1

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 104
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 105
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 107
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->a(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 109
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->a(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 110
    return-object v0
.end method

.method public getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$a;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/androidplot/ui/DynamicTableModel$a;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel$a;-><init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method public bridge synthetic getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel;->getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$a;

    move-result-object v0

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->b:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->a:I

    return v0
.end method

.method public setNumColumns(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->b:I

    .line 164
    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->a:I

    .line 156
    return-void
.end method
