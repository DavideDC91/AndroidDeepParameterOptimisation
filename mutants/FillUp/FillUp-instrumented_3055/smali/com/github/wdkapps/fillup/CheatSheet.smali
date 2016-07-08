.class public Lcom/github/wdkapps/fillup/CheatSheet;
.super Ljava/lang/Object;
.source "CheatSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/wdkapps/fillup/CheatSheet$Trigger;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final ESTIMATED_TOAST_HEIGHT_DIPS:I = 0x30

.field private static final serialVersionUID:J = 0x4cbb229419c6eee7L


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/16 v0, 0x8

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CheatSheet"

    const-wide v2, -0x789b5b2ca4a719cbL    # -4.770068736644709E-273

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 35
    invoke-static {p0, p1}, Lcom/github/wdkapps/fillup/CheatSheet;->showCheatSheet(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static remove(Landroid/view/View;Lcom/github/wdkapps/fillup/CheatSheet$Trigger;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 143
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setup(Landroid/view/View;ILcom/github/wdkapps/fillup/CheatSheet$Trigger;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 86
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 88
    :pswitch_0
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$3;

    invoke-direct {v1, p1}, Lcom/github/wdkapps/fillup/CheatSheet$3;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-boolean v3, v0, v3

    .line 95
    :pswitch_1
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$4;

    invoke-direct {v1, p1}, Lcom/github/wdkapps/fillup/CheatSheet$4;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    aput-boolean v3, v0, v4

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setup(Landroid/view/View;Lcom/github/wdkapps/fillup/CheatSheet$Trigger;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 56
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 58
    :pswitch_0
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$1;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/CheatSheet$1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-boolean v3, v0, v3

    .line 65
    :pswitch_1
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$2;

    invoke-direct {v1}, Lcom/github/wdkapps/fillup/CheatSheet$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setup(Landroid/view/View;Ljava/lang/CharSequence;Lcom/github/wdkapps/fillup/CheatSheet$Trigger;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 116
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    invoke-virtual {p2}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    aput-boolean v3, v0, v4

    return-void

    .line 118
    :pswitch_0
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$5;

    invoke-direct {v1, p1}, Lcom/github/wdkapps/fillup/CheatSheet$5;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-boolean v3, v0, v3

    .line 125
    :pswitch_1
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$6;

    invoke-direct {v1, p1}, Lcom/github/wdkapps/fillup/CheatSheet$6;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static showCheatSheet(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v12

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    aput-boolean v1, v3, v2

    if-eqz v0, :cond_1

    .line 158
    aput-boolean v1, v3, v1

    .line 191
    :goto_0
    return v2

    .line 161
    :cond_1
    new-array v4, v11, [I

    .line 162
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 163
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 164
    invoke-virtual {p0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 169
    aget v8, v4, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 171
    const/high16 v9, 0x42400000    # 48.0f

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 174
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 175
    aget v0, v4, v1

    aput-boolean v1, v3, v11

    if-ge v0, v9, :cond_2

    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v1

    .line 176
    :goto_1
    aput-boolean v1, v3, v12

    if-eqz v0, :cond_3

    .line 179
    const/16 v0, 0x31

    div-int/lit8 v2, v8, 0x2

    sub-int v2, v6, v2

    aget v4, v4, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v7

    invoke-virtual {v10, v0, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    .line 190
    :goto_2
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 191
    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    move v2, v1

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 185
    :cond_3
    const/16 v0, 0x51

    div-int/lit8 v2, v8, 0x2

    sub-int v2, v6, v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aget v4, v4, v1

    sub-int v4, v5, v4

    invoke-virtual {v10, v0, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    goto :goto_2
.end method
