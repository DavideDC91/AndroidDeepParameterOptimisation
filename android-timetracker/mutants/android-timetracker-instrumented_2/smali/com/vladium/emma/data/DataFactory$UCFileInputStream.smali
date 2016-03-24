.class final Lcom/vladium/emma/data/DataFactory$UCFileInputStream;
.super Ljava/io/FileInputStream;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/data/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UCFileInputStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 280
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
