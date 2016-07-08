.class Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/lib/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "typeDescriptorCompiler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/jcd/lib/Types$1;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;-><init>()V

    return-void
.end method


# virtual methods
.method arrayOf(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 517
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 519
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;->arrayOf(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 528
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;->primitive(C)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method descriptorToClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 499
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 501
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;->arrayOf(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 502
    :cond_0
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;->primitive(C)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method primitive(C)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 535
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 542
    :goto_0
    return-object v0

    .line 536
    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 537
    :cond_1
    const/16 v0, 0x44

    if-ne p1, v0, :cond_2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 538
    :cond_2
    const/16 v0, 0x46

    if-ne p1, v0, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 539
    :cond_3
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 540
    :cond_4
    const/16 v0, 0x4a

    if-ne p1, v0, :cond_5

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 541
    :cond_5
    const/16 v0, 0x53

    if-ne p1, v0, :cond_6

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 542
    :cond_6
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 543
    :cond_7
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown base type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
