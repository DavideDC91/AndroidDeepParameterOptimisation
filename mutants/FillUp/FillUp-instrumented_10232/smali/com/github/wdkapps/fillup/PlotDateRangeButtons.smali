.class public Lcom/github/wdkapps/fillup/PlotDateRangeButtons;
.super Ljava/lang/Object;
.source "PlotDateRangeButtons.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0xd8dcceb24492843L


# instance fields
.field private activity:Landroid/app/Activity;

.field private button1:Landroid/widget/ToggleButton;

.field private button12:Landroid/widget/ToggleButton;

.field private button6:Landroid/widget/ToggleButton;

.field private buttonAll:Landroid/widget/ToggleButton;

.field private buttonYTD:Landroid/widget/ToggleButton;

.field private key:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/16 v0, 0x8

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/github/wdkapps/fillup/PlotDateRangeButtons"

    const-wide v2, 0x7d8d41c2ea6ed09aL    # 5.9793470761134565E296

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->activity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->key:Ljava/lang/String;

    .line 66
    const v0, 0x7f0b003d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    .line 67
    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    .line 68
    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    .line 69
    const v0, 0x7f0b0040

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    .line 70
    const v0, 0x7f0b0041

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    .line 71
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    new-instance v0, Lcom/github/wdkapps/fillup/PlotDateRange;

    invoke-direct {v0, p1, p2}, Lcom/github/wdkapps/fillup/PlotDateRange;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->setChecked(Lcom/github/wdkapps/fillup/PlotDateRange;)V

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 81
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v0, 0x1

    aput-boolean v0, v1, v3

    return-void
.end method

.method private getChecked()Landroid/widget/CompoundButton;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 108
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    aput-boolean v3, v1, v3

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    aput-boolean v3, v1, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 113
    :cond_5
    const/4 v0, 0x0

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getRangeValueForButton(Landroid/widget/CompoundButton;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v2

    .line 137
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    aput-boolean v3, v1, v4

    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v3, v1, v5

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v3, v1, v6

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b003d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setChecked(Lcom/github/wdkapps/fillup/PlotDateRange;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v1

    .line 94
    invoke-virtual {p1}, Lcom/github/wdkapps/fillup/PlotDateRange;->getValue()I

    move-result v4

    .line 95
    iget-object v5, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    aput-boolean v1, v3, v2

    if-nez v4, :cond_1

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 96
    iget-object v5, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    aput-boolean v1, v3, v7

    if-ne v4, v1, :cond_2

    aput-boolean v1, v3, v8

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 97
    iget-object v5, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    if-ne v4, v6, :cond_3

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 98
    iget-object v5, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    if-ne v4, v7, :cond_4

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    const/16 v5, 0xc

    aput-boolean v1, v3, v5

    if-ne v4, v8, :cond_5

    const/16 v2, 0xd

    aput-boolean v1, v3, v2

    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 100
    const/16 v0, 0xf

    aput-boolean v1, v3, v0

    return-void

    .line 95
    :cond_1
    aput-boolean v1, v3, v6

    move v0, v2

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 97
    :cond_3
    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_2

    .line 98
    :cond_4
    const/16 v0, 0xb

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_3

    .line 99
    :cond_5
    const/16 v4, 0xe

    aput-boolean v1, v3, v4

    goto :goto_4
.end method

.method private uncheckOtherButtons(Landroid/widget/CompoundButton;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 122
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    .line 123
    const v2, 0x7f0b003d

    aput-boolean v4, v0, v5

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button1:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    aput-boolean v4, v0, v4

    .line 124
    :cond_1
    const v2, 0x7f0b003e

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button6:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    aput-boolean v4, v0, v6

    .line 125
    :cond_2
    const v2, 0x7f0b003f

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->button12:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 126
    :cond_3
    const v2, 0x7f0b0040

    const/4 v3, 0x6

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonYTD:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 127
    :cond_4
    const v2, 0x7f0b0041

    const/16 v3, 0x8

    aput-boolean v4, v0, v3

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->buttonAll:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 128
    :cond_5
    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public getPlotDateRange()Lcom/github/wdkapps/fillup/PlotDateRange;
    .locals 4

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 184
    new-instance v1, Lcom/github/wdkapps/fillup/PlotDateRange;

    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->key:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/github/wdkapps/fillup/PlotDateRange;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 155
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    if-eqz p2, :cond_3

    .line 158
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->uncheckOtherButtons(Landroid/widget/CompoundButton;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->getRangeValueForButton(Landroid/widget/CompoundButton;)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    aput-boolean v4, v0, v4

    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 166
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 171
    :cond_1
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 176
    :cond_2
    :goto_0
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/github/wdkapps/fillup/PlotDateRangeButtons;->getChecked()Landroid/widget/CompoundButton;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    aput-boolean v4, v0, v3

    goto :goto_0
.end method
