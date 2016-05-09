.class Lcom/markuspage/android/atimetracker/Tasks$3;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks;->openChangeViewDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x351f800ca7ec8acdL


# instance fields
.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$3"

    const-wide v2, -0x7d60f91f8f336076L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 473
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x2

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v6, v0, v7

    .line 475
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    const-string v1, "view_mode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    const/4 v0, 0x0

    aput-boolean v7, v6, v0

    if-ne p2, v8, :cond_1

    .line 479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 480
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    new-instance v2, Lcom/markuspage/android/atimetracker/Tasks$3$1;

    invoke-direct {v2, p0}, Lcom/markuspage/android/atimetracker/Tasks$3$1;-><init>(Lcom/markuspage/android/atimetracker/Tasks$3;)V

    .line 519
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 520
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 521
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    aput-boolean v7, v6, v7

    .line 525
    :goto_0
    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0, p2}, Lcom/markuspage/android/atimetracker/Tasks;->access$1100(Lcom/markuspage/android/atimetracker/Tasks;I)V

    aput-boolean v7, v6, v4

    goto :goto_0
.end method
