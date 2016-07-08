.class final Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;
.super Ljava/io/BufferedWriter;
.source "ReportGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/xml/ReportGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndentingWriter"
.end annotation


# static fields
.field private static final INDENT_INCREMENT:I = 0x2


# instance fields
.field private m_indent:I

.field private transient m_sindent:Ljava/lang/String;

.field private m_state:I


# direct methods
.method constructor <init>(Ljava/io/Writer;II)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 288
    iput p3, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    .line 289
    return-void
.end method

.method private indent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_state:I

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->getIndent()Ljava/lang/String;

    move-result-object v0

    .line 346
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-super {p0, v0, v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 348
    const/4 v0, 0x1

    iput v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_state:I

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method decIndent()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->decIndent(I)V

    .line 315
    return-void
.end method

.method decIndent(I)V
    .locals 3

    .prologue
    .line 306
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current indent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    iget v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    .line 310
    return-void
.end method

.method getIndent()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 319
    iget v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    if-gtz v1, :cond_0

    .line 320
    const-string v0, ""

    .line 334
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_sindent:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_sindent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    if-ge v1, v2, :cond_3

    .line 325
    :cond_1
    iget v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    new-array v1, v1, [C

    .line 327
    :goto_1
    iget v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    if-ge v0, v2, :cond_2

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_sindent:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_sindent:Ljava/lang/String;

    goto :goto_0

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_sindent:Ljava/lang/String;

    iget v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method incIndent()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->incIndent(I)V

    .line 302
    return-void
.end method

.method incIndent(I)V
    .locals 3

    .prologue
    .line 294
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_indent:I

    .line 297
    return-void
.end method

.method public newLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    iput v2, p0, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->m_state:I

    .line 263
    sget-object v0, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    sget-object v1, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 264
    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->indent()V

    .line 275
    invoke-super {p0, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 276
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->indent()V

    .line 281
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 282
    return-void
.end method

.method public write([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/vladium/emma/report/xml/ReportGenerator$IndentingWriter;->indent()V

    .line 269
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedWriter;->write([CII)V

    .line 270
    return-void
.end method
