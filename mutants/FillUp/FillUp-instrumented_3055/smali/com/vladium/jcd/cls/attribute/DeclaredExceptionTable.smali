.class final Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;
.super Ljava/lang/Object;
.source "DeclaredExceptionTable.java"

# interfaces
.implements Lcom/vladium/jcd/cls/attribute/IDeclaredExceptionTable;


# instance fields
.field private m_exceptions:Lcom/vladium/util/IntVector;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-gez p1, :cond_0

    new-instance v0, Lcom/vladium/util/IntVector;

    invoke-direct {v0}, Lcom/vladium/util/IntVector;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    .line 100
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/vladium/util/IntVector;

    invoke-direct {v0, p1}, Lcom/vladium/util/IntVector;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(I)I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v1, p1}, Lcom/vladium/util/IntVector;->add(I)V

    .line 84
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;

    .line 53
    iget-object v1, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v1}, Lcom/vladium/util/IntVector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/util/IntVector;

    iput-object v1, v0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(I)I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0, p1}, Lcom/vladium/util/IntVector;->get(I)I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public set(II)I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0, p1, p2}, Lcom/vladium/util/IntVector;->set(II)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

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
    .line 67
    iget-object v0, p0, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->m_exceptions:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 70
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/attribute/DeclaredExceptionTable;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method
