.class public final enum Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;
.super Ljava/lang/Enum;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XYPlotOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HORIZONTAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

.field public static final enum VERTICAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

.field private static final synthetic a:[Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->HORIZONTAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->VERTICAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->HORIZONTAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->VERTICAL:Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->a:[Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->a:[Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYGraphWidget$XYPlotOrientation;

    return-object v0
.end method
