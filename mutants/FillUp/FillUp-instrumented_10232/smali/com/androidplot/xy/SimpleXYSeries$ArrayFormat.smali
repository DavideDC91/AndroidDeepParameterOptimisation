.class public final enum Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
.super Ljava/lang/Enum;
.source "SimpleXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/SimpleXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrayFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

.field public static final enum Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

.field private static final synthetic a:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v1, "Y_VALS_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    .line 50
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v1, "XY_VALS_INTERLEAVED"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    sget-object v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->a:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->a:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v0}, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    return-object v0
.end method
