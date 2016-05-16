.class public LAn/stop/LoadActivity;
.super Landroid/app/ListActivity;
.source "LoadActivity.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final DELETE_ITEM:I = 0xd

.field private static final EXPORT_ALL_ITEM:I = 0x13

.field private static final EXPORT_ITEM:I = 0xf

.field private static final MENU_DELETE:I = 0xc

.field private static final MENU_EXPORT:I = 0xe

.field private static final MENU_SEND:I = 0x10

.field private static final SEND_ITEM:I = 0x11

.field private static final serialVersionUID:J = 0x6d645a88c9c6d4cfL


# instance fields
.field body:Ljava/lang/String;

.field private dbHelper:LAn/stop/AnstopDbAdapter;


# direct methods
.method private static $VRi()[[Z
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v3, 0x1

    filled-new-array {v5}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v5, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/LoadActivity"

    const-wide v2, 0x24759066d624fad0L    # 4.746927964001702E-133

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x9

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

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private fillData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v6, v0, v1

    .line 83
    iget-object v0, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->fetchAll()Landroid/database/Cursor;

    move-result-object v3

    .line 84
    invoke-virtual {p0, v3}, LAn/stop/LoadActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 86
    new-array v4, v8, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v4, v7

    .line 87
    new-array v5, v8, [I

    const v0, 0x7f080026

    aput v0, v5, v7

    .line 90
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030005

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 92
    invoke-virtual {p0, v0}, LAn/stop/LoadActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    aput-boolean v8, v6, v7

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v7

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    aput-boolean v1, v2, v6

    packed-switch v3, :pswitch_data_0

    .line 146
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 118
    :pswitch_1
    iget-object v3, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5}, LAn/stop/AnstopDbAdapter;->delete(J)Z

    .line 119
    invoke-direct {p0}, LAn/stop/LoadActivity;->fillData()V

    .line 120
    aput-boolean v1, v2, v1

    move v0, v1

    goto :goto_0

    .line 125
    :pswitch_2
    new-instance v3, LAn/stop/ExportHelper;

    invoke-direct {v3, p0}, LAn/stop/ExportHelper;-><init>(Landroid/content/Context;)V

    .line 128
    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5}, LAn/stop/ExportHelper;->write(J)Z

    move-result v0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    if-eqz v0, :cond_1

    .line 129
    const v0, 0x7f070017

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 133
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 131
    :cond_1
    const v0, 0x7f070018

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 139
    :pswitch_3
    iget-object v3, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5}, LAn/stop/AnstopDbAdapter;->getRowAndFormat(J)[Ljava/lang/String;

    move-result-object v0

    .line 140
    aput-boolean v1, v2, v7

    if-eqz v0, :cond_2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-virtual {p0}, LAn/stop/LoadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-static {p0, v3, v0}, LAn/stop/Anstop;->startSendMailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    .line 144
    :cond_2
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 116
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, LAn/stop/LoadActivity;->setContentView(I)V

    .line 68
    new-instance v1, LAn/stop/AnstopDbAdapter;

    invoke-direct {v1, p0}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    .line 69
    iget-object v1, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    .line 70
    invoke-direct {p0}, LAn/stop/LoadActivity;->fillData()V

    .line 71
    invoke-virtual {p0}, LAn/stop/LoadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, LAn/stop/LoadActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 74
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 98
    const/16 v1, 0xc

    const/16 v2, 0xd

    const v3, 0x7f070015

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 99
    const/16 v1, 0xe

    const/16 v2, 0xf

    const v3, 0x7f070016

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 100
    const/16 v1, 0x10

    const/16 v2, 0x11

    const v3, 0x7f070023

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 151
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 154
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 78
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 79
    iget-object v1, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v1}, LAn/stop/AnstopDbAdapter;->close()V

    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 105
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v2, LAn/stop/ShowTimesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v2, "_id"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v1}, LAn/stop/LoadActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/LoadActivity;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/LoadActivity;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v3, 0x8

    aget-object v3, v0, v3

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    aput-boolean v1, v3, v2

    packed-switch v0, :pswitch_data_0

    .line 176
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v2

    :goto_0
    return v0

    .line 161
    :pswitch_0
    iget-object v0, p0, LAn/stop/LoadActivity;->dbHelper:LAn/stop/AnstopDbAdapter;

    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->fetchAll()Landroid/database/Cursor;

    move-result-object v0

    .line 165
    new-instance v4, LAn/stop/ExportHelper;

    invoke-direct {v4, p0}, LAn/stop/ExportHelper;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v4, v0}, LAn/stop/ExportHelper;->write(Landroid/database/Cursor;)Z

    move-result v0

    aput-boolean v1, v3, v1

    if-eqz v0, :cond_1

    .line 167
    const v0, 0x7f070017

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v1, v3, v2

    .line 171
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 169
    :cond_1
    const v0, 0x7f070018

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
