.class Lorg/paulmach/textedit/FontSizePreference$1;
.super Ljava/lang/Object;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/FontSizePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x72751402eb291a79L


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/FontSizePreference;


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

    sput-object v0, Lorg/paulmach/textedit/FontSizePreference$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FontSizePreference$1"

    const-wide v2, -0x7bf6849e8bd0f38eL    # -3.268488289323413E-289

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/FontSizePreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 52
    iput-object p1, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 56
    iget-object v1, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-virtual {v1}, Lorg/paulmach/textedit/FontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontSizePreference;->access$000(Lorg/paulmach/textedit/FontSizePreference;)I

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-nez v2, :cond_2

    .line 59
    const-string v2, "fontsize"

    const-string v3, "Extra Small"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aput-boolean v4, v0, v4

    .line 69
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    iget-object v1, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v1}, Lorg/paulmach/textedit/FontSizePreference;->access$100(Lorg/paulmach/textedit/FontSizePreference;)V

    .line 72
    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontSizePreference;->access$000(Lorg/paulmach/textedit/FontSizePreference;)I

    move-result v2

    aput-boolean v4, v0, v5

    if-ne v2, v4, :cond_3

    .line 61
    const-string v2, "fontsize"

    const-string v3, "Small"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 62
    :cond_3
    iget-object v2, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontSizePreference;->access$000(Lorg/paulmach/textedit/FontSizePreference;)I

    move-result v2

    aput-boolean v4, v0, v7

    if-ne v2, v5, :cond_4

    .line 63
    const-string v2, "fontsize"

    const-string v3, "Medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 64
    :cond_4
    iget-object v2, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontSizePreference;->access$000(Lorg/paulmach/textedit/FontSizePreference;)I

    move-result v2

    const/4 v3, 0x6

    aput-boolean v4, v0, v3

    if-ne v2, v6, :cond_5

    .line 65
    const-string v2, "fontsize"

    const-string v3, "Large"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 66
    :cond_5
    iget-object v2, p0, Lorg/paulmach/textedit/FontSizePreference$1;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontSizePreference;->access$000(Lorg/paulmach/textedit/FontSizePreference;)I

    move-result v2

    const/16 v3, 0x8

    aput-boolean v4, v0, v3

    if-ne v2, v7, :cond_1

    .line 67
    const-string v2, "fontsize"

    const-string v3, "Huge"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    goto :goto_0
.end method
