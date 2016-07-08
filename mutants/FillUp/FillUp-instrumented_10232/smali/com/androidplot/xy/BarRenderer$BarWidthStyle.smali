.class public final enum Lcom/androidplot/xy/BarRenderer$BarWidthStyle;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarWidthStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/BarRenderer$BarWidthStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

.field public static final enum VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

.field private static final synthetic a:[Lcom/androidplot/xy/BarRenderer$BarWidthStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    const-string v1, "FIXED_WIDTH"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    .line 50
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    const-string v1, "VARIABLE_WIDTH"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->a:[Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$BarWidthStyle;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$BarWidthStyle;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->a:[Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$BarWidthStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$BarWidthStyle;

    return-object v0
.end method
