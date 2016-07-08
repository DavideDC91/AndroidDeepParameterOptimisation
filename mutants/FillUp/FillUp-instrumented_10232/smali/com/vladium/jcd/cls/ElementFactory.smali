.class public abstract Lcom/vladium/jcd/cls/ElementFactory;
.super Ljava/lang/Object;
.source "ElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/vladium/jcd/cls/AttributeCollection;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/AttributeCollection;-><init>(I)V

    return-object v0
.end method

.method public static newConstantCollection(I)Lcom/vladium/jcd/cls/IConstantCollection;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/vladium/jcd/cls/ConstantCollection;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/ConstantCollection;-><init>(I)V

    return-object v0
.end method

.method public static newFieldCollection(I)Lcom/vladium/jcd/cls/IFieldCollection;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/vladium/jcd/cls/FieldCollection;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/FieldCollection;-><init>(I)V

    return-object v0
.end method

.method public static newInterfaceCollection(I)Lcom/vladium/jcd/cls/IInterfaceCollection;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/vladium/jcd/cls/InterfaceCollection;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/InterfaceCollection;-><init>(I)V

    return-object v0
.end method

.method public static newMethodCollection(I)Lcom/vladium/jcd/cls/IMethodCollection;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/vladium/jcd/cls/MethodCollection;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/MethodCollection;-><init>(I)V

    return-object v0
.end method
