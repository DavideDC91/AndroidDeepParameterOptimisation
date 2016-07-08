.class public final enum Lcom/androidplot/xy/XYStepMode;
.super Ljava/lang/Enum;
.source "XYStepMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/XYStepMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INCREMENT_BY_PIXELS:Lcom/androidplot/xy/XYStepMode;

.field public static final enum INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

.field public static final enum SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

.field private static final synthetic a:[Lcom/androidplot/xy/XYStepMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/androidplot/xy/XYStepMode;

    const-string v1, "SUBDIVIDE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYStepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    .line 26
    new-instance v0, Lcom/androidplot/xy/XYStepMode;

    const-string v1, "INCREMENT_BY_VAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/XYStepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

    .line 27
    new-instance v0, Lcom/androidplot/xy/XYStepMode;

    const-string v1, "INCREMENT_BY_PIXELS"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/XYStepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/XYStepMode;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/xy/XYStepMode;

    sget-object v1, Lcom/androidplot/xy/XYStepMode;->SUBDIVIDE:Lcom/androidplot/xy/XYStepMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/XYStepMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/XYStepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/XYStepMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/xy/XYStepMode;->a:[Lcom/androidplot/xy/XYStepMode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYStepMode;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/androidplot/xy/XYStepMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYStepMode;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/XYStepMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/androidplot/xy/XYStepMode;->a:[Lcom/androidplot/xy/XYStepMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYStepMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYStepMode;

    return-object v0
.end method
