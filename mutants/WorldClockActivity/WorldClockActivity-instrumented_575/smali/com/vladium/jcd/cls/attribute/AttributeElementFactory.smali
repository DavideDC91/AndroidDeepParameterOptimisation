.class public abstract Lcom/vladium/jcd/cls/attribute/AttributeElementFactory;
.super Ljava/lang/Object;
.source "AttributeElementFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newExceptionHandlerTable(I)Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;-><init>(I)V

    return-object v0
.end method
