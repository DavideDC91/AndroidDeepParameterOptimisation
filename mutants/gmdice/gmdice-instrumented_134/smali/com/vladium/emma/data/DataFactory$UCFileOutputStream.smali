.class final Lcom/vladium/emma/data/DataFactory$UCFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/data/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UCFileOutputStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 295
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method
