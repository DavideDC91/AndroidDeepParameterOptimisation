.class public final Lcom/vladium/emma/report/html/doc/ElementList;
.super Ljava/lang/Object;
.source "ElementList.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IElementList;


# instance fields
.field private final m_contents:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/ElementList;->m_contents:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ElementList;->m_contents:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    :cond_0
    return-object p0
.end method

.method public add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ElementList;->m_contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-object p0
.end method

.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ElementList;->m_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/html/doc/IContent;

    .line 38
    invoke-interface {v0, p1}, Lcom/vladium/emma/report/html/doc/IContent;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ElementList;->m_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
