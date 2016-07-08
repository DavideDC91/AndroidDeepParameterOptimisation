.class public Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/paulmach/textedit/FontSizePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontTypeArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4937d3db04e8a768L


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

    sput-object v0, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter"

    const-wide v2, -0x1249ee41f34e3931L    # -3.1162014350818806E220

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lorg/paulmach/textedit/FontSizePreference;Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 96
    iput-object p1, p0, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->this$0:Lorg/paulmach/textedit/FontSizePreference;

    .line 97
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FontSizePreference$FontTypeArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string v4, "Extra Small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    aput-boolean v6, v2, v5

    if-eqz v4, :cond_2

    .line 113
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    aput-boolean v6, v2, v6

    .line 124
    :cond_1
    :goto_0
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-virtual {v0, v8, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    aput-boolean v6, v2, v8

    return-object v1

    .line 114
    :cond_2
    const-string v4, "Small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aput-boolean v6, v2, v5

    if-eqz v4, :cond_3

    .line 115
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    aput-boolean v6, v2, v7

    goto :goto_0

    .line 116
    :cond_3
    const-string v4, "Medium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    aput-boolean v6, v2, v5

    if-eqz v4, :cond_4

    .line 117
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 118
    :cond_4
    const-string v4, "Large"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x6

    aput-boolean v6, v2, v5

    if-eqz v4, :cond_5

    .line 119
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x7

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 120
    :cond_5
    const-string v4, "Huge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    if-eqz v3, :cond_1

    .line 121
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x9

    aput-boolean v6, v2, v3

    goto :goto_0
.end method
