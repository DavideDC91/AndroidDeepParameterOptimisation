.class final Lcom/vladium/jcd/cls/InterfaceCollection;
.super Ljava/lang/Object;
.source "InterfaceCollection.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IInterfaceCollection;


# instance fields
.field private m_interfaces:Lcom/vladium/util/IntVector;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-gez p1, :cond_0

    new-instance v0, Lcom/vladium/util/IntVector;

    invoke-direct {v0}, Lcom/vladium/util/IntVector;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    .line 102
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/vladium/util/IntVector;

    invoke-direct {v0, p1}, Lcom/vladium/util/IntVector;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/IClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IInterfaceCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public add(I)I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v1, p1}, Lcom/vladium/util/IntVector;->add(I)V

    .line 86
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/InterfaceCollection;

    .line 48
    iget-object v1, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v1}, Lcom/vladium/util/IntVector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/util/IntVector;

    iput-object v1, v0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
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
    iget-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v0, p1}, Lcom/vladium/util/IntVector;->get(I)I

    move-result v0

    return v0
.end method

.method public set(II)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v0, p1, p2}, Lcom/vladium/util/IntVector;->set(II)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

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
    .line 62
    iget-object v0, p0, Lcom/vladium/jcd/cls/InterfaceCollection;->m_interfaces:Lcom/vladium/util/IntVector;

    invoke-virtual {v0}, Lcom/vladium/util/IntVector;->size()I

    move-result v1

    .line 63
    invoke-virtual {p1, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/InterfaceCollection;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
