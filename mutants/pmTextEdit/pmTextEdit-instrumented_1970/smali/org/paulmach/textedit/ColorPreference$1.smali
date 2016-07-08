.class Lorg/paulmach/textedit/ColorPreference$1;
.super Ljava/lang/Object;
.source "ColorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/ColorPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x76d329ee3e9037bL


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/ColorPreference;


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

    sput-object v0, Lorg/paulmach/textedit/ColorPreference$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/ColorPreference$1"

    const-wide v2, 0x3bf444bd046766bbL    # 6.867238024715031E-20

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/ColorPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/ColorPreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 63
    iput-object p1, p0, Lorg/paulmach/textedit/ColorPreference$1;->this$0:Lorg/paulmach/textedit/ColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/ColorPreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 66
    iget-object v1, p0, Lorg/paulmach/textedit/ColorPreference$1;->this$0:Lorg/paulmach/textedit/ColorPreference;

    invoke-virtual {v1}, Lorg/paulmach/textedit/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lorg/paulmach/textedit/ColorPreference$1;->this$0:Lorg/paulmach/textedit/ColorPreference;

    iget-object v2, v2, Lorg/paulmach/textedit/ColorPreference;->attribute:Ljava/lang/String;

    iget-object v3, p0, Lorg/paulmach/textedit/ColorPreference$1;->this$0:Lorg/paulmach/textedit/ColorPreference;

    iget v3, v3, Lorg/paulmach/textedit/ColorPreference;->color:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iget-object v1, p0, Lorg/paulmach/textedit/ColorPreference$1;->this$0:Lorg/paulmach/textedit/ColorPreference;

    invoke-static {v1}, Lorg/paulmach/textedit/ColorPreference;->access$000(Lorg/paulmach/textedit/ColorPreference;)V

    .line 71
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    return-void
.end method
