.class Lcom/irahul/worldclock/TimeZoneEdit$4;
.super Ljava/lang/Object;
.source "TimeZoneEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/irahul/worldclock/TimeZoneEdit;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x304043113dad4c81L


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

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/TimeZoneEdit$4"

    const-wide v2, 0x3bf444bc9095b4acL    # 6.867235685766464E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRi()[[Z

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

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 157
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEdit$4;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$4;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 159
    check-cast p1, Landroid/widget/ListView;

    .line 160
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    .line 161
    invoke-virtual {v0, p3}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 162
    iget-object v2, p0, Lcom/irahul/worldclock/TimeZoneEdit$4;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-static {v2, v0}, Lcom/irahul/worldclock/TimeZoneEdit;->access$100(Lcom/irahul/worldclock/TimeZoneEdit;Lcom/irahul/worldclock/WorldClockTimeZone;)V

    .line 163
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEdit$4;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-virtual {v0, v3}, Lcom/irahul/worldclock/TimeZoneEdit;->dismissDialog(I)V

    .line 164
    aput-boolean v4, v1, v3

    return-void
.end method
