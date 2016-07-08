.class public final Lcom/vladium/emma/report/html/doc/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# instance fields
.field private final m_nbsp:Z

.field private final m_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/Text;->m_text:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/vladium/emma/report/html/doc/Text;->m_nbsp:Z

    .line 26
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Text;->m_text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-boolean v0, p0, Lcom/vladium/emma/report/html/doc/Text;->m_nbsp:Z

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Text;->m_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/vladium/util/Strings;->HTMLEscapeSP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Text;->m_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
