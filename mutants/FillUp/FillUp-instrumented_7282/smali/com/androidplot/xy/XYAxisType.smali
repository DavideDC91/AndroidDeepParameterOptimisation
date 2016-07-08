.class public final enum Lcom/androidplot/xy/XYAxisType;
.super Ljava/lang/Enum;
.source "XYAxisType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/XYAxisType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOMAIN:Lcom/androidplot/xy/XYAxisType;

.field public static final enum RANGE:Lcom/androidplot/xy/XYAxisType;

.field private static final synthetic a:[Lcom/androidplot/xy/XYAxisType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/xy/XYAxisType;

    const-string v1, "DOMAIN"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYAxisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYAxisType;->DOMAIN:Lcom/androidplot/xy/XYAxisType;

    .line 21
    new-instance v0, Lcom/androidplot/xy/XYAxisType;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/XYAxisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYAxisType;->RANGE:Lcom/androidplot/xy/XYAxisType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/XYAxisType;

    sget-object v1, Lcom/androidplot/xy/XYAxisType;->DOMAIN:Lcom/androidplot/xy/XYAxisType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/XYAxisType;->RANGE:Lcom/androidplot/xy/XYAxisType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/XYAxisType;->a:[Lcom/androidplot/xy/XYAxisType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYAxisType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/xy/XYAxisType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYAxisType;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/XYAxisType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/xy/XYAxisType;->a:[Lcom/androidplot/xy/XYAxisType;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYAxisType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYAxisType;

    return-object v0
.end method
