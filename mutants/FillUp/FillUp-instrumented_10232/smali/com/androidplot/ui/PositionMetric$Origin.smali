.class public final enum Lcom/androidplot/ui/PositionMetric$Origin;
.super Ljava/lang/Enum;
.source "PositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/PositionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/PositionMetric$Origin;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

.field public static final enum FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

.field public static final enum FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

.field private static final synthetic a:[Lcom/androidplot/ui/PositionMetric$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v1, "FROM_BEGINING"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    .line 23
    new-instance v0, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v1, "FROM_CENTER"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    .line 24
    new-instance v0, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v1, "FROM_END"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/ui/PositionMetric$Origin;

    sget-object v1, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->a:[Lcom/androidplot/ui/PositionMetric$Origin;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/PositionMetric$Origin;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/PositionMetric$Origin;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/PositionMetric$Origin;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->a:[Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {v0}, [Lcom/androidplot/ui/PositionMetric$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/PositionMetric$Origin;

    return-object v0
.end method
