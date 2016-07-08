.class public interface abstract Lcom/vladium/jcd/cls/IConstantCollection;
.super Ljava/lang/Object;
.source "IConstantCollection.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/cls/IConstantCollection$IConstantComparator;,
        Lcom/vladium/jcd/cls/IConstantCollection$IConstantIterator;
    }
.end annotation


# virtual methods
.method public abstract accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
.end method

.method public abstract add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract find(ILcom/vladium/jcd/cls/IConstantCollection$IConstantComparator;)I
.end method

.method public abstract findCONSTANT_Utf8(Ljava/lang/String;)I
.end method

.method public abstract get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.end method

.method public abstract iterator()Lcom/vladium/jcd/cls/IConstantCollection$IConstantIterator;
.end method

.method public abstract set(ILcom/vladium/jcd/cls/constant/CONSTANT_info;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.end method

.method public abstract size()I
.end method
