.class public Lcom/vladium/emma/report/html/doc/HyperRef;
.super Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.source "HyperRef.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->A:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty input: href"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty input: text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/vladium/emma/report/html/doc/HyperRef;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->HREF:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/vladium/emma/report/html/doc/HyperRef;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    return-void
.end method

.method public bridge synthetic getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Lcom/vladium/emma/report/html/doc/Tag;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->getTag()Lcom/vladium/emma/report/html/doc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
