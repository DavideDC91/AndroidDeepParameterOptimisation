.class final Lcom/vladium/logging/Logger$ThreadLocalStack;
.super Ljava/lang/InheritableThreadLocal;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadLocalStack"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/logging/Logger$1;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/vladium/logging/Logger$ThreadLocalStack;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
