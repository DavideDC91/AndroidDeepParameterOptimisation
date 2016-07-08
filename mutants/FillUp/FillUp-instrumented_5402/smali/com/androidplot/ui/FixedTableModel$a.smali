.class final Lcom/androidplot/ui/FixedTableModel$a;
.super Ljava/lang/Object;
.source "FixedTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/FixedTableModel;
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
.field private a:Lcom/androidplot/ui/FixedTableModel;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>(Lcom/androidplot/ui/FixedTableModel;Lcom/androidplot/ui/FixedTableModel;Landroid/graphics/RectF;I)V
    .locals 6

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/androidplot/ui/FixedTableModel$a;->a:Lcom/androidplot/ui/FixedTableModel;

    .line 62
    iput-object p3, p0, Lcom/androidplot/ui/FixedTableModel$a;->b:Landroid/graphics/RectF;

    .line 63
    iput p4, p0, Lcom/androidplot/ui/FixedTableModel$a;->d:I

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    .line 69
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->a:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->a:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    :goto_0
    return-object v0

    .line 92
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->d:I

    if-lt v0, v1, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    throw v0

    .line 95
    :cond_1
    :try_start_2
    sget-object v0, Lcom/androidplot/ui/FixedTableModel$b;->a:[I

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->a:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$a;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    goto :goto_0

    .line 100
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$a;->e:I

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$a;->d:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$a;->c()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
