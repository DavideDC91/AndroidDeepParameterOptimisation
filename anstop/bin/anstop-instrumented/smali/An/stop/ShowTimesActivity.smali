.class public LAn/stop/ShowTimesActivity;
.super Landroid/app/Activity;
.source "ShowTimesActivity.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final DELETE_ITEM:I = 0xd

.field private static final EXPORT_ITEM:I = 0xf

.field private static final MENU_DELETE:I = 0xc

.field private static final MENU_EXPORT:I = 0xe

.field private static final MENU_SEND:I = 0x10

.field private static final SEND_ITEM:I = 0x11

.field private static final VIEW_SIZE:I = 0x1e

.field private static final serialVersionUID:J = 0x6c17a92a365c6147L


# instance fields
.field bodyView:Landroid/widget/TextView;

.field private dbHelper:LAn/stop/AnstopDbAdapter;

.field private mRowId:Ljava/lang/Long;

.field titleView:Landroid/widget/TextView;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/ShowTimesActivity"

    const-wide v2, 0x70dd5464fd533761L    # 4.66276731621172E235

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

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

    sget-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, LAn/stop/ShowTimesActivity;->setContentView(I)V

    .line 61
    new-instance v0, LAn/stop/AnstopDbAdapter;

    invoke-direct {v0, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 62
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    .line 64
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, LAn/stop/ShowTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, LAn/stop/ShowTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAn/stop/ShowTimesActivity;->titleView:Landroid/widget/TextView;

    .line 66
    const/4 v0, 0x0

    aput-boolean v6, v2, v0

    if-eqz p1, :cond_2

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-boolean v6, v2, v6

    :goto_0
    iput-object v0, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    .line 69
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    const/4 v3, 0x3

    aput-boolean v6, v2, v3

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, LAn/stop/ShowTimesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const/4 v3, 0x4

    aput-boolean v6, v2, v3

    if-eqz v0, :cond_3

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x5

    aput-boolean v6, v2, v0

    :goto_1
    iput-object v1, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    const/4 v0, 0x7

    aput-boolean v6, v2, v0

    .line 75
    :cond_1
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-object v1, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LAn/stop/AnstopDbAdapter;->fetch(J)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, LAn/stop/ShowTimesActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 78
    iget-object v1, p0, LAn/stop/ShowTimesActivity;->titleView:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 80
    const-string v3, "mode"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 81
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    aput-boolean v6, v2, v0

    .line 92
    :goto_2
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->close()V

    .line 94
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const/16 v0, 0xb

    aput-boolean v6, v2, v0

    return-void

    .line 66
    :cond_2
    const/4 v0, 0x2

    aput-boolean v6, v2, v0

    move-object v0, v1

    goto/16 :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x6

    aput-boolean v6, v2, v0

    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-object v1, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LAn/stop/AnstopDbAdapter;->getRowAndFormat(J)[Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 101
    const/16 v1, 0xe

    const/16 v2, 0xf

    const v3, 0x7f070016

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080052

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    const/16 v1, 0x10

    const/16 v2, 0x11

    const v3, 0x7f070023

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080050

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    const/16 v1, 0xc

    const/16 v2, 0xd

    const v3, 0x7f070015

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 105
    aput-boolean v5, v0, v4

    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v6

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    aput-boolean v1, v3, v2

    packed-switch v0, :pswitch_data_0

    .line 139
    :pswitch_0
    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    move v0, v2

    :goto_0
    return v0

    .line 112
    :pswitch_1
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    .line 113
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-object v2, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LAn/stop/AnstopDbAdapter;->delete(J)Z

    .line 114
    iget-object v0, p0, LAn/stop/ShowTimesActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->close()V

    .line 115
    invoke-virtual {p0}, LAn/stop/ShowTimesActivity;->finish()V

    .line 116
    aput-boolean v1, v3, v1

    move v0, v1

    goto :goto_0

    .line 119
    :pswitch_2
    new-instance v0, LAn/stop/ExportHelper;

    invoke-direct {v0, p0}, LAn/stop/ExportHelper;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v4, p0, LAn/stop/ShowTimesActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, LAn/stop/ExportHelper;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x2

    aput-boolean v1, v3, v4

    if-eqz v0, :cond_1

    .line 124
    const v0, 0x7f070017

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    aput-boolean v1, v3, v6

    .line 128
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 126
    :cond_1
    const v0, 0x7f070018

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 134
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, LAn/stop/ShowTimesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f070000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAn/stop/ShowTimesActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LAn/stop/ShowTimesActivity;->bodyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, LAn/stop/Anstop;->startSendMailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    sget-object v0, LAn/stop/ShowTimesActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ShowTimesActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v1, "_id"

    iget-object v2, p0, LAn/stop/ShowTimesActivity;->mRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
