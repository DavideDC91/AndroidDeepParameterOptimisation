.class final Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;
.super Lcom/vladium/emma/report/html/doc/Attribute;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeImpl"
.end annotation


# instance fields
.field private final m_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vladium/emma/report/html/doc/Attribute;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 61
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    instance-of v0, p1, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    check-cast p1, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    iget-object v1, p1, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;->m_name:Ljava/lang/String;

    return-object v0
.end method
