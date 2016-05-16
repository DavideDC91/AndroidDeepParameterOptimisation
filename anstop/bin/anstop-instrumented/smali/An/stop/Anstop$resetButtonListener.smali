.class LAn/stop/Anstop$resetButtonListener;
.super Ljava/lang/Object;
.source "Anstop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Anstop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resetButtonListener"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x22ebad11e8745f94L


# instance fields
.field final synthetic this$0:LAn/stop/Anstop;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Anstop$resetButtonListener;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/Anstop$resetButtonListener"

    const-wide v2, 0x5a80e5f9e76bdc07L    # 9.15107961460604E127

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Anstop$resetButtonListener;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(LAn/stop/Anstop;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/Anstop$resetButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$resetButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1179
    iput-object p1, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(LAn/stop/Anstop;LAn/stop/Anstop$1;)V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/Anstop$resetButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$resetButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1179
    invoke-direct {p0, p1}, LAn/stop/Anstop$resetButtonListener;-><init>(LAn/stop/Anstop;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, LAn/stop/Anstop$resetButtonListener;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Anstop$resetButtonListener;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 1183
    iget-object v1, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->isStarted:Z

    aput-boolean v4, v0, v3

    if-nez v1, :cond_2

    .line 1184
    iget-object v1, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->clock:LAn/stop/Clock;

    iget-boolean v1, v1, LAn/stop/Clock;->wasStarted:Z

    aput-boolean v4, v0, v4

    if-nez v1, :cond_1

    .line 1185
    iget-object v1, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    invoke-static {v1}, LAn/stop/Anstop;->access$500(LAn/stop/Anstop;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 1209
    :goto_0
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 1187
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1188
    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1189
    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1191
    const v2, 0x7f070001

    new-instance v3, LAn/stop/Anstop$resetButtonListener$1;

    invoke-direct {v3, p0}, LAn/stop/Anstop$resetButtonListener$1;-><init>(LAn/stop/Anstop$resetButtonListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1197
    const/high16 v2, 0x1040000

    new-instance v3, LAn/stop/Anstop$resetButtonListener$2;

    invoke-direct {v3, p0}, LAn/stop/Anstop$resetButtonListener$2;-><init>(LAn/stop/Anstop$resetButtonListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v1, p0, LAn/stop/Anstop$resetButtonListener;->this$0:LAn/stop/Anstop;

    iget-object v1, v1, LAn/stop/Anstop;->mContext:Landroid/content/Context;

    const v2, 0x7f070003

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
