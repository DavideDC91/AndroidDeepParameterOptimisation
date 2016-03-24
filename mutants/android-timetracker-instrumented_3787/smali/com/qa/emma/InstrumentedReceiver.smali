.class public Lcom/qa/emma/InstrumentedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentedReceiver.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final DEFAULT_COVERAGE_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/coverage.ec"

.field public static TAG:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/qa/emma/InstrumentedReceiver"

    const-wide v2, -0x4904434bc43a4c16L    # -7.773598174020922E-44

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 16
    const-string v1, "EMMACoverageReport"

    sput-object v1, Lcom/qa/emma/InstrumentedReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private generateCoverageReport()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v8

    .line 28
    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->TAG:Ljava/lang/String;

    const-string v2, "generateCoverageReport()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/coverage.ec"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    :try_start_0
    const-string v2, "com.vladium.emma.rt.RT"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    const-string v3, "dumpCoverageData"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :goto_0
    aput-boolean v7, v1, v8

    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v2, "Emma.jar not in the class path?"

    invoke-direct {p0, v2, v0}, Lcom/qa/emma/InstrumentedReceiver;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    aput-boolean v7, v1, v7

    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    invoke-direct {p0, v0}, Lcom/qa/emma/InstrumentedReceiver;->reportEmmaError(Ljava/lang/Exception;)V

    aput-boolean v7, v1, v9

    goto :goto_0
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 20
    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lcom/qa/emma/InstrumentedReceiver;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    sget-object v2, Lcom/qa/emma/InstrumentedReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/qa/emma/InstrumentedReceiver;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qa/emma/InstrumentedReceiver;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 46
    invoke-direct {p0}, Lcom/qa/emma/InstrumentedReceiver;->generateCoverageReport()V

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
