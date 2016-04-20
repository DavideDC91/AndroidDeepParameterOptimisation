.class public final Lemmarun;
.super Ljava/lang/Object;
.source "emmarun.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "run"

    const-class v1, Lemmarun;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/vladium/emma/Command;->create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/Command;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/vladium/emma/Command;->run()V

    .line 28
    return-void
.end method
