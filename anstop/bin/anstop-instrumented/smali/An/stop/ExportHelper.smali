.class public LAn/stop/ExportHelper;
.super Ljava/lang/Object;
.source "ExportHelper.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x4c217e1e1c7703f5L


# instance fields
.field private mContext:Landroid/content/Context;

.field private out:Ljava/io/FileOutputStream;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/ExportHelper;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "An/stop/ExportHelper"

    const-wide v2, -0x223cc9dcae73ff96L    # -4.68542177014959E143

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/ExportHelper;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, LAn/stop/ExportHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ExportHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LAn/stop/ExportHelper;->mContext:Landroid/content/Context;

    .line 48
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public write(J)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, LAn/stop/ExportHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ExportHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 89
    new-instance v0, LAn/stop/AnstopDbAdapter;

    iget-object v3, p0, LAn/stop/ExportHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, LAn/stop/AnstopDbAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->open()LAn/stop/AnstopDbAdapter;

    .line 91
    invoke-virtual {v0, p1, p2}, LAn/stop/AnstopDbAdapter;->getRowAndFormat(J)[Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0}, LAn/stop/AnstopDbAdapter;->close()V

    .line 93
    aput-boolean v4, v2, v1

    if-nez v3, :cond_1

    .line 94
    aput-boolean v4, v2, v4

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_1
    aget-object v0, v3, v1

    aget-object v1, v3, v4

    invoke-virtual {p0, v0, v1}, LAn/stop/ExportHelper;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 96
    aput-boolean v4, v2, v5

    goto :goto_0
.end method

.method public write(Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, LAn/stop/ExportHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ExportHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v7

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    aput-boolean v3, v4, v1

    move v0, v1

    move v2, v3

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    aput-boolean v3, v4, v3

    if-ge v0, v5, :cond_2

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, LAn/stop/ExportHelper;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    aput-boolean v3, v4, v6

    if-nez v5, :cond_1

    .line 107
    aput-boolean v3, v4, v7

    move v2, v1

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x4

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x5

    aput-boolean v3, v4, v0

    return v2
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, LAn/stop/ExportHelper;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/ExportHelper;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v1

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    aput-boolean v1, v0, v2

    if-eqz v3, :cond_1

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 61
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, LAn/stop/ExportHelper;->out:Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v3, p0, LAn/stop/ExportHelper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    move v0, v1

    .line 78
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v3

    .line 66
    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 71
    :catch_1
    move-exception v3

    .line 72
    const/4 v3, 0x4

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0

    .line 78
    :cond_1
    const/4 v3, 0x6

    aput-boolean v1, v0, v3

    move v0, v2

    goto :goto_0
.end method
