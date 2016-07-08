.class public Lcom/androidplot/util/Redrawer;
.super Ljava/lang/Object;
.source "Redrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/Plot;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/androidplot/util/Redrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/Plot;FZ)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/androidplot/Plot;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/androidplot/util/Redrawer;-><init>(Ljava/util/List;FZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/List;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/Plot;",
            ">;FZ)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/androidplot/util/Redrawer;->b:Ljava/util/List;

    .line 31
    invoke-virtual {p0, p2}, Lcom/androidplot/util/Redrawer;->setMaxRefreshRate(F)V

    .line 32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/androidplot/util/Redrawer;->run()V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->d:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->e:Z

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->d:Z

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 48
    sget-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    const-string v1, "Redrawer paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->e:Z

    .line 75
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/androidplot/util/Redrawer;->e:Z

    if-eqz v0, :cond_2

    .line 76
    iget-boolean v0, p0, Lcom/androidplot/util/Redrawer;->d:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/androidplot/util/Redrawer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Plot;

    .line 83
    invoke-virtual {v0}, Lcom/androidplot/Plot;->redraw()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    sget-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    const-string v1, "Redrawer thread exited."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_2
    return-void

    .line 85
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    iget-wide v0, p0, Lcom/androidplot/util/Redrawer;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 87
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    const-string v2, "Redrawer thread exited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 90
    :cond_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 92
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 98
    :cond_2
    sget-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    const-string v1, "Redrawer thread exited."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setMaxRefreshRate(F)V
    .locals 4

    .prologue
    .line 108
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/androidplot/util/Redrawer;->c:J

    .line 109
    sget-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Redrawer refresh rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/androidplot/util/Redrawer;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->d:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 57
    sget-object v0, Lcom/androidplot/util/Redrawer;->a:Ljava/lang/String;

    const-string v1, "Redrawer started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
