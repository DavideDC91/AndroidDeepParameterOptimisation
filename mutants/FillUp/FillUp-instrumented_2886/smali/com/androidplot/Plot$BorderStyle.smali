.class public final enum Lcom/androidplot/Plot$BorderStyle;
.super Ljava/lang/Enum;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/Plot$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/androidplot/Plot$BorderStyle;

.field public static final enum ROUNDED:Lcom/androidplot/Plot$BorderStyle;

.field public static final enum SQUARE:Lcom/androidplot/Plot$BorderStyle;

.field private static final synthetic a:[Lcom/androidplot/Plot$BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/androidplot/Plot$BorderStyle;

    const-string v1, "ROUNDED"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    .line 58
    new-instance v0, Lcom/androidplot/Plot$BorderStyle;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    .line 59
    new-instance v0, Lcom/androidplot/Plot$BorderStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/Plot$BorderStyle;

    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/Plot$BorderStyle;->a:[Lcom/androidplot/Plot$BorderStyle;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/Plot$BorderStyle;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/androidplot/Plot$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Plot$BorderStyle;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/Plot$BorderStyle;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->a:[Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v0}, [Lcom/androidplot/Plot$BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/Plot$BorderStyle;

    return-object v0
.end method
