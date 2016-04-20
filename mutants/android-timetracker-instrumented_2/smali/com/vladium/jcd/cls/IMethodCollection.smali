.class public interface abstract Lcom/vladium/jcd/cls/IMethodCollection;
.super Ljava/lang/Object;
.source "IMethodCollection.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# virtual methods
.method public abstract accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
.end method

.method public abstract add(Lcom/vladium/jcd/cls/Method_info;)I
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract get(I)Lcom/vladium/jcd/cls/Method_info;
.end method

.method public abstract get(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/String;)[I
.end method

.method public abstract remove(I)Lcom/vladium/jcd/cls/Method_info;
.end method

.method public abstract set(ILcom/vladium/jcd/cls/Method_info;)Lcom/vladium/jcd/cls/Method_info;
.end method

.method public abstract size()I
.end method
