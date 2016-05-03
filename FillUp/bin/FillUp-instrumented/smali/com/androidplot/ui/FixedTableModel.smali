.class public Lcom/androidplot/ui/FixedTableModel;
.super Lcom/androidplot/ui/TableModel;
.source "FixedTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/FixedTableModel$b;,
        Lcom/androidplot/ui/FixedTableModel$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F


# virtual methods
.method public getCellHeight()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel;->b:F

    return v0
.end method

.method public getCellWidth()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel;->a:F

    return v0
.end method

.method public getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/androidplot/ui/FixedTableModel$a;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/ui/FixedTableModel$a;-><init>(Lcom/androidplot/ui/FixedTableModel;Lcom/androidplot/ui/FixedTableModel;Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method public setCellHeight(F)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/androidplot/ui/FixedTableModel;->b:F

    .line 51
    return-void
.end method

.method public setCellWidth(F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/androidplot/ui/FixedTableModel;->a:F

    .line 43
    return-void
.end method
