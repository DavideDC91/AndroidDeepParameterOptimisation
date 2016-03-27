.class public final Lcom/vladium/emma/report/html/doc/TextContent;
.super Ljava/lang/Object;
.source "TextContent.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# instance fields
.field private final m_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/TextContent;->m_text:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/TextContent;->m_text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/TextContent;->m_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
