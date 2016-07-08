.class public final enum Lcom/androidplot/pie/PieRenderer$DonutMode;
.super Ljava/lang/Enum;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/pie/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DonutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/pie/PieRenderer$DonutMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DP:Lcom/androidplot/pie/PieRenderer$DonutMode;

.field public static final enum PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

.field public static final enum PIXELS:Lcom/androidplot/pie/PieRenderer$DonutMode;

.field private static final synthetic a:[Lcom/androidplot/pie/PieRenderer$DonutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/androidplot/pie/PieRenderer$DonutMode;

    const-string v1, "PERCENT"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/pie/PieRenderer$DonutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 39
    new-instance v0, Lcom/androidplot/pie/PieRenderer$DonutMode;

    const-string v1, "DP"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/pie/PieRenderer$DonutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->DP:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 40
    new-instance v0, Lcom/androidplot/pie/PieRenderer$DonutMode;

    const-string v1, "PIXELS"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/pie/PieRenderer$DonutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->PIXELS:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/pie/PieRenderer$DonutMode;

    sget-object v1, Lcom/androidplot/pie/PieRenderer$DonutMode;->PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/pie/PieRenderer$DonutMode;->DP:Lcom/androidplot/pie/PieRenderer$DonutMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/pie/PieRenderer$DonutMode;->PIXELS:Lcom/androidplot/pie/PieRenderer$DonutMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->a:[Lcom/androidplot/pie/PieRenderer$DonutMode;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/pie/PieRenderer$DonutMode;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/PieRenderer$DonutMode;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/pie/PieRenderer$DonutMode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->a:[Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-virtual {v0}, [Lcom/androidplot/pie/PieRenderer$DonutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/pie/PieRenderer$DonutMode;

    return-object v0
.end method
