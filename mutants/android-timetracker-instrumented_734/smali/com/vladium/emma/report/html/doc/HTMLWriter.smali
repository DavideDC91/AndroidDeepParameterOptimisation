.class public final Lcom/vladium/emma/report/html/doc/HTMLWriter;
.super Ljava/lang/Object;
.source "HTMLWriter.java"


# instance fields
.field private m_out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    .line 107
    :cond_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public eol()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    sget-object v1, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(C)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/HTMLWriter;->m_out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "REPORT_IO_FAILURE"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
