.class public interface abstract Lcom/vladium/util/IJREVersion;
.super Ljava/lang/Object;
.source "IJREVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IJREVersion$_JREVersion;
    }
.end annotation


# static fields
.field public static final JRE_1_2_PLUS:Z

.field public static final JRE_1_3_PLUS:Z

.field public static final JRE_1_4_PLUS:Z

.field public static final JRE_SUN_SIGNAL_COMPATIBLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_2_PLUS:Z

    sput-boolean v0, Lcom/vladium/util/IJREVersion;->JRE_1_2_PLUS:Z

    .line 33
    sget-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_3_PLUS:Z

    sput-boolean v0, Lcom/vladium/util/IJREVersion;->JRE_1_3_PLUS:Z

    .line 35
    sget-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_1_4_PLUS:Z

    sput-boolean v0, Lcom/vladium/util/IJREVersion;->JRE_1_4_PLUS:Z

    .line 39
    sget-boolean v0, Lcom/vladium/util/IJREVersion$_JREVersion;->_JRE_SUN_SIGNAL_COMPATIBLE:Z

    sput-boolean v0, Lcom/vladium/util/IJREVersion;->JRE_SUN_SIGNAL_COMPATIBLE:Z

    return-void
.end method
