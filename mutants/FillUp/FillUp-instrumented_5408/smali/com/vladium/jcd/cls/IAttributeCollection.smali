.class public interface abstract Lcom/vladium/jcd/cls/IAttributeCollection;
.super Ljava/lang/Object;
.source "IAttributeCollection.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# virtual methods
.method public abstract accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
.end method

.method public abstract add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;
.end method

.method public abstract getInnerClassesAttribute()Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;
.end method

.method public abstract hasBridge()Z
.end method

.method public abstract hasSynthetic()Z
.end method

.method public abstract length()J
.end method

.method public abstract remove(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;
.end method

.method public abstract set(ILcom/vladium/jcd/cls/attribute/Attribute_info;)Lcom/vladium/jcd/cls/attribute/Attribute_info;
.end method

.method public abstract size()I
.end method
