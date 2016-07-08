.class public interface abstract Lcom/vladium/jcd/cls/IConstantCollection$IConstantIterator;
.super Ljava/lang/Object;
.source "IConstantCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/cls/IConstantCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IConstantIterator"
.end annotation


# virtual methods
.method public abstract nextConstant()Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.end method

.method public abstract nextIndex()I
.end method

.method public abstract set(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.end method
