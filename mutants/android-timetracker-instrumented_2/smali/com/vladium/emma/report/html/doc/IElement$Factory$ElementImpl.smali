.class Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.super Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;
.source "IElement.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/IElement$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElementImpl"
.end annotation


# static fields
.field private static final DEBUG_HTML:Z


# instance fields
.field protected final m_contents:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    .line 115
    return-void
.end method


# virtual methods
.method public add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    :cond_0
    return-object p0
.end method

.method public add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object p0
.end method

.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 4

    .prologue
    const/16 v3, 0x3e

    .line 49
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 52
    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/AttributeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 57
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 60
    :cond_0
    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 62
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/html/doc/IContent;

    .line 65
    invoke-interface {v0, p1}, Lcom/vladium/emma/report/html/doc/IContent;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 72
    return-void
.end method

.method public setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 2

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    new-instance v1, Lcom/vladium/emma/report/html/doc/Text;

    invoke-direct {v1, p1, p2}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
