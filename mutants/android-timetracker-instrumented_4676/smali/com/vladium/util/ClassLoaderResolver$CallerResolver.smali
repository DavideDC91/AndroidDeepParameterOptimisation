.class final Lcom/vladium/util/ClassLoaderResolver$CallerResolver;
.super Ljava/lang/SecurityManager;
.source "ClassLoaderResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/ClassLoaderResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/util/ClassLoaderResolver$1;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/vladium/util/ClassLoaderResolver$CallerResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassContext()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
