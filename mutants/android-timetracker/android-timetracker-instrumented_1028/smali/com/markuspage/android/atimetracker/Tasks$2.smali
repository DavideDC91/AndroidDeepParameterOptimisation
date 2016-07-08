.class Lcom/markuspage/android/atimetracker/Tasks$2;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/markuspage/android/atimetracker/Tasks;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4c68d57b2a06ee9aL


# instance fields
.field final synthetic this$0:Lcom/markuspage/android/atimetracker/Tasks;


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

    sput-object v0, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Tasks$2"

    const-wide v2, -0x7695749dd3b5d2a0L    # -2.634315625819149E-263

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/markuspage/android/atimetracker/Tasks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 361
    iput-object p1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0xb

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Tasks$2;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v9

    .line 364
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "IN CLICK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    aput-boolean v9, v4, v8

    packed-switch p2, :pswitch_data_0

    .line 442
    :goto_0
    const/16 v0, 0x28

    aput-boolean v9, v4, v0

    return-void

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    aput-boolean v9, v4, v9

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$600(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const v2, 0x7f06003d

    const v3, 0x7f06003e

    invoke-virtual {v1, v0, v2, v3}, Lcom/markuspage/android/atimetracker/Tasks;->perform(Ljava/lang/String;II)V

    aput-boolean v9, v4, v11

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    .line 375
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x3

    aput-boolean v9, v4, v1

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 378
    const-string v1, "/data/data/com.markuspage.android.atimetracker/databases/timetracker.db"

    invoke-static {v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 379
    new-instance v2, Lcom/markuspage/android/atimetracker/DBBackup;

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v5}, Lcom/markuspage/android/atimetracker/Tasks;->access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v5

    const v6, 0x7f060043

    const v7, 0x7f060045

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/markuspage/android/atimetracker/DBBackup;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/app/ProgressDialog;II)V

    .line 380
    new-array v3, v11, [Landroid/database/sqlite/SQLiteDatabase;

    aput-object v1, v3, v8

    aput-object v0, v3, v9

    invoke-virtual {v2, v3}, Lcom/markuspage/android/atimetracker/DBBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x4

    aput-boolean v9, v4, v0

    goto :goto_0

    .line 386
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/data/data/com.markuspage.android.atimetracker/databases/timetracker.db"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v5}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    :goto_1
    const/4 v2, -0x1

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    if-eq v0, v2, :cond_4

    .line 389
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 388
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 393
    :goto_2
    :try_start_3
    const-class v3, Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$902(Lcom/markuspage/android/atimetracker/Tasks;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 397
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    const/16 v0, 0x10

    const/4 v3, 0x1

    :try_start_4
    aput-boolean v3, v4, v0

    if-eqz v2, :cond_2

    .line 400
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/16 v0, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v4, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 403
    :cond_2
    const/16 v0, 0x12

    aput-boolean v9, v4, v0

    .line 405
    :goto_3
    const/16 v0, 0x14

    const/4 v2, 0x1

    :try_start_5
    aput-boolean v2, v4, v0

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/16 v0, 0x15

    const/4 v1, 0x1

    aput-boolean v1, v4, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 409
    :cond_3
    const/16 v0, 0x16

    aput-boolean v9, v4, v0

    :goto_4
    const/16 v0, 0x21

    aput-boolean v9, v4, v0

    goto/16 :goto_0

    .line 391
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    sget-object v2, Lcom/markuspage/android/atimetracker/DBBackup$Result;->SUCCESS:Lcom/markuspage/android/atimetracker/DBBackup$Result;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v5}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060043

    const v7, 0x7f060045

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/markuspage/android/atimetracker/Tasks;->finishedCopy(Lcom/markuspage/android/atimetracker/DBBackup$Result;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 397
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    const/16 v0, 0x8

    const/4 v2, 0x1

    :try_start_7
    aput-boolean v2, v4, v0

    if-eqz v3, :cond_5

    .line 400
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/16 v0, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v4, v0

    :cond_5
    const/16 v0, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v4, v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 405
    :goto_5
    const/16 v0, 0xc

    const/4 v2, 0x1

    :try_start_8
    aput-boolean v2, v4, v0

    if-eqz v1, :cond_6

    .line 406
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v4, v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 409
    :cond_6
    const/16 v0, 0xe

    aput-boolean v9, v4, v0

    goto :goto_4

    .line 402
    :catch_1
    move-exception v0

    aput-boolean v9, v4, v10

    goto :goto_5

    .line 408
    :catch_2
    move-exception v0

    const/16 v0, 0xf

    aput-boolean v9, v4, v0

    goto :goto_4

    .line 402
    :catch_3
    move-exception v0

    const/16 v0, 0x13

    aput-boolean v9, v4, v0

    goto :goto_3

    .line 408
    :catch_4
    move-exception v0

    const/16 v0, 0x17

    aput-boolean v9, v4, v0

    goto :goto_4

    .line 397
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/Tasks;->access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    const/16 v2, 0x18

    const/4 v5, 0x1

    :try_start_9
    aput-boolean v5, v4, v2

    if-eqz v3, :cond_7

    .line 400
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    :cond_7
    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v4, v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 405
    :goto_7
    const/16 v2, 0x1c

    const/4 v3, 0x1

    :try_start_a
    aput-boolean v3, v4, v2

    if-eqz v1, :cond_8

    .line 406
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v4, v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 409
    :cond_8
    const/16 v1, 0x1e

    aput-boolean v9, v4, v1

    :goto_8
    const/16 v1, 0x20

    aput-boolean v9, v4, v1

    throw v0

    .line 402
    :catch_5
    move-exception v2

    const/16 v2, 0x1b

    aput-boolean v9, v4, v2

    goto :goto_7

    .line 408
    :catch_6
    move-exception v1

    const/16 v1, 0x1f

    aput-boolean v9, v4, v1

    goto :goto_8

    .line 414
    :pswitch_3
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v1, 0x22

    aput-boolean v9, v4, v1

    if-eqz v0, :cond_9

    .line 416
    :try_start_b
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    .line 417
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 418
    const-string v1, "/data/data/com.markuspage.android.atimetracker/databases/timetracker.db"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 419
    new-instance v3, Lcom/markuspage/android/atimetracker/DBBackup;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    iget-object v6, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v6}, Lcom/markuspage/android/atimetracker/Tasks;->access$800(Lcom/markuspage/android/atimetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v6

    const v7, 0x7f060044

    const v8, 0x7f060046

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/markuspage/android/atimetracker/DBBackup;-><init>(Lcom/markuspage/android/atimetracker/Tasks;Landroid/app/ProgressDialog;II)V

    .line 420
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v5}, Lcom/markuspage/android/atimetracker/DBBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v0, 0x23

    const/4 v1, 0x1

    aput-boolean v1, v4, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 421
    :catch_7
    move-exception v0

    .line 422
    const-class v1, Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/markuspage/android/atimetracker/Tasks;->access$902(Lcom/markuspage/android/atimetracker/Tasks;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v0, v10}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/16 v0, 0x24

    aput-boolean v9, v4, v0

    goto/16 :goto_0

    .line 427
    :cond_9
    const-class v0, Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const v2, 0x7f060046

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-static {v6}, Lcom/markuspage/android/atimetracker/Tasks;->access$700(Lcom/markuspage/android/atimetracker/Tasks;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/markuspage/android/atimetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->access$902(Lcom/markuspage/android/atimetracker/Tasks;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    invoke-virtual {v0, v10}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/16 v0, 0x26

    aput-boolean v9, v4, v0

    goto/16 :goto_0

    .line 433
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const-class v2, Lcom/markuspage/android/atimetracker/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lcom/markuspage/android/atimetracker/Tasks;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0x26

    aput-boolean v9, v4, v0

    goto/16 :goto_0

    .line 437
    :pswitch_5
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Tasks$2;->this$0:Lcom/markuspage/android/atimetracker/Tasks;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/markuspage/android/atimetracker/Tasks;->showDialog(I)V

    const/16 v0, 0x27

    aput-boolean v9, v4, v0

    goto/16 :goto_0

    .line 397
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_6

    .line 392
    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
