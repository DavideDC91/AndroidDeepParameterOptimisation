.class Lcom/irahul/worldclock/TimeZoneEdit$1;
.super Ljava/lang/Object;
.source "TimeZoneEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/irahul/worldclock/TimeZoneEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x70d1b37ba0b72573L


# instance fields
.field final synthetic this$0:Lcom/irahul/worldclock/TimeZoneEdit;


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

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/TimeZoneEdit$1"

    const-wide v2, 0x3bf444ba3cf18ea8L    # 6.867223656888123E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/irahul/worldclock/TimeZoneEdit;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 62
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEdit$1;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 65
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEdit$1;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-virtual {v1, v2}, Lcom/irahul/worldclock/TimeZoneEdit;->showDialog(I)V

    .line 66
    aput-boolean v3, v0, v2

    return-void
.end method
