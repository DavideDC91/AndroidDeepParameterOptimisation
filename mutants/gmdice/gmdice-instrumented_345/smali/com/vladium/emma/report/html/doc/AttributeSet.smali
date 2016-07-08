.class public abstract Lcom/vladium/emma/report/html/doc/AttributeSet;
.super Ljava/lang/Object;
.source "AttributeSet.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;

    invoke-direct {v0}, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract isEmpty()Z
.end method

.method public abstract set(Lcom/vladium/emma/report/html/doc/Attribute;I)Lcom/vladium/emma/report/html/doc/AttributeSet;
.end method

.method public abstract set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;
.end method
