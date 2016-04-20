.class public final Lcom/vladium/util/IntVector;
.super Ljava/lang/Object;
.source "IntVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final COPY_THRESHOLD:I = 0xa


# instance fields
.field private m_size:I

.field private m_values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vladium/util/IntVector;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/vladium/util/IntVector;->m_values:[I

    .line 28
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/vladium/util/IntVector;->m_values:[I

    array-length v1, v1

    .line 126
    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    if-ne v1, v2, :cond_2

    .line 128
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 129
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 131
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/vladium/util/IntVector;->m_values:[I

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1
    iput-object v2, p0, Lcom/vladium/util/IntVector;->m_values:[I

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/vladium/util/IntVector;->m_values:[I

    iget v1, p0, Lcom/vladium/util/IntVector;->m_size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    aput p1, v0, v1

    .line 142
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/IntVector;

    .line 79
    iget v1, p0, Lcom/vladium/util/IntVector;->m_size:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vladium/util/IntVector;->m_values:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/vladium/util/IntVector;->m_values:[I

    .line 82
    iget-object v2, v0, Lcom/vladium/util/IntVector;->m_values:[I

    .line 83
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/vladium/util/IntVector;->m_size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/vladium/util/IntVector;->m_values:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/vladium/util/IntVector;->m_values:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(I)I
    .locals 3

    .prologue
    .line 34
    iget v0, p0, Lcom/vladium/util/IntVector;->m_size:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] on vector of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v0, v0, p1

    return v0
.end method

.method public set(II)I
    .locals 3

    .prologue
    .line 114
    iget v0, p0, Lcom/vladium/util/IntVector;->m_size:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] on vector of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v0, v0, p1

    .line 118
    iget-object v1, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aput p2, v1, p1

    .line 120
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vladium/util/IntVector;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    if-ge v0, v2, :cond_1

    .line 103
    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    iget v0, p0, Lcom/vladium/util/IntVector;->m_size:I

    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_INT_ARRAY:[I

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    iget v2, p0, Lcom/vladium/util/IntVector;->m_size:I

    .line 47
    new-array v0, v2, [I

    .line 49
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 51
    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/vladium/util/IntVector;->m_values:[I

    aget v3, v3, v1

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/vladium/util/IntVector;->m_values:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
