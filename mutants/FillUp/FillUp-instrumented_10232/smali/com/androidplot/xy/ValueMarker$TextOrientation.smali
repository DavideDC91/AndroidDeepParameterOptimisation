.class public final enum Lcom/androidplot/xy/ValueMarker$TextOrientation;
.super Ljava/lang/Enum;
.source "ValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/ValueMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/ValueMarker$TextOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HORIZONTAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

.field public static final enum VERTICAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

.field private static final synthetic a:[Lcom/androidplot/xy/ValueMarker$TextOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/ValueMarker$TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;->HORIZONTAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    .line 39
    new-instance v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/ValueMarker$TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;->VERTICAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/ValueMarker$TextOrientation;

    sget-object v1, Lcom/androidplot/xy/ValueMarker$TextOrientation;->HORIZONTAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/ValueMarker$TextOrientation;->VERTICAL:Lcom/androidplot/xy/ValueMarker$TextOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;->a:[Lcom/androidplot/xy/ValueMarker$TextOrientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/ValueMarker$TextOrientation;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/ValueMarker$TextOrientation;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/androidplot/xy/ValueMarker$TextOrientation;->a:[Lcom/androidplot/xy/ValueMarker$TextOrientation;

    invoke-virtual {v0}, [Lcom/androidplot/xy/ValueMarker$TextOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/ValueMarker$TextOrientation;

    return-object v0
.end method
