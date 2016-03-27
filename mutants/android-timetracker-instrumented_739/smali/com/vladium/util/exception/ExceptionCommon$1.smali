.class final Lcom/vladium/util/exception/ExceptionCommon$1;
.super Ljava/util/ResourceBundle;
.source "ExceptionCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/exception/ExceptionCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method
