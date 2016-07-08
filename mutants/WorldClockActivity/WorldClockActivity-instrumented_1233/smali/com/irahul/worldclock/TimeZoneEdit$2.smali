.class Lcom/irahul/worldclock/TimeZoneEdit$2;
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

.field private static final serialVersionUID:J = 0x3bfbba94e16a06ecL


# instance fields
.field final synthetic this$0:Lcom/irahul/worldclock/TimeZoneEdit;

.field final synthetic val$intent:Landroid/content/Intent;


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

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/irahul/worldclock/TimeZoneEdit$2"

    const-wide v2, -0x2f6e9dfe1cf89cbcL    # -1.2881891263604444E80

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/irahul/worldclock/TimeZoneEdit;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 102
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    iput-object p2, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEdit$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 105
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Lcom/irahul/worldclock/TimeZoneEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 107
    iget-object v2, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-static {v2}, Lcom/irahul/worldclock/TimeZoneEdit;->access$000(Lcom/irahul/worldclock/TimeZoneEdit;)Lcom/irahul/worldclock/WorldClockTimeZone;

    move-result-object v2

    aput-boolean v5, v1, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-boolean v5, v1, v5

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    aput-boolean v5, v1, v3

    if-nez v2, :cond_2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-virtual {v0}, Lcom/irahul/worldclock/TimeZoneEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f04000c

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    .line 116
    :goto_0
    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    return-void

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->val$intent:Landroid/content/Intent;

    const-string v3, "INTENT_TZ_ID_OUT"

    iget-object v4, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-static {v4}, Lcom/irahul/worldclock/TimeZoneEdit;->access$000(Lcom/irahul/worldclock/TimeZoneEdit;)Lcom/irahul/worldclock/WorldClockTimeZone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->val$intent:Landroid/content/Intent;

    const-string v3, "INTENT_TZ_DISPLAYNAME_OUT"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/irahul/worldclock/TimeZoneEdit;->setResult(ILandroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEdit$2;->this$0:Lcom/irahul/worldclock/TimeZoneEdit;

    invoke-virtual {v0}, Lcom/irahul/worldclock/TimeZoneEdit;->finish()V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    goto :goto_0
.end method
