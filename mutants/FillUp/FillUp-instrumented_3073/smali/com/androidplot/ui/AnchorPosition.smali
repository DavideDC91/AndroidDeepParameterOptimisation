.class public final enum Lcom/androidplot/ui/AnchorPosition;
.super Ljava/lang/Enum;
.source "AnchorPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/AnchorPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum CENTER:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum LEFT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum LEFT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum LEFT_TOP:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum RIGHT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum RIGHT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum RIGHT_TOP:Lcom/androidplot/ui/AnchorPosition;

.field public static final enum TOP_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

.field private static final synthetic a:[Lcom/androidplot/ui/AnchorPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "TOP_MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->TOP_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    .line 25
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->LEFT_TOP:Lcom/androidplot/ui/AnchorPosition;

    .line 26
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "LEFT_MIDDLE"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->LEFT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    .line 27
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->LEFT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    .line 28
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v7}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->RIGHT_TOP:Lcom/androidplot/ui/AnchorPosition;

    .line 29
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "RIGHT_MIDDLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->RIGHT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    .line 30
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->RIGHT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    .line 31
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "BOTTOM_MIDDLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->BOTTOM_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    .line 32
    new-instance v0, Lcom/androidplot/ui/AnchorPosition;

    const-string v1, "CENTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->CENTER:Lcom/androidplot/ui/AnchorPosition;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/androidplot/ui/AnchorPosition;

    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->TOP_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->LEFT_TOP:Lcom/androidplot/ui/AnchorPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->LEFT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->LEFT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidplot/ui/AnchorPosition;->RIGHT_TOP:Lcom/androidplot/ui/AnchorPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/androidplot/ui/AnchorPosition;->RIGHT_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/androidplot/ui/AnchorPosition;->RIGHT_BOTTOM:Lcom/androidplot/ui/AnchorPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/androidplot/ui/AnchorPosition;->BOTTOM_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/androidplot/ui/AnchorPosition;->CENTER:Lcom/androidplot/ui/AnchorPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidplot/ui/AnchorPosition;->a:[Lcom/androidplot/ui/AnchorPosition;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/AnchorPosition;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/androidplot/ui/AnchorPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/AnchorPosition;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/AnchorPosition;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/androidplot/ui/AnchorPosition;->a:[Lcom/androidplot/ui/AnchorPosition;

    invoke-virtual {v0}, [Lcom/androidplot/ui/AnchorPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/AnchorPosition;

    return-object v0
.end method
