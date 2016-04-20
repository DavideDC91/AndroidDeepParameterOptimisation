.class public Lcom/markuspage/android/atimetracker/CSVExporter;
.super Ljava/lang/Object;
.source "CSVExporter.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x28a1dd1f8634e403L


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRc:[[Z

    const/4 v1, 0x1

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x11

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/markuspage/android/atimetracker/CSVExporter"

    const-wide v2, 0x54f53386f9a0be7dL    # 1.8549004537077308E101

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

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

    sget-object v0, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v4

    .line 33
    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    if-nez p0, :cond_1

    .line 34
    const-string p0, ""

    aput-boolean v4, v0, v4

    .line 40
    :goto_0
    return-object p0

    .line 36
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    if-nez v1, :cond_2

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    if-eqz v1, :cond_3

    .line 37
    :cond_2
    const-string v1, "\""

    const-string v2, "\"\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 40
    :cond_3
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public static exportRows(Ljava/io/OutputStream;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v8

    .line 57
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    const-string v0, ""

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    .line 60
    array-length v6, v5

    aput-boolean v10, v3, v1

    move-object v2, v0

    move v0, v1

    :goto_0
    aput-boolean v10, v3, v10

    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 61
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 62
    invoke-static {v7}, Lcom/markuspage/android/atimetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 63
    const-string v2, ","

    .line 60
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x2

    aput-boolean v10, v3, v7

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    aput-boolean v10, v3, v8

    if-eqz v0, :cond_7

    .line 66
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 67
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v10, v3, v0

    .line 69
    :cond_2
    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 70
    const-string v0, ""

    .line 71
    const/4 v2, 0x5

    aput-boolean v10, v3, v2

    move-object v2, v0

    move v0, v1

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    const/4 v9, 0x6

    aput-boolean v10, v3, v9

    if-ge v0, v8, :cond_6

    .line 72
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 74
    aget-object v2, v5, v0

    const-string v8, "start"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x7

    aput-boolean v10, v3, v8

    if-eqz v2, :cond_3

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 76
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x8

    aput-boolean v10, v3, v8

    .line 87
    :goto_2
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 88
    const-string v2, ","

    .line 71
    add-int/lit8 v0, v0, 0x1

    const/16 v8, 0xe

    aput-boolean v10, v3, v8

    goto :goto_1

    .line 77
    :cond_3
    aget-object v2, v5, v0

    const-string v8, "end"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x9

    aput-boolean v10, v3, v8

    if-eqz v2, :cond_5

    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/16 v8, 0xa

    aput-boolean v10, v3, v8

    if-eqz v2, :cond_4

    .line 79
    const-string v2, ""

    const/16 v8, 0xb

    aput-boolean v10, v3, v8

    goto :goto_2

    .line 81
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 82
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xc

    aput-boolean v10, v3, v8

    goto :goto_2

    .line 85
    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/markuspage/android/atimetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xd

    aput-boolean v10, v3, v8

    goto :goto_2

    .line 90
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/16 v2, 0xf

    aput-boolean v10, v3, v2

    if-nez v0, :cond_2

    .line 92
    :cond_7
    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 93
    const/16 v0, 0x10

    aput-boolean v10, v3, v0

    return-void
.end method

.method public static exportRows(Ljava/io/OutputStream;[[Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/CSVExporter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v4, v0, v11

    .line 44
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    array-length v6, p1

    aput-boolean v10, v4, v1

    move v0, v1

    :goto_0
    aput-boolean v10, v4, v10

    if-ge v0, v6, :cond_2

    aget-object v7, p1, v0

    .line 46
    const-string v2, ""

    .line 47
    array-length v8, v7

    aput-boolean v10, v4, v11

    move-object v3, v2

    move v2, v1

    :goto_1
    const/4 v9, 0x3

    aput-boolean v10, v4, v9

    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    .line 48
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    invoke-static {v9}, Lcom/markuspage/android/atimetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    const-string v3, ","

    .line 47
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x4

    aput-boolean v10, v4, v9

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 45
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    aput-boolean v10, v4, v2

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x6

    aput-boolean v10, v4, v0

    return-void
.end method
