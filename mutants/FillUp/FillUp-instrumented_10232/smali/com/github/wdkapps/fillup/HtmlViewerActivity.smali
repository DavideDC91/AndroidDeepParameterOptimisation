.class public Lcom/github/wdkapps/fillup/HtmlViewerActivity;
.super Landroid/app/Activity;
.source "HtmlViewerActivity.java"


# static fields
.field private static final $VRc:[[Z

.field public static final RETURN_RESULT:Ljava/lang/String;

.field public static final URL:Ljava/lang/String;


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

    sput-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/HtmlViewerActivity"

    const-wide v2, -0x16845a4937b0b3a4L    # -1.3226659760565145E200

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->URL:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".RETURN_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->RETURN_RESULT:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v5

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    sget-object v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->RETURN_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 60
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    new-instance v2, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;

    invoke-direct {v2, p0, v3, p0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity$1;-><init>(Lcom/github/wdkapps/fillup/HtmlViewerActivity;ZLcom/github/wdkapps/fillup/HtmlViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    aput-boolean v5, v1, v6

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 86
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 87
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    aput-boolean v1, v2, v4

    if-nez v3, :cond_1

    .line 88
    aput-boolean v1, v2, v1

    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 91
    :pswitch_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    aput-boolean v1, v2, v5

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    .line 96
    :goto_1
    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/github/wdkapps/fillup/HtmlViewerActivity;->finish()V

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
