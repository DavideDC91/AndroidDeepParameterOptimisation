.class final synthetic Lcom/androidplot/ui/DynamicTableModel$b;
.super Ljava/lang/Object;
.source "DynamicTableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/DynamicTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Lcom/androidplot/ui/TableOrder;->values()[Lcom/androidplot/ui/TableOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->b:[I

    :try_start_0
    sget-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->b:[I

    sget-object v1, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v1}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->b:[I

    sget-object v1, Lcom/androidplot/ui/TableOrder;->COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v1}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    :goto_1
    invoke-static {}, Lcom/androidplot/ui/TableModel$Axis;->values()[Lcom/androidplot/ui/TableModel$Axis;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->a:[I

    :try_start_2
    sget-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->a:[I

    sget-object v1, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    invoke-virtual {v1}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/androidplot/ui/DynamicTableModel$b;->a:[I

    sget-object v1, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    invoke-virtual {v1}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
