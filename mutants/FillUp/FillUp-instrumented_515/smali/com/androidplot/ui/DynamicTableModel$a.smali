.class final Lcom/androidplot/ui/DynamicTableModel$a;
.super Ljava/lang/Object;
.source "DynamicTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/DynamicTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/androidplot/ui/DynamicTableModel;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Lcom/androidplot/ui/TableOrder;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->a:Z

    .line 184
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    .line 185
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    .line 186
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    .line 198
    iput-object p2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->e:Lcom/androidplot/ui/DynamicTableModel;

    .line 199
    iput-object p3, p0, Lcom/androidplot/ui/DynamicTableModel$a;->f:Landroid/graphics/RectF;

    .line 200
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->h:Lcom/androidplot/ui/TableOrder;

    .line 204
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    .line 208
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    .line 222
    :goto_0
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->i:I

    .line 223
    invoke-virtual {p2, p3, p4}, Lcom/androidplot/ui/DynamicTableModel;->getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    .line 224
    return-void

    .line 209
    :cond_0
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 211
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    .line 212
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    .line 216
    iput p4, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->j:I

    .line 220
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->k:I

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/androidplot/ui/DynamicTableModel$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/androidplot/ui/DynamicTableModel$a;->a:Z

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    iget-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v1, Lcom/androidplot/ui/DynamicTableModel$b;->b:[I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->h:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v2}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iput-boolean v3, p0, Lcom/androidplot/ui/DynamicTableModel$a;->a:Z

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->e:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->e:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iput v3, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    :goto_1
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->d:I

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->e:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->e:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iput v3, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->b:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$a;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$a;->c:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
