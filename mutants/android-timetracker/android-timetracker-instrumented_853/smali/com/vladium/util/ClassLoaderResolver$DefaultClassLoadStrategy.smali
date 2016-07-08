.class final Lcom/vladium/util/ClassLoaderResolver$DefaultClassLoadStrategy;
.super Ljava/lang/Object;
.source "ClassLoaderResolver.java"

# interfaces
.implements Lcom/vladium/util/IClassLoadStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/ClassLoaderResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultClassLoadStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/util/ClassLoaderResolver$1;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/vladium/util/ClassLoaderResolver$DefaultClassLoadStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader(Lcom/vladium/util/ClassLoadContext;)Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 146
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/vladium/util/ClassLoadContext;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 153
    if-nez v1, :cond_3

    .line 171
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/vladium/util/ClassLoaderResolver;->isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 177
    :cond_2
    return-object v0

    .line 157
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 165
    invoke-static {v1, v0}, Lcom/vladium/util/ClassLoaderResolver;->isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 168
    goto :goto_0
.end method
