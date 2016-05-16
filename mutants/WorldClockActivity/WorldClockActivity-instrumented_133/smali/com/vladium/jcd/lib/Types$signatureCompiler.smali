.class final Lcom/vladium/jcd/lib/Types$signatureCompiler;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/lib/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "signatureCompiler"
.end annotation


# instance fields
.field private m_desc:Ljava/lang/StringBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/vladium/jcd/lib/Types$signatureCompiler;->m_desc:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/jcd/lib/Types$1;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;-><init>()V

    return-void
.end method

.method private emit(C)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$signatureCompiler;->m_desc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    return-void
.end method

.method private emit(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$signatureCompiler;->m_desc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    return-void
.end method

.method private parameterType(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 449
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 450
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    const/16 v0, 0x46

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 451
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 452
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 453
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 454
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0

    .line 456
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 458
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->parameterType(Ljava/lang/Class;)V

    goto :goto_0

    .line 462
    :cond_9
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    goto :goto_0
.end method

.method private parameterTypes([Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 424
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 426
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->parameterType(Ljava/lang/Class;)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method private returnType(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 434
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 435
    :cond_0
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-direct {p0, p1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->parameterType(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method signatureDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    invoke-direct {p0, p1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->parameterTypes([Ljava/lang/Class;)V

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->emit(C)V

    invoke-direct {p0, p2}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->returnType(Ljava/lang/Class;)V

    .line 409
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$signatureCompiler;->m_desc:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->parameterType(Ljava/lang/Class;)V

    .line 416
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$signatureCompiler;->m_desc:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
