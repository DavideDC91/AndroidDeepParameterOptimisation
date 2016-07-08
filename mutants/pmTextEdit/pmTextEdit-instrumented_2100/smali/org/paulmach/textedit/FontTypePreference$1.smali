.class Lorg/paulmach/textedit/FontTypePreference$1;
.super Ljava/lang/Object;
.source "FontTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/FontTypePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x4ab40774aa280719L


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/FontTypePreference;


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

    sput-object v0, Lorg/paulmach/textedit/FontTypePreference$1;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FontTypePreference$1"

    const-wide v2, -0x74e96943c2d4e686L    # -3.008825729380139E-255

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference$1;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/FontTypePreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FontTypePreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 49
    iput-object p1, p0, Lorg/paulmach/textedit/FontTypePreference$1;->this$0:Lorg/paulmach/textedit/FontTypePreference;

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

    sget-object v0, Lorg/paulmach/textedit/FontTypePreference$1;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontTypePreference$1;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 52
    iget-object v1, p0, Lorg/paulmach/textedit/FontTypePreference$1;->this$0:Lorg/paulmach/textedit/FontTypePreference;

    invoke-virtual {v1}, Lorg/paulmach/textedit/FontTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lorg/paulmach/textedit/FontTypePreference$1;->this$0:Lorg/paulmach/textedit/FontTypePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontTypePreference;->access$000(Lorg/paulmach/textedit/FontTypePreference;)I

    move-result v2

    const/4 v3, 0x0

    aput-boolean v4, v0, v3

    if-nez v2, :cond_1

    .line 55
    const-string v2, "font"

    const-string v3, "Monospace"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aput-boolean v4, v0, v4

    .line 61
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object v1, p0, Lorg/paulmach/textedit/FontTypePreference$1;->this$0:Lorg/paulmach/textedit/FontTypePreference;

    invoke-static {v1}, Lorg/paulmach/textedit/FontTypePreference;->access$100(Lorg/paulmach/textedit/FontTypePreference;)V

    .line 64
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 56
    :cond_1
    iget-object v2, p0, Lorg/paulmach/textedit/FontTypePreference$1;->this$0:Lorg/paulmach/textedit/FontTypePreference;

    invoke-static {v2}, Lorg/paulmach/textedit/FontTypePreference;->access$000(Lorg/paulmach/textedit/FontTypePreference;)I

    move-result v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-ne v2, v4, :cond_2

    .line 57
    const-string v2, "font"

    const-string v3, "Serif"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "font"

    const-string v3, "Sans Serif"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    goto :goto_0
.end method
