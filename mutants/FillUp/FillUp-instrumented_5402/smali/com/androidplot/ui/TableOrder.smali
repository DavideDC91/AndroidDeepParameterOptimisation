.class public final enum Lcom/androidplot/ui/TableOrder;
.super Ljava/lang/Enum;
.source "TableOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/TableOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

.field public static final enum ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

.field private static final synthetic a:[Lcom/androidplot/ui/TableOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/ui/TableOrder;

    const-string v1, "ROW_MAJOR"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TableOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    .line 21
    new-instance v0, Lcom/androidplot/ui/TableOrder;

    const-string v1, "COLUMN_MAJOR"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/TableOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableOrder;->COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/ui/TableOrder;

    sget-object v1, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/TableOrder;->COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/ui/TableOrder;->a:[Lcom/androidplot/ui/TableOrder;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TableOrder;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/ui/TableOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/TableOrder;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/TableOrder;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/ui/TableOrder;->a:[Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TableOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TableOrder;

    return-object v0
.end method
