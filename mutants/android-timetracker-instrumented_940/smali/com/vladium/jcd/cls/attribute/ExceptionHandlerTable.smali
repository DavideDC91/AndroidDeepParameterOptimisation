.class final Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;
.super Ljava/lang/Object;
.source "ExceptionHandlerTable.java"

# interfaces
.implements Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;


# instance fields
.field private m_exceptions:Ljava/util/List;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-gez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    .line 106
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/vladium/jcd/cls/attribute/Exception_info;)I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 51
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;

    .line 54
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    .line 56
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 58
    iget-object v4, v0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/attribute/Exception_info;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/attribute/Exception_info;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    return-object v0
.end method

.method public get(I)Lcom/vladium/jcd/cls/attribute/Exception_info;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/Exception_info;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public set(ILcom/vladium/jcd/cls/attribute/Exception_info;)Lcom/vladium/jcd/cls/attribute/Exception_info;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/Exception_info;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->m_exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/attribute/ExceptionHandlerTable;->get(I)Lcom/vladium/jcd/cls/attribute/Exception_info;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vladium/jcd/cls/attribute/Exception_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
