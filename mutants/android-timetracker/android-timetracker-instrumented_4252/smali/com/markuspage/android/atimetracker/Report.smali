.class public Lcom/markuspage/android/atimetracker/Report;
.super Landroid/app/Activity;
.source "Report.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markuspage/android/atimetracker/Report$Day;
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final DKDKYELLOW:I

.field private static final DKYELLOW:I

.field private static final FORMAT:Ljava/lang/String; = "%02d:%02d"

.field private static final PAD:I = 0x2

.field private static final RPAD:I = 0x4

.field static final SDCARD:Ljava/lang/String; = "/sdcard/"

.field private static final TITLE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final WEEK_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ZERO_TIME:Ljava/lang/String; = "  :  "


# instance fields
.field private final dateViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

.field private decimalTime:Z

.field private exportMessage:Ljava/lang/String;

.field private exportSucceed:Landroid/app/AlertDialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private roundMinutes:I

.field private startDay:I

.field private weekEnd:Ljava/util/Calendar;

.field private weekStart:Ljava/util/Calendar;

.field private weekView:Landroid/widget/Button;


# direct methods
.method private static $VRi()[[Z
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v0, 0x14

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

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

    new-array v1, v5, [Z

    aput-object v1, v0, v6

    new-array v1, v6, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v1, v1, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xf

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xc

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/Report"

    const-wide v2, -0x5f756d9e5eaa8bf1L    # -6.341809753271856E-152

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x4b

    const/16 v4, 0x64

    const/4 v3, 0x0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x13

    aget-object v0, v0, v1

    .line 116
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "w"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    .line 117
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, MMM d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 317
    invoke-static {v4, v5, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/markuspage/android/atimetracker/Report;->DKDKYELLOW:I

    .line 364
    const/16 v1, 0x96

    invoke-static {v1, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/markuspage/android/atimetracker/Report;->DKYELLOW:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    .line 121
    iput-boolean v2, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private createHeader(Landroid/widget/TableLayout;)V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0xc

    aget-object v2, v0, v2

    .line 367
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 368
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 371
    const-string v4, "Task"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {v0, v8, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 373
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 374
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-array v4, v10, [I

    .line 377
    aput-boolean v7, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v7, v2, v7

    if-ge v0, v10, :cond_1

    .line 378
    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v0

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    aput-boolean v7, v2, v8

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x3

    aput-boolean v7, v2, v0

    :goto_1
    aput-boolean v7, v2, v9

    if-ge v1, v10, :cond_3

    .line 382
    aget v0, v4, v1

    invoke-static {v0}, Lcom/markuspage/android/atimetracker/Report$Day;->fromCalEnum(I)Lcom/markuspage/android/atimetracker/Report$Day;

    move-result-object v0

    .line 383
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v0}, Lcom/markuspage/android/atimetracker/Report$Day;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v5, v8, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 386
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 387
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 388
    rem-int/lit8 v0, v1, 0x2

    const/4 v6, 0x5

    aput-boolean v7, v2, v6

    if-ne v0, v7, :cond_2

    .line 389
    const v0, -0xbbbbbc

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v0, 0x6

    aput-boolean v7, v2, v0

    .line 391
    :cond_2
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v5, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    aput-boolean v7, v2, v10

    goto :goto_1

    .line 394
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 395
    const-string v1, "Ttl"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v0, v8, v8, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 397
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 399
    sget v1, Lcom/markuspage/android/atimetracker/Report;->DKYELLOW:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 400
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/16 v0, 0x8

    aput-boolean v7, v2, v0

    return-void
.end method

.method private createReport(Landroid/widget/TableLayout;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xd

    aget-object v9, v0, v1

    .line 404
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tasks"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const-string v7, "name"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 405
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    aput-boolean v10, v9, v8

    if-eqz v0, :cond_4

    .line 407
    :cond_1
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 408
    const/16 v2, 0x8

    new-array v2, v2, [Landroid/widget/TextView;

    .line 410
    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 413
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v0, v11, v11, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 418
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    aput-boolean v10, v9, v10

    move v0, v8

    :goto_0
    const/4 v4, 0x7

    aput-boolean v10, v9, v11

    if-ge v0, v4, :cond_3

    .line 421
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 422
    aput-object v4, v2, v0

    .line 423
    invoke-virtual {v4, v11, v11, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 424
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    rem-int/lit8 v5, v0, 0x2

    const/4 v6, 0x3

    aput-boolean v10, v9, v6

    if-ne v5, v10, :cond_2

    .line 426
    const v5, -0xbbbbbc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    aput-boolean v10, v9, v12

    .line 428
    :cond_2
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x5

    aput-boolean v10, v9, v4

    goto :goto_0

    .line 431
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 432
    const/4 v4, 0x7

    aput-object v0, v2, v4

    .line 433
    invoke-virtual {v0, v11, v11, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 434
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 436
    sget v2, Lcom/markuspage/android/atimetracker/Report;->DKYELLOW:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 437
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x6

    aput-boolean v10, v9, v2

    if-nez v0, :cond_1

    .line 440
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 441
    const/4 v0, 0x7

    aput-boolean v10, v9, v0

    return-void
.end method

.method private createTotals(Landroid/widget/TableLayout;)V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v1, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x9

    aget-object v2, v0, v2

    .line 320
    const/16 v0, 0x8

    new-array v3, v0, [Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 323
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {v0, v7, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    aput-boolean v6, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v6, v2, v6

    if-ge v0, v9, :cond_2

    .line 328
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    aput-object v1, v3, v0

    .line 330
    invoke-virtual {v1, v7, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 331
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 332
    rem-int/lit8 v5, v0, 0x2

    aput-boolean v6, v2, v7

    if-ne v5, v6, :cond_1

    .line 333
    sget v5, Lcom/markuspage/android/atimetracker/Report;->DKYELLOW:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v5, 0x3

    aput-boolean v6, v2, v5

    .line 337
    :goto_1
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v4, v1, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 335
    :cond_1
    sget v5, Lcom/markuspage/android/atimetracker/Report;->DKDKYELLOW:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    aput-boolean v6, v2, v8

    goto :goto_1

    .line 340
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    aput-object v0, v3, v9

    .line 342
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v0, v7, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 344
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    sget v1, Lcom/markuspage/android/atimetracker/Report;->DKYELLOW:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 346
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v4, v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    const/4 v0, 0x6

    aput-boolean v6, v2, v0

    return-void
.end method

.method private export()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x6

    aget-object v3, v0, v2

    .line 239
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Report;->getRangeName()Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".csv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    aput-boolean v7, v3, v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 244
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    aput-boolean v7, v3, v7

    if-eqz v5, :cond_1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 250
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 251
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Report;->getCurrentRange()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/markuspage/android/atimetracker/CSVExporter;->exportRows(Ljava/io/OutputStream;[[Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v3, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-object v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 256
    const/4 v2, 0x0

    const/4 v0, 0x4

    aput-boolean v7, v3, v0

    goto :goto_1
.end method

.method private fillInTasksAndRanges()V
    .locals 14

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x11

    aget-object v9, v0, v1

    .line 530
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tasks"

    sget-object v2, Lcom/markuspage/android/atimetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 532
    const/16 v0, 0x8

    new-array v11, v0, [J

    fill-array-data v11, :array_0

    .line 533
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-eqz v0, :cond_4

    .line 535
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 536
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/widget/TextView;

    .line 539
    invoke-direct {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->getDays(Ljava/lang/String;)[J

    move-result-object v12

    .line 541
    const/4 v1, 0x0

    .line 542
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    move v7, v0

    move v8, v1

    :goto_0
    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-ge v7, v0, :cond_3

    .line 543
    int-to-long v0, v8

    aget-wide v2, v12, v7

    add-long/2addr v0, v2

    long-to-int v8, v0

    .line 544
    aget-wide v0, v11, v7

    aget-wide v2, v12, v7

    add-long/2addr v0, v2

    aput-wide v0, v11, v7

    .line 546
    aget-object v13, v6, v7

    aget-wide v0, v12, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-nez v0, :cond_2

    const-string v0, "  :  "

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    :goto_1
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    add-int/lit8 v0, v7, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move v7, v0

    goto :goto_0

    .line 546
    :cond_2
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    const-string v1, "%02d:%02d"

    aget-wide v2, v12, v7

    iget v4, p0, Lcom/markuspage/android/atimetracker/Report;->roundMinutes:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_1

    .line 550
    :cond_3
    const/4 v0, 0x7

    aget-object v6, v6, v0

    int-to-long v0, v8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-nez v0, :cond_5

    const-string v0, "  :  "

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const/4 v0, 0x7

    aget-wide v2, v11, v0

    int-to-long v4, v8

    add-long/2addr v2, v4

    aput-wide v2, v11, v0

    .line 552
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-nez v0, :cond_1

    .line 554
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 556
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/widget/TextView;

    .line 557
    const/4 v0, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move v7, v0

    :goto_3
    const/4 v0, 0x7

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    if-ge v7, v0, :cond_6

    .line 558
    aget-object v8, v6, v7

    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    const-string v1, "%02d:%02d"

    aget-wide v2, v11, v7

    iget v4, p0, Lcom/markuspage/android/atimetracker/Report;->roundMinutes:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    add-int/lit8 v0, v7, 0x1

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move v7, v0

    goto :goto_3

    .line 550
    :cond_5
    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    const-string v1, "%02d:%02d"

    int-to-long v2, v8

    iget v4, p0, Lcom/markuspage/android/atimetracker/Report;->roundMinutes:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_2

    .line 560
    :cond_6
    const/4 v0, 0x7

    aget-object v6, v6, v0

    iget-boolean v0, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    const-string v1, "%02d:%02d"

    const/4 v2, 0x7

    aget-wide v2, v11, v2

    iget v4, p0, Lcom/markuspage/android/atimetracker/Report;->roundMinutes:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/markuspage/android/atimetracker/Tasks;->formatTotal(ZLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const/16 v0, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    return-void

    .line 532
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getCurrentRange()[[Ljava/lang/String;
    .locals 11

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v8, v0, v1

    .line 261
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 264
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tasks"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ROWID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ROWID"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    if-eqz v1, :cond_2

    .line 267
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 268
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    if-nez v1, :cond_1

    .line 272
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 274
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 275
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    :goto_0
    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-ge v0, v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    goto :goto_0

    .line 279
    :cond_3
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    const-string v3, "Task name"

    aput-object v3, v2, v0

    .line 281
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    :goto_1
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-ge v0, v3, :cond_4

    .line 282
    aget v3, v1, v0

    invoke-static {v3}, Lcom/markuspage/android/atimetracker/Report$Day;->fromCalEnum(I)Lcom/markuspage/android/atimetracker/Report$Day;

    move-result-object v3

    .line 283
    add-int/lit8 v4, v0, 0x1

    iget-object v3, v3, Lcom/markuspage/android/atimetracker/Report$Day;->header:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 281
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    goto :goto_1

    .line 285
    :cond_4
    const/16 v0, 0x8

    const-string v1, "Total"

    aput-object v1, v2, v0

    .line 286
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v8, v1

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 289
    const/4 v0, -0x1

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    if-ne v1, v0, :cond_5

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_2

    .line 292
    :cond_5
    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    .line 293
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    .line 295
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView;

    .line 296
    const/4 v1, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    :goto_3
    const/16 v4, 0x8

    const/16 v5, 0xd

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    if-ge v1, v4, :cond_6

    .line 297
    add-int/lit8 v4, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 296
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0xe

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    goto :goto_3

    :cond_6
    const/16 v0, 0xf

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_2

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->dateViews:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView;

    .line 302
    const/16 v1, 0x9

    new-array v2, v1, [Ljava/lang/String;

    .line 303
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v1, 0x0

    const-string v3, "Day total"

    aput-object v3, v2, v1

    .line 305
    const/4 v1, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    :goto_4
    const/16 v3, 0x8

    const/16 v4, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v8, v4

    if-ge v1, v3, :cond_8

    .line 306
    add-int/lit8 v3, v1, 0x1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 305
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    goto :goto_4

    .line 309
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 310
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    return-object v0
.end method

.method private getDays(Ljava/lang/String;)[J
    .locals 18

    .prologue
    sget-object v2, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v2

    :cond_0
    const/16 v3, 0x12

    aget-object v10, v2, v3

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 577
    const/4 v2, 0x7

    new-array v12, v2, [J

    fill-array-data v12, :array_0

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ranges"

    sget-object v4, Lcom/markuspage/android/atimetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v5, "task_id = ? AND start < ? AND ( end > ? OR end ISNULL )"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    .line 581
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    .line 582
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 578
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 585
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v10, v3

    if-eqz v2, :cond_5

    .line 587
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 589
    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v10, v3

    if-eqz v2, :cond_2

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v10, v4

    .line 595
    :goto_0
    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 597
    const/4 v4, 0x7

    new-array v8, v4, [I

    .line 598
    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v13, 0x1

    aput-boolean v13, v10, v9

    :goto_1
    const/4 v9, 0x7

    const/4 v13, 0x5

    const/4 v14, 0x1

    aput-boolean v14, v10, v13

    if-ge v4, v9, :cond_3

    .line 599
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v9, v4

    rem-int/lit8 v9, v9, 0x7

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v4

    .line 598
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x6

    const/4 v13, 0x1

    aput-boolean v13, v10, v9

    goto :goto_1

    .line 592
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v10, v4

    goto :goto_0

    .line 603
    :cond_3
    const/4 v4, 0x0

    const/4 v9, 0x7

    const/4 v13, 0x1

    aput-boolean v13, v10, v9

    :goto_2
    const/4 v9, 0x7

    const/16 v13, 0x8

    const/4 v14, 0x1

    aput-boolean v14, v10, v13

    if-ge v4, v9, :cond_4

    .line 604
    aget v9, v8, v4

    invoke-static {v9}, Lcom/markuspage/android/atimetracker/Report$Day;->fromCalEnum(I)Lcom/markuspage/android/atimetracker/Report$Day;

    move-result-object v9

    .line 605
    const/4 v13, 0x7

    iget v9, v9, Lcom/markuspage/android/atimetracker/Report$Day;->calEnum:I

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 606
    aget-wide v14, v12, v4

    invoke-static {v11, v6, v7, v2, v3}, Lcom/markuspage/android/atimetracker/TimeRange;->overlap(Ljava/util/Calendar;JJ)J

    move-result-wide v16

    add-long v14, v14, v16

    aput-wide v14, v12, v4

    .line 603
    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x9

    const/4 v13, 0x1

    aput-boolean v13, v10, v9

    goto :goto_2

    .line 609
    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v10, v3

    if-nez v2, :cond_1

    .line 611
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 612
    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    return-object v12

    .line 577
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getRangeName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 314
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x7

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xf

    aget-object v1, v0, v1

    .line 479
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 480
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 485
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 486
    const/4 v3, 0x5

    sub-int v2, p1, v2

    rsub-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 490
    const/4 v2, 0x7

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 491
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 492
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 493
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 494
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 495
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public static weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xe

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 453
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 454
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 459
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 460
    const/4 v3, 0x5

    sub-int v2, p1, v2

    rsub-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 464
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 465
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 466
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 467
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 468
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0x10

    aget-object v0, v0, v1

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    aput-boolean v6, v0, v7

    packed-switch v1, :pswitch_data_0

    .line 519
    :goto_0
    sget-object v1, Lcom/markuspage/android/atimetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 520
    sget-object v2, Lcom/markuspage/android/atimetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 521
    const v3, 0x7f060015

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/markuspage/android/atimetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Report;->fillInTasksAndRanges()V

    .line 524
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekView:Landroid/widget/Button;

    const v2, 0x7f060016

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/markuspage/android/atimetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/markuspage/android/atimetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 525
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void

    .line 501
    :pswitch_0
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->add(II)V

    .line 502
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->add(II)V

    aput-boolean v6, v0, v6

    goto :goto_0

    .line 505
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 506
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 507
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 508
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 509
    iget v2, p0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    invoke-static {v1, v2}, Lcom/markuspage/android/atimetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    .line 510
    iget v2, p0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    invoke-static {v1, v2}, Lcom/markuspage/android/atimetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    aput-boolean v6, v0, v4

    goto :goto_0

    .line 513
    :pswitch_2
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 514
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    aput-boolean v6, v0, v2

    goto/16 :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x7f080013
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const v11, 0x7f080014

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v9

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0, v8}, Lcom/markuspage/android/atimetracker/Report;->setRequestedOrientation(I)V

    .line 130
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Report;->setContentView(I)V

    .line 131
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/markuspage/android/atimetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 135
    const-string v1, "Report"

    invoke-virtual {p0, v1, v8}, Lcom/markuspage/android/atimetracker/Report;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->mPrefs:Landroid/content/SharedPreferences;

    .line 136
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "report_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 137
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "start_day"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    .line 140
    iget v1, p0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    invoke-static {v3, v1}, Lcom/markuspage/android/atimetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    .line 141
    iget v1, p0, Lcom/markuspage/android/atimetracker/Report;->startDay:I

    invoke-static {v3, v1}, Lcom/markuspage/android/atimetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    .line 142
    sget-object v1, Lcom/markuspage/android/atimetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-object v4, Lcom/markuspage/android/atimetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/markuspage/android/atimetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 144
    const v5, 0x7f060015

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/markuspage/android/atimetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "time_display"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/markuspage/android/atimetracker/Report;->decimalTime:Z

    .line 148
    invoke-virtual {p0}, Lcom/markuspage/android/atimetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "round_report_times"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/markuspage/android/atimetracker/Report;->roundMinutes:I

    .line 150
    invoke-direct {p0, v0}, Lcom/markuspage/android/atimetracker/Report;->createHeader(Landroid/widget/TableLayout;)V

    .line 152
    new-instance v1, Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-direct {v1, p0}, Lcom/markuspage/android/atimetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    .line 153
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    invoke-virtual {p0, v11}, Lcom/markuspage/android/atimetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekView:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->weekView:Landroid/widget/Button;

    const v4, 0x7f060016

    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/markuspage/android/atimetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/markuspage/android/atimetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0, v11}, Lcom/markuspage/android/atimetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/markuspage/android/atimetracker/Report;->createReport(Landroid/widget/TableLayout;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/markuspage/android/atimetracker/Report;->createTotals(Landroid/widget/TableLayout;)V

    .line 165
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Report;->fillInTasksAndRanges()V

    .line 166
    aput-boolean v9, v2, v8

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x108007a

    const v5, 0x104000a

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v2, 0x5

    aget-object v2, v0, v2

    .line 209
    const/4 v0, 0x0

    aput-boolean v4, v2, v0

    packed-switch p1, :pswitch_data_0

    .line 228
    const/4 v0, 0x3

    aput-boolean v4, v2, v0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003f

    .line 212
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Report;->exportMessage:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    .line 217
    iget-object v0, p0, Lcom/markuspage/android/atimetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 219
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060040

    .line 220
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/markuspage/android/atimetracker/Report;->exportMessage:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 177
    const/16 v1, 0x9

    const v2, 0x7f060019

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004e

    .line 178
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    aput-boolean v4, v0, v3

    return v4
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v6

    .line 186
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    aput-boolean v4, v0, v5

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    return v1

    .line 188
    :pswitch_0
    invoke-direct {p0}, Lcom/markuspage/android/atimetracker/Report;->export()Ljava/lang/String;

    move-result-object v1

    .line 189
    aput-boolean v4, v0, v4

    if-eqz v1, :cond_2

    .line 190
    const v2, 0x7f06003d

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/markuspage/android/atimetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->exportMessage:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->exportMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 194
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->showDialog(I)V

    aput-boolean v4, v0, v6

    goto :goto_0

    .line 196
    :cond_2
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->exportMessage:Ljava/lang/String;

    .line 197
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/markuspage/android/atimetracker/Report;->showDialog(I)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 358
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/markuspage/android/atimetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 360
    const-string v4, "report_date"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 363
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 352
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->dbHelper:Lcom/markuspage/android/atimetracker/DBHelper;

    invoke-virtual {v1}, Lcom/markuspage/android/atimetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 353
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 170
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 172
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
