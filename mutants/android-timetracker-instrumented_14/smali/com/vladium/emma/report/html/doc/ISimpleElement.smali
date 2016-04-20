.class public interface abstract Lcom/vladium/emma/report/html/doc/ISimpleElement;
.super Ljava/lang/Object;
.source "ISimpleElement.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory;
    }
.end annotation


# virtual methods
.method public abstract getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;
.end method

.method public abstract getTag()Lcom/vladium/emma/report/html/doc/Tag;
.end method

.method public abstract setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;
.end method
