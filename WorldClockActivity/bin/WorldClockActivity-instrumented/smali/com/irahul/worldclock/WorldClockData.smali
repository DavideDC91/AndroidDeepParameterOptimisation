.class public Lcom/irahul/worldclock/WorldClockData;
.super Ljava/lang/Object;
.source "WorldClockData.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final FILENAME:Ljava/lang/String; = "WorldClockData"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEZONE_ID:Ljava/lang/String; = "timezoneId"


# instance fields
.field private context:Landroid/content/Context;

.field private selectedTimeZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $VRi()[[Z
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xa

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v6, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v5, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v6

    const-string v1, "com/irahul/worldclock/WorldClockData"

    const-wide v2, -0x5eb05daeedd33994L

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 43
    const-class v1, Lcom/irahul/worldclock/WorldClockData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    .line 51
    iput-object p1, p0, Lcom/irahul/worldclock/WorldClockData;->context:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    aput-boolean v8, v1, v2

    if-nez v0, :cond_1

    .line 56
    :try_start_0
    const-string v0, "WorldClockData"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 60
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    if-eq v4, v5, :cond_2

    .line 61
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v1, v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockData;->createFile()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    const/4 v0, 0x5

    aput-boolean v8, v1, v0

    .line 78
    :cond_1
    :goto_1
    const/16 v0, 0x8

    aput-boolean v8, v1, v0

    return-void

    .line 64
    :cond_2
    :try_start_1
    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAW - Loaded from file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/irahul/worldclock/WorldClockData;->deserialize(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v2, Lcom/irahul/worldclock/WorldClockException;

    invoke-direct {v2, v0}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    aput-boolean v8, v1, v0

    throw v2

    .line 74
    :catch_2
    move-exception v0

    .line 75
    new-instance v2, Lcom/irahul/worldclock/WorldClockException;

    invoke-direct {v2, v0}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x7

    aput-boolean v8, v1, v0

    throw v2
.end method

.method private createFile()V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 106
    sget-object v1, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    const-string v2, "Creating new file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/irahul/worldclock/WorldClockData;->writeToFile(Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private deserialize(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/16 v2, 0x8

    aget-object v2, v0, v2

    .line 157
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 160
    aput-boolean v7, v2, v1

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    aput-boolean v7, v2, v7

    if-ge v0, v1, :cond_1

    .line 161
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 163
    new-instance v5, Lcom/irahul/worldclock/WorldClockTimeZone;

    const-string v6, "timezoneId"

    .line 164
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/irahul/worldclock/WorldClockTimeZone;-><init>(Ljava/util/TimeZone;)V

    .line 165
    const-string v6, "displayName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/irahul/worldclock/WorldClockTimeZone;->setDisplayName(Ljava/lang/String;)V

    .line 167
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x4a

    const/4 v1, 0x2

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x3

    aput-boolean v7, v2, v0

    return-object v4
.end method

.method private serialize()Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 145
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    aput-boolean v7, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    aput-boolean v7, v1, v7

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 147
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v5, "timezoneId"

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v5, "displayName"

    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    return-object v2
.end method

.method private updateFile()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockData;->serialize()Lorg/json/JSONArray;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/irahul/worldclock/WorldClockData;->writeToFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v2, Lcom/irahul/worldclock/WorldClockException;

    invoke-direct {v2, v0}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/Throwable;)V

    aput-boolean v3, v1, v3

    throw v2
.end method

.method private writeToFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 126
    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing JSON to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/irahul/worldclock/WorldClockData;->context:Landroid/content/Context;

    const-string v2, "WorldClockData"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 132
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 134
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 135
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v2, Lcom/irahul/worldclock/WorldClockException;

    invoke-direct {v2, v0}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/Throwable;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v2, Lcom/irahul/worldclock/WorldClockException;

    invoke-direct {v2, v0}, Lcom/irahul/worldclock/WorldClockException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    throw v2
.end method


# virtual methods
.method public addZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 93
    sget-object v1, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding zone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockData;->updateFile()V

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public deleteZone(Lcom/irahul/worldclock/WorldClockTimeZone;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 85
    sget-object v1, Lcom/irahul/worldclock/WorldClockData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing zone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/irahul/worldclock/WorldClockData;->updateFile()V

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getSavedTimeZones()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/irahul/worldclock/WorldClockTimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/irahul/worldclock/WorldClockData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/WorldClockData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 81
    iget-object v1, p0, Lcom/irahul/worldclock/WorldClockData;->selectedTimeZones:Ljava/util/Set;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method
