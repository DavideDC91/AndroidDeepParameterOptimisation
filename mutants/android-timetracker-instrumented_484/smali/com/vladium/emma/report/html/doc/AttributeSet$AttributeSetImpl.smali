.class final Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;
.super Lcom/vladium/emma/report/html/doc/AttributeSet;
.source "AttributeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/AttributeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeSetImpl"
.end annotation


# static fields
.field private static final MAX_BUF_LENGTH:I = 0x1000


# instance fields
.field private final m_attrMap:Ljava/util/Map;

.field private m_buf:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/vladium/emma/report/html/doc/AttributeSet;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_attrMap:Ljava/util/Map;

    .line 106
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x1

    .line 55
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_attrMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/html/doc/Attribute;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    if-eqz v2, :cond_0

    move v0, v3

    .line 67
    :goto_1
    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 68
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    invoke-static {v5, v1}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 76
    iget-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 78
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    move v2, v0

    .line 79
    goto :goto_0

    .line 65
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(C)V

    move v0, v2

    goto :goto_1

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_buf:Ljava/lang/StringBuffer;

    goto :goto_2

    .line 80
    :cond_2
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_attrMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public set(Lcom/vladium/emma/report/html/doc/Attribute;I)Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_attrMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/AttributeSet$AttributeSetImpl;->m_attrMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object p0
.end method
