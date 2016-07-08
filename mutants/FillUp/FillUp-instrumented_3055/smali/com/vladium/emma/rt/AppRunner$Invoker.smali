.class final Lcom/vladium/emma/rt/AppRunner$Invoker;
.super Ljava/lang/Object;
.source "AppRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/rt/AppRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Invoker"
.end annotation


# instance fields
.field private final m_args:[Ljava/lang/Object;

.field private m_failure:Ljava/lang/Throwable;

.field private final m_method:Ljava/lang/reflect/Method;

.field private final m_target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: args"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_1
    iput-object p1, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_method:Ljava/lang/reflect/Method;

    .line 647
    iput-object p2, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_target:Ljava/lang/Object;

    .line 648
    iput-object p3, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_args:[Ljava/lang/Object;

    .line 649
    return-void
.end method


# virtual methods
.method getFailure()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_failure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_target:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 659
    iput-object v0, p0, Lcom/vladium/emma/rt/AppRunner$Invoker;->m_failure:Ljava/lang/Throwable;

    goto :goto_0
.end method
