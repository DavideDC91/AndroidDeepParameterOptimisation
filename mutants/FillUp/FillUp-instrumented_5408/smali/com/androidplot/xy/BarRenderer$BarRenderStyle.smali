.class public final enum Lcom/androidplot/xy/BarRenderer$BarRenderStyle;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarRenderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/BarRenderer$BarRenderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OVERLAID:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

.field public static final enum SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

.field public static final enum STACKED:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

.field private static final synthetic a:[Lcom/androidplot/xy/BarRenderer$BarRenderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    const-string v1, "OVERLAID"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    .line 44
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    const-string v1, "STACKED"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->STACKED:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    .line 45
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    const-string v1, "SIDE_BY_SIDE"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->STACKED:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->a:[Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$BarRenderStyle;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$BarRenderStyle;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->a:[Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$BarRenderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$BarRenderStyle;

    return-object v0
.end method
