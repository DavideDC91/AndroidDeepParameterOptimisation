.class public final enum Lcom/androidplot/xy/XYFramingModel;
.super Ljava/lang/Enum;
.source "XYFramingModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/XYFramingModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EDGE:Lcom/androidplot/xy/XYFramingModel;

.field public static final enum ORIGIN:Lcom/androidplot/xy/XYFramingModel;

.field private static final synthetic a:[Lcom/androidplot/xy/XYFramingModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/xy/XYFramingModel;

    const-string v1, "ORIGIN"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYFramingModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    .line 21
    new-instance v0, Lcom/androidplot/xy/XYFramingModel;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/XYFramingModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/XYFramingModel;

    sget-object v1, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/XYFramingModel;->a:[Lcom/androidplot/xy/XYFramingModel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/xy/XYFramingModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->a:[Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYFramingModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method
