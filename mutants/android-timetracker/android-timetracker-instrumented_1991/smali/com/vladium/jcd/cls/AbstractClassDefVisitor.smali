.class public abstract Lcom/vladium/jcd/cls/AbstractClassDefVisitor;
.super Ljava/lang/Object;
.source "AbstractClassDefVisitor.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IClassDefVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IConstantCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getInterfaces()Lcom/vladium/jcd/cls/IInterfaceCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IInterfaceCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getFields()Lcom/vladium/jcd/cls/IFieldCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IFieldCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getMethods()Lcom/vladium/jcd/cls/IMethodCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IMethodCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IAttributeCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IAttributeCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 35
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IConstantCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 40
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IFieldCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 45
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IInterfaceCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 50
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IMethodCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 55
    return-object p2
.end method
