.class public final enum Lcom/androidplot/ui/TableModel$CellSizingMethod;
.super Ljava/lang/Enum;
.source "TableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/TableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CellSizingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/TableModel$CellSizingMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FILL:Lcom/androidplot/ui/TableModel$CellSizingMethod;

.field public static final enum FIXED:Lcom/androidplot/ui/TableModel$CellSizingMethod;

.field private static final synthetic a:[Lcom/androidplot/ui/TableModel$CellSizingMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TableModel$CellSizingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;->FIXED:Lcom/androidplot/ui/TableModel$CellSizingMethod;

    .line 49
    new-instance v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/TableModel$CellSizingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;->FILL:Lcom/androidplot/ui/TableModel$CellSizingMethod;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/ui/TableModel$CellSizingMethod;

    sget-object v1, Lcom/androidplot/ui/TableModel$CellSizingMethod;->FIXED:Lcom/androidplot/ui/TableModel$CellSizingMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/TableModel$CellSizingMethod;->FILL:Lcom/androidplot/ui/TableModel$CellSizingMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;->a:[Lcom/androidplot/ui/TableModel$CellSizingMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TableModel$CellSizingMethod;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/TableModel$CellSizingMethod;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/androidplot/ui/TableModel$CellSizingMethod;->a:[Lcom/androidplot/ui/TableModel$CellSizingMethod;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TableModel$CellSizingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TableModel$CellSizingMethod;

    return-object v0
.end method
