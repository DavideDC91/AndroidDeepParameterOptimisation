.class public abstract Lcom/vladium/emma/report/html/doc/IElement$Factory;
.super Ljava/lang/Object;
.source "IElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/IElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;

    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    return-object v0
.end method

.method public static create(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    return-object v0
.end method
