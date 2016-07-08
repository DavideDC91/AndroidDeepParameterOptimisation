.class public final enum Lcom/androidplot/ui/TextOrientationType;
.super Ljava/lang/Enum;
.source "TextOrientationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/TextOrientationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

.field public static final enum VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientationType;

.field public static final enum VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientationType;

.field private static final synthetic a:[Lcom/androidplot/ui/TextOrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/ui/TextOrientationType;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TextOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientationType;->HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

    .line 21
    new-instance v0, Lcom/androidplot/ui/TextOrientationType;

    const-string v1, "VERTICAL_ASCENDING"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/TextOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientationType;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientationType;

    .line 22
    new-instance v0, Lcom/androidplot/ui/TextOrientationType;

    const-string v1, "VERTICAL_DESCENDING"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/TextOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientationType;->VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientationType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/ui/TextOrientationType;

    sget-object v1, Lcom/androidplot/ui/TextOrientationType;->HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/TextOrientationType;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/TextOrientationType;->VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/ui/TextOrientationType;->a:[Lcom/androidplot/ui/TextOrientationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TextOrientationType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/ui/TextOrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/TextOrientationType;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/TextOrientationType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/ui/TextOrientationType;->a:[Lcom/androidplot/ui/TextOrientationType;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TextOrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TextOrientationType;

    return-object v0
.end method
