.class public abstract Lcom/vladium/util/IntegerFactory;
.super Ljava/lang/Object;
.source "IntegerFactory.java"


# static fields
.field private static final s_values:Lcom/vladium/util/IntObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/vladium/util/IntObjectMap;

    const/16 v1, 0x4115

    invoke-direct {v0, v1}, Lcom/vladium/util/IntObjectMap;-><init>(I)V

    sput-object v0, Lcom/vladium/util/IntegerFactory;->s_values:Lcom/vladium/util/IntObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInteger(I)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 24
    sget-object v1, Lcom/vladium/util/IntegerFactory;->s_values:Lcom/vladium/util/IntObjectMap;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/vladium/util/IntegerFactory;->s_values:Lcom/vladium/util/IntObjectMap;

    invoke-virtual {v0, p0}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 31
    sget-object v2, Lcom/vladium/util/IntegerFactory;->s_values:Lcom/vladium/util/IntObjectMap;

    invoke-virtual {v2, p0, v0}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v1

    .line 36
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    monitor-exit v1

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
