.class final Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;
.super Ljava/lang/Object;
.source "ConstantCollection.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IConstantCollection$IConstantIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/cls/ConstantCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantIterator"
.end annotation


# instance fields
.field private m_constants:Ljava/util/List;

.field private m_index:I

.field private m_next_index:I

.field private m_prev_index:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    .line 208
    invoke-direct {p0}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->shift()V

    .line 209
    return-void
.end method

.method private shift()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 248
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_prev_index:I

    .line 249
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    .line 251
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    if-lez v0, :cond_0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    iget v1, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 257
    iget v1, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    .line 258
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 262
    iput v2, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_next_index:I

    iput v2, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    goto :goto_0
.end method


# virtual methods
.method public nextConstant()Lcom/vladium/jcd/cls/constant/CONSTANT_info;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->nextIndex()I

    move-result v0

    .line 223
    if-gez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_index:I

    .line 215
    invoke-direct {p0}, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->shift()V

    .line 217
    return v0
.end method

.method public set(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
    .locals 4

    .prologue
    .line 231
    iget v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_prev_index:I

    add-int/lit8 v1, v0, -0x1

    .line 232
    iget-object v0, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    .line 234
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failure: dereferencing an invalid constant pool slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_prev_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->width()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failure: can\'t set entry of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to an entry of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] at pool slot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_prev_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/vladium/jcd/cls/ConstantCollection$ConstantIterator;->m_constants:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object v0
.end method
