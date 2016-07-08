.class Lcom/github/wdkapps/fillup/GasLogOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GasLogOpenHelper.java"


# static fields
.field private static final $VRc:[[Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0xa

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/github/wdkapps/fillup/GasLogOpenHelper"

    const-wide v2, 0x6327c9128d500fbfL    # 4.4882677146719664E169

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 36
    const-class v1, Lcom/github/wdkapps/fillup/GasLogOpenHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 44
    const-string v1, "gaslog.db"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method private execSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".execSQL()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    array-length v4, p2

    aput-boolean v5, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v5, v2, v5

    if-ge v0, v4, :cond_1

    aget-object v1, p2, v0

    .line 111
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 114
    :cond_1
    aput-boolean v5, v2, v6

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 54
    sget-object v1, Lcom/github/wdkapps/fillup/GasLog;->DATABASE_CREATE:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->execSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onUpgrade()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  newVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    .line 71
    :goto_0
    aput-boolean v5, v1, v5

    if-ge p2, p3, :cond_1

    .line 73
    aput-boolean v5, v1, v4

    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_1
    add-int/lit8 p2, p2, 0x1

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    goto :goto_0

    .line 75
    :pswitch_0
    const-string v3, "ALTER TABLE Records ADD COLUMN hidden integer not null default 0;"

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    aput-boolean v5, v1, v3

    goto :goto_1

    .line 79
    :pswitch_1
    const-string v3, "ALTER TABLE Vehicles ADD COLUMN tanksize real not null default 16.0;"

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    goto :goto_1

    .line 83
    :pswitch_2
    const-string v3, "ALTER TABLE Records ADD COLUMN cost real not null default 0.0;"

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v3, "ALTER TABLE Records ADD COLUMN notes text;"

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    goto :goto_1

    .line 92
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->execSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_2
    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07008e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {}, Lcom/github/wdkapps/fillup/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/github/wdkapps/fillup/Utilities;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    sget-object v0, Lcom/github/wdkapps/fillup/GasLog;->DATABASE_DELETE:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->execSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/github/wdkapps/fillup/GasLogOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    goto :goto_2

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
