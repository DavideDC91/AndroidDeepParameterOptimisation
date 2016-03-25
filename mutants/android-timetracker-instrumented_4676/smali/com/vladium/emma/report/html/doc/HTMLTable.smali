.class public final Lcom/vladium/emma/report/html/doc/HTMLTable;
.super Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.source "HTMLTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/HTMLTable$Row;,
        Lcom/vladium/emma/report/html/doc/HTMLTable$Cell;,
        Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;,
        Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;
    }
.end annotation


# instance fields
.field private m_caption:Lcom/vladium/emma/report/html/doc/IElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TABLE:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    .line 38
    if-eqz p1, :cond_0

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->WIDTH:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 39
    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->BORDER:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p2}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->CELLPADDING:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p3}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 41
    :cond_2
    if-eqz p4, :cond_3

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->CELLSPACING:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p4}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 44
    :cond_3
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

.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLTable;->m_caption:Lcom/vladium/emma/report/html/doc/IElement;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLTable;->m_caption:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-virtual {p0, v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable;->add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 78
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

.method public newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;-><init>(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 67
    return-object v0
.end method

.method public newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;-><init>(Z)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 59
    return-object v0
.end method

.method public setCaption(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->CAPTION:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLTable;->m_caption:Lcom/vladium/emma/report/html/doc/IElement;

    .line 50
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLTable;->m_caption:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/IElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->ALIGN:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 51
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLTable;->m_caption:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v0, p2, p3}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 52
    return-void
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
