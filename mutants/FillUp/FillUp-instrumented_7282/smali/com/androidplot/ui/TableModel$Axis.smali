.class public final enum Lcom/androidplot/ui/TableModel$Axis;
.super Ljava/lang/Enum;
.source "TableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/TableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/TableModel$Axis;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLUMN:Lcom/androidplot/ui/TableModel$Axis;

.field public static final enum ROW:Lcom/androidplot/ui/TableModel$Axis;

.field private static final synthetic a:[Lcom/androidplot/ui/TableModel$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/androidplot/ui/TableModel$Axis;

    const-string v1, "ROW"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TableModel$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    .line 44
    new-instance v0, Lcom/androidplot/ui/TableModel$Axis;

    const-string v1, "COLUMN"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/TableModel$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/ui/TableModel$Axis;

    sget-object v1, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/ui/TableModel$Axis;->a:[Lcom/androidplot/ui/TableModel$Axis;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TableModel$Axis;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/androidplot/ui/TableModel$Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/TableModel$Axis;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/TableModel$Axis;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/androidplot/ui/TableModel$Axis;->a:[Lcom/androidplot/ui/TableModel$Axis;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TableModel$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TableModel$Axis;

    return-object v0
.end method
