.class Lcom/markuspage/android/atimetracker/Tasks$3$1;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x16299be211825acL


# instance fields
.field final synthetic this$1:Lcom/markuspage/android/atimetracker/Tasks$3;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$3$1"

    const-wide v2, 0x3bf444c3bd2529e3L    # 6.867272774808018E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Tasks$3;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 481
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->this$1:Lcom/markuspage/android/atimetracker/Tasks$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/16 v2, 0xa

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$3$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v6, v0, v7

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 486
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 487
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 488
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 489
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 490
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 491
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 492
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->this$1:Lcom/markuspage/android/atimetracker/Tasks$3;

    iget-object v1, v1, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$1000(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 493
    const-string v2, "start_date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$3$1;->this$1:Lcom/markuspage/android/atimetracker/Tasks$3;

    iget-object v1, v1, Lcom/markuspage/android/atimetracker/Tasks$3;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    new-instance v2, Lcom/markuspage/android/atimetracker/Tasks$3$1$1;

    invoke-direct {v2, p0}, Lcom/markuspage/android/atimetracker/Tasks$3$1$1;-><init>(Lcom/markuspage/android/atimetracker/Tasks$3$1;)V

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 516
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 517
    const/4 v0, 0x0

    aput-boolean v7, v6, v0

    return-void
.end method
