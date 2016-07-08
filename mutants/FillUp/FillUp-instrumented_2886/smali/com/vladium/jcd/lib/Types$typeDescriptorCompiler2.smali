.class Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/lib/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "typeDescriptorCompiler2"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/jcd/lib/Types$1;)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;-><init>()V

    return-void
.end method


# virtual methods
.method arrayOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 575
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 577
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;->arrayOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    return-object v0

    .line 578
    :cond_0
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;->primitive(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method descriptorToClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 557
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;->arrayOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 560
    :cond_0
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;->primitive(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method primitive(C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    sparse-switch p1, :sswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :sswitch_0
    const-string v0, "byte"

    .line 600
    :goto_0
    return-object v0

    .line 594
    :sswitch_1
    const-string v0, "char"

    goto :goto_0

    .line 595
    :sswitch_2
    const-string v0, "double"

    goto :goto_0

    .line 596
    :sswitch_3
    const-string v0, "float"

    goto :goto_0

    .line 597
    :sswitch_4
    const-string v0, "int"

    goto :goto_0

    .line 598
    :sswitch_5
    const-string v0, "long"

    goto :goto_0

    .line 599
    :sswitch_6
    const-string v0, "short"

    goto :goto_0

    .line 600
    :sswitch_7
    const-string v0, "boolean"

    goto :goto_0

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_6
        0x5a -> :sswitch_7
    .end sparse-switch
.end method
