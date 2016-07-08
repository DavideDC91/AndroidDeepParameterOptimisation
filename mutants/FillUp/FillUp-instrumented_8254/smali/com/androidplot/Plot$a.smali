.class final Lcom/androidplot/Plot$a;
.super Ljava/lang/Object;
.source "Plot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/Plot;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/androidplot/Plot;


# direct methods
.method constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidplot/Plot;->a(Lcom/androidplot/Plot;Z)Z

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->a(Lcom/androidplot/Plot;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0, v3}, Lcom/androidplot/Plot;->b(Lcom/androidplot/Plot;Z)Z

    .line 329
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->b(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v1

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->b(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/Plot$BufferedCanvas;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-virtual {v2, v0}, Lcom/androidplot/Plot;->a(Landroid/graphics/Canvas;)V

    .line 332
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->b(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/Plot$BufferedCanvas;->swap()V

    .line 333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 334
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->c(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 335
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-virtual {v0}, Lcom/androidplot/Plot;->postInvalidate()V

    .line 338
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->a(Lcom/androidplot/Plot;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :try_start_2
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->c(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 333
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 342
    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/androidplot/Plot$a;->a:Lcom/androidplot/Plot;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/androidplot/Plot;->a(Lcom/androidplot/Plot;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 347
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AndroidPlot render thread finished."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    return-void
.end method
