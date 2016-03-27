.class public abstract Lcom/vladium/emma/report/AbstractItemVisitor;
.super Ljava/lang/Object;
.source "AbstractItemVisitor.java"

# interfaces
.implements Lcom/vladium/emma/report/IItemVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 22
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 37
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/MethodItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 42
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    return-object p2
.end method

.method public visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 32
    return-object p2
.end method
