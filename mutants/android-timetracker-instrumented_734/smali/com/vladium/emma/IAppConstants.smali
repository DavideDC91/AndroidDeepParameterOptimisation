.class public interface abstract Lcom/vladium/emma/IAppConstants;
.super Ljava/lang/Object;
.source "IAppConstants.java"

# interfaces
.implements Lcom/vladium/app/IAppVersion;


# static fields
.field public static final APP_COPYRIGHT:Ljava/lang/String; = "(C) Vladimir Roubtsov"

.field public static final APP_NAME:Ljava/lang/String; = "EMMA"

.field public static final APP_NAME_LC:Ljava/lang/String; = "emma"

.field public static final APP_PACKAGE:Ljava/lang/String;

.field public static final APP_THROWABLE_BUILD_ID:Ljava/lang/String; = "[EMMA v0.0.0 (unsupported private build)]"

.field public static final APP_USAGE_BUILD_ID:Ljava/lang/String; = "[EMMA v0.0, build 0 (unsupported private build)]"

.field public static final APP_USAGE_PREFIX:Ljava/lang/String; = "EMMA usage: "

.field public static final APP_VERBOSE_BUILD_ID:Ljava/lang/String; = "[EMMA v0.0, build 0 (unsupported private build) (unknown)]"

.field public static final DATA_FORMAT_VERSION:J = 0x20L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/vladium/emma/IAppConstants;

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->getClassPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/emma/IAppConstants;->APP_PACKAGE:Ljava/lang/String;

    return-void
.end method
