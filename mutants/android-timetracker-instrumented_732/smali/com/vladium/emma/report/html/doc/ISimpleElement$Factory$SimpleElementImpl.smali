.class Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;
.super Ljava/lang/Object;
.source "ISimpleElement.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/ISimpleElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleElementImpl"
.end annotation


# instance fields
.field protected final m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

.field protected final m_tag:Lcom/vladium/emma/report/html/doc/Tag;


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    .line 85
    iput-object p2, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 86
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 68
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/AttributeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    .line 73
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    invoke-virtual {v0, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 76
    :cond_0
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_attrs:Lcom/vladium/emma/report/html/doc/AttributeSet;

    return-object v0
.end method

.method public getTag()Lcom/vladium/emma/report/html/doc/Tag;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    return-object v0
.end method

.method public setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;
    .locals 2

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->CLASS:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 57
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/ISimpleElement$Factory$SimpleElementImpl;->m_tag:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
