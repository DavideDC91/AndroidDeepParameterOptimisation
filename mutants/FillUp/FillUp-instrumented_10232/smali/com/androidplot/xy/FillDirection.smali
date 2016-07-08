.class public final enum Lcom/androidplot/xy/FillDirection;
.super Ljava/lang/Enum;
.source "FillDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/FillDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/androidplot/xy/FillDirection;

.field public static final enum DOMAIN_ORIGIN:Lcom/androidplot/xy/FillDirection;

.field public static final enum LEFT:Lcom/androidplot/xy/FillDirection;

.field public static final enum RANGE_ORIGIN:Lcom/androidplot/xy/FillDirection;

.field public static final enum RIGHT:Lcom/androidplot/xy/FillDirection;

.field public static final enum TOP:Lcom/androidplot/xy/FillDirection;

.field private static final synthetic a:[Lcom/androidplot/xy/FillDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->TOP:Lcom/androidplot/xy/FillDirection;

    .line 31
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    .line 32
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->LEFT:Lcom/androidplot/xy/FillDirection;

    .line 33
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->RIGHT:Lcom/androidplot/xy/FillDirection;

    .line 34
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "DOMAIN_ORIGIN"

    invoke-direct {v0, v1, v7}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->DOMAIN_ORIGIN:Lcom/androidplot/xy/FillDirection;

    .line 35
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "RANGE_ORIGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->RANGE_ORIGIN:Lcom/androidplot/xy/FillDirection;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/androidplot/xy/FillDirection;

    sget-object v1, Lcom/androidplot/xy/FillDirection;->TOP:Lcom/androidplot/xy/FillDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/xy/FillDirection;->LEFT:Lcom/androidplot/xy/FillDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/xy/FillDirection;->RIGHT:Lcom/androidplot/xy/FillDirection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidplot/xy/FillDirection;->DOMAIN_ORIGIN:Lcom/androidplot/xy/FillDirection;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/androidplot/xy/FillDirection;->RANGE_ORIGIN:Lcom/androidplot/xy/FillDirection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidplot/xy/FillDirection;->a:[Lcom/androidplot/xy/FillDirection;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/FillDirection;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/androidplot/xy/FillDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/FillDirection;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/FillDirection;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/androidplot/xy/FillDirection;->a:[Lcom/androidplot/xy/FillDirection;

    invoke-virtual {v0}, [Lcom/androidplot/xy/FillDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/FillDirection;

    return-object v0
.end method
