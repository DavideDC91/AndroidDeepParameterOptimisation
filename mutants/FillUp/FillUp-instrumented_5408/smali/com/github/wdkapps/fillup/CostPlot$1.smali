.class Lcom/github/wdkapps/fillup/CostPlot$1;
.super Ljava/lang/Object;
.source "CostPlot.java"

# interfaces
.implements Lcom/androidplot/xy/PointLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wdkapps/fillup/CostPlot;->drawPlot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x31eba90c752f74dfL


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/CostPlot;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CostPlot$1"

    const-wide v2, -0x38028eda9cc330c2L    # -6.26161595749441E38

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/github/wdkapps/fillup/CostPlot;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 180
    iput-object p1, p0, Lcom/github/wdkapps/fillup/CostPlot$1;->this$0:Lcom/github/wdkapps/fillup/CostPlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CostPlot$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 183
    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/github/wdkapps/fillup/CostPlot$1;->this$0:Lcom/github/wdkapps/fillup/CostPlot;

    invoke-static {v0}, Lcom/github/wdkapps/fillup/CostPlot;->access$000(Lcom/github/wdkapps/fillup/CostPlot;)Ljava/text/Format;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-boolean v3, v1, v3

    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0

    :cond_1
    const-string v0, ""

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method
