.class public final Lcom/vladium/emma/report/html/doc/HTMLDocument;
.super Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.source "HTMLDocument.java"


# instance fields
.field private final m_body:Lcom/vladium/emma/report/html/doc/IElement;

.field private m_footer:Lcom/vladium/emma/report/html/doc/IContent;

.field private final m_head:Lcom/vladium/emma/report/html/doc/IElement;

.field private m_header:Lcom/vladium/emma/report/html/doc/IContent;

.field private final m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 30
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HTML:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 32
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HEAD:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-super {p0, v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 33
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->BODY:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-super {p0, v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 36
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->META:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->HTTP_EQUIV:Lcom/vladium/emma/report/html/doc/Attribute;

    const-string v3, "Content-Type"

    invoke-virtual {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->CONTENT:Lcom/vladium/emma/report/html/doc/Attribute;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text/html; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 44
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TITLE:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_title:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v0, p1}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 113
    return-object p0
.end method

.method public addEmptyP()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->P:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 184
    return-void
.end method

.method public addH(ILcom/vladium/emma/report/html/doc/IContent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->Hs:[Lcom/vladium/emma/report/html/doc/Tag;

    aget-object v0, v0, p1

    .line 166
    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 167
    invoke-interface {v0, p2}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 168
    invoke-interface {v0, p3}, Lcom/vladium/emma/report/html/doc/IElement;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 170
    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 171
    return-void
.end method

.method public addH(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->Hs:[Lcom/vladium/emma/report/html/doc/Tag;

    aget-object v0, v0, p1

    .line 155
    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 157
    invoke-interface {v0, p3}, Lcom/vladium/emma/report/html/doc/IElement;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 159
    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 160
    return-void
.end method

.method public addHR(I)V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HR:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/IElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->SIZE:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v1, v2, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;I)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 178
    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 179
    return-void
.end method

.method public addLINK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->LINK:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->TYPE:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v1, v2, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 145
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->HREF:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v1, v2, p2}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 146
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/ISimpleElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->SRC:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v1, v2, p2}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 148
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 149
    return-void
.end method

.method public addStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->STYLE:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/IElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Attribute;->TYPE:Lcom/vladium/emma/report/html/doc/Attribute;

    const-string v3, "text/css"

    invoke-virtual {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 123
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "<!--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 128
    sget-object v2, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElement;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 133
    :cond_0
    return-void
.end method

.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_header:Lcom/vladium/emma/report/html/doc/IContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_header:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v0, v1, v2}, Lcom/vladium/emma/report/html/doc/IElement;->add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_footer:Lcom/vladium/emma/report/html/doc/IContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/IElement;->size()I

    move-result v1

    iget-object v2, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_footer:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v0, v1, v2}, Lcom/vladium/emma/report/html/doc/IElement;->add(ILcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 103
    :cond_1
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 104
    return-void
.end method

.method public bridge synthetic getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/vladium/emma/report/html/doc/IElement;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_body:Lcom/vladium/emma/report/html/doc/IElement;

    return-object v0
.end method

.method public getFooter()Lcom/vladium/emma/report/html/doc/IContent;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_footer:Lcom/vladium/emma/report/html/doc/IContent;

    return-object v0
.end method

.method public getHead()Lcom/vladium/emma/report/html/doc/IElement;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_head:Lcom/vladium/emma/report/html/doc/IElement;

    return-object v0
.end method

.method public getHeader()Lcom/vladium/emma/report/html/doc/IContent;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_header:Lcom/vladium/emma/report/html/doc/IContent;

    return-object v0
.end method

.method public bridge synthetic getTag()Lcom/vladium/emma/report/html/doc/Tag;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->getTag()Lcom/vladium/emma/report/html/doc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    move-result-object v0

    return-object v0
.end method

.method public setFooter(Lcom/vladium/emma/report/html/doc/IContent;)V
    .locals 0

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_footer:Lcom/vladium/emma/report/html/doc/IContent;

    .line 93
    :cond_0
    return-void
.end method

.method public setHeader(Lcom/vladium/emma/report/html/doc/IContent;)V
    .locals 0

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/HTMLDocument;->m_header:Lcom/vladium/emma/report/html/doc/IContent;

    .line 88
    :cond_0
    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
