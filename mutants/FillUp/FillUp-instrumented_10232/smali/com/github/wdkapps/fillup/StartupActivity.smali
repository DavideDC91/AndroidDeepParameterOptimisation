.class public Lcom/github/wdkapps/fillup/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"

# interfaces
.implements Lcom/github/wdkapps/fillup/UnitsDialog$Listener;


# static fields
.field private static final $VRc:[[Z = null

.field protected static final DIALOG_SELECT_UNITS_ID:I = 0x1

.field protected static final SHOW_UPDATE_INFO:I = 0x1

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xc

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v6

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    new-array v1, v6, [Z

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/StartupActivity"

    const-wide v2, 0x36eab6350f7bae1dL    # 3.743113024487423E-44

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 38
    const-class v1, Lcom/github/wdkapps/fillup/StartupActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/StartupActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method protected exitApplication()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 184
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->finish()V

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected isInstallFirstStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v4

    .line 86
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->exists()Z

    move-result v0

    aput-boolean v1, v3, v2

    if-nez v0, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    aput-boolean v1, v3, v4

    return v0

    :cond_1
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method protected isUpdateFirstStart()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v7

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/github/wdkapps/fillup/StartupActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".savedVersionCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/StartupActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 101
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 104
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getVersionCode()I

    move-result v6

    .line 107
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 108
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLog;->exists()Z

    move-result v3

    aput-boolean v2, v0, v1

    if-nez v3, :cond_1

    .line 113
    aput-boolean v2, v0, v2

    move v0, v1

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_1
    const/4 v3, 0x7

    const/4 v4, 0x2

    aput-boolean v2, v0, v4

    if-lt v5, v3, :cond_2

    .line 118
    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    move v0, v1

    goto :goto_0

    .line 122
    :cond_2
    aput-boolean v2, v0, v7

    move v0, v2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    packed-switch p1, :pswitch_data_0

    .line 174
    const-string v1, "Invalid request code."

    invoke-static {p0, v1}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->startMainActivity()V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 177
    :goto_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->startMainActivity()V

    aput-boolean v2, v0, v2

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/StartupActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/github/wdkapps/fillup/CurrencyManager;->getInstance()Lcom/github/wdkapps/fillup/CurrencyManager;

    .line 54
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->isUpdateFirstStart()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->showUpdateInformation()V

    aput-boolean v3, v0, v3

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->isInstallFirstStart()Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/StartupActivity;->showDialog(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->startMainActivity()V

    .line 67
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v1, v0, v1

    .line 203
    const/4 v0, 0x0

    .line 204
    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    packed-switch p1, :pswitch_data_0

    .line 210
    const-string v2, "Invalid dialog id."

    invoke-static {p0, v2}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 212
    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0

    .line 206
    :pswitch_0
    invoke-static {p0, p0, p1}, Lcom/github/wdkapps/fillup/UnitsDialog;->create(Landroid/content/Context;Lcom/github/wdkapps/fillup/UnitsDialog$Listener;I)Landroid/app/Dialog;

    move-result-object v0

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/github/wdkapps/fillup/StartupActivity;->removeDialog(I)V

    .line 230
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUnitsDialogResponse(ILcom/github/wdkapps/fillup/UnitsDialog$Result;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 240
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/StartupActivity;->removeDialog(I)V

    .line 242
    sget-object v1, Lcom/github/wdkapps/fillup/StartupActivity$1;->$SwitchMap$com$github$wdkapps$fillup$UnitsDialog$Result:[I

    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/UnitsDialog$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 246
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 248
    const-string v2, "units"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->startMainActivity()V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->exitApplication()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected showUpdateInformation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 133
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->existsUpdateHtml()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v4, v0, v2

    if-nez v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/StartupActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".showUpdateInformation()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v2, "UPDATE HTML FILE DOES NOT EXIST"

    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->startMainActivity()V

    aput-boolean v4, v0, v4

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    sget-object v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->URL:Ljava/lang/String;

    const v3, 0x7f0700cf

    invoke-virtual {p0, v3}, Lcom/github/wdkapps/fillup/StartupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    sget-object v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->RETURN_RESULT:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1, v4}, Lcom/github/wdkapps/fillup/StartupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected startMainActivity()V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/StartupActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/StartupActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/wdkapps/fillup/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/github/wdkapps/fillup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/StartupActivity;->finish()V

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
