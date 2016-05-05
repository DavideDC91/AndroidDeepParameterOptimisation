.class public abstract Lcom/vladium/util/ClassLoaderResolver;
.super Ljava/lang/Object;
.source "ClassLoaderResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/ClassLoaderResolver$1;,
        Lcom/vladium/util/ClassLoaderResolver$CallerResolver;,
        Lcom/vladium/util/ClassLoaderResolver$DefaultClassLoadStrategy;
    }
.end annotation


# static fields
.field private static final CALLER_RESOLVER:Lcom/vladium/util/ClassLoaderResolver$CallerResolver;

.field private static final CALL_CONTEXT_OFFSET:I = 0x2

.field private static s_strategy:Lcom/vladium/util/IClassLoadStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    :try_start_0
    new-instance v0, Lcom/vladium/util/ClassLoaderResolver$CallerResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/vladium/util/ClassLoaderResolver$CallerResolver;-><init>(Lcom/vladium/util/ClassLoaderResolver$1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    sput-object v0, Lcom/vladium/util/ClassLoaderResolver;->CALLER_RESOLVER:Lcom/vladium/util/ClassLoaderResolver$CallerResolver;

    .line 224
    new-instance v0, Lcom/vladium/util/ClassLoaderResolver$DefaultClassLoadStrategy;

    invoke-direct {v0, v1}, Lcom/vladium/util/ClassLoaderResolver$DefaultClassLoadStrategy;-><init>(Lcom/vladium/util/ClassLoaderResolver$1;)V

    sput-object v0, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;

    .line 225
    return-void

    .line 218
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/vladium/util/ClassLoaderResolver;->CALLER_RESOLVER:Lcom/vladium/util/ClassLoaderResolver$CallerResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vladium/util/ClassLoaderResolver;->CALLER_RESOLVER:Lcom/vladium/util/ClassLoaderResolver$CallerResolver;

    invoke-virtual {v0}, Lcom/vladium/util/ClassLoaderResolver$CallerResolver;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, p0, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/vladium/util/ClassLoaderResolver;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/vladium/util/ClassLoaderResolver;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/vladium/util/ClassLoadContext;

    invoke-direct {v2, v0}, Lcom/vladium/util/ClassLoadContext;-><init>(Ljava/lang/Class;)V

    .line 72
    sget-object v0, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;

    invoke-interface {v0, v2}, Lcom/vladium/util/IClassLoadStrategy;->getClassLoader(Lcom/vladium/util/ClassLoadContext;)Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/vladium/util/ClassLoaderResolver;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/vladium/util/ClassLoadContext;

    invoke-direct {v0, p0}, Lcom/vladium/util/ClassLoadContext;-><init>(Ljava/lang/Class;)V

    .line 49
    sget-object v2, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;

    invoke-interface {v2, v0}, Lcom/vladium/util/IClassLoadStrategy;->getClassLoader(Lcom/vladium/util/ClassLoadContext;)Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStrategy()Lcom/vladium/util/IClassLoadStrategy;
    .locals 2

    .prologue
    .line 114
    const-class v0, Lcom/vladium/util/ClassLoaderResolver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 97
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 99
    :cond_2
    if-eqz p0, :cond_0

    .line 101
    :goto_1
    if-eqz p1, :cond_3

    .line 103
    if-eq p1, p0, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public static declared-synchronized setStrategy(Lcom/vladium/util/IClassLoadStrategy;)Lcom/vladium/util/IClassLoadStrategy;
    .locals 3

    .prologue
    .line 127
    const-class v1, Lcom/vladium/util/ClassLoaderResolver;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "null input: strategy"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_0
    :try_start_1
    sget-object v0, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;

    .line 130
    sput-object p0, Lcom/vladium/util/ClassLoaderResolver;->s_strategy:Lcom/vladium/util/IClassLoadStrategy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit v1

    return-object v0
.end method
