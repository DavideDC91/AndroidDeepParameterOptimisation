.class public abstract Lcom/vladium/util/IJREVersion$_JREVersion;
.super Ljava/lang/Object;
.source "IJREVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IJREVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "_JREVersion"
.end annotation


# static fields
.field static final _JRE_1_2_PLUS:Z

.field static final _JRE_1_3_PLUS:Z

.field static final _JRE_1_4_PLUS:Z

.field static final _JRE_SUN_SIGNAL_COMPATIBLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    const-class v0, Ljava/lang/SecurityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_2_PLUS:Z

    .line 61
    sget-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_2_PLUS:Z

    if-eqz v0, :cond_2

    .line 65
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/StrictMath;->abs(D)D
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 70
    :goto_1
    sput-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_3_PLUS:Z

    .line 72
    if-eqz v0, :cond_1

    .line 77
    :try_start_1
    const-string v0, " "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_2
    sput-boolean v1, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_4_PLUS:Z

    .line 86
    sput-boolean v2, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_SUN_SIGNAL_COMPATIBLE:Z

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
