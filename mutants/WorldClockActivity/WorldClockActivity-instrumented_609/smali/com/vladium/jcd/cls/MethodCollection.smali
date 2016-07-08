.class final Lcom/vladium/jcd/cls/MethodCollection;
.super Ljava/lang/Object;
.source "MethodCollection.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IMethodCollection;


# instance fields
.field private m_methods:Ljava/util/List;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-gez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    .line 134
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/IClassDefVisitor;->visit(Lcom/vladium/jcd/cls/IMethodCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public add(Lcom/vladium/jcd/cls/Method_info;)I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/MethodCollection;

    .line 70
    iget-object v1, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    .line 72
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 74
    iget-object v4, v0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    iget-object v1, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/Method_info;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/Method_info;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    return-object v0
.end method

.method public get(I)Lcom/vladium/jcd/cls/Method_info;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Method_info;

    return-object v0
.end method

.method public get(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/String;)[I
    .locals 4

    .prologue
    .line 35
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: cls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 40
    new-instance v3, Lcom/vladium/util/IntVector;

    invoke-direct {v3, v2}, Lcom/vladium/util/IntVector;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 44
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Method_info;

    .line 46
    invoke-virtual {v0, p1}, Lcom/vladium/jcd/cls/Method_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v3, v1}, Lcom/vladium/util/IntVector;->add(I)V

    .line 42
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v3}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/vladium/jcd/cls/Method_info;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Method_info;

    return-object v0
.end method

.method public set(ILcom/vladium/jcd/cls/Method_info;)Lcom/vladium/jcd/cls/Method_info;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/Method_info;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

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
    .line 89
    iget-object v0, p0, Lcom/vladium/jcd/cls/MethodCollection;->m_methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 90
    invoke-virtual {p1, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 92
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/cls/MethodCollection;->get(I)Lcom/vladium/jcd/cls/Method_info;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vladium/jcd/cls/Method_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method
