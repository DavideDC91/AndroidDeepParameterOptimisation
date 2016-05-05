.class Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/lib/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "methodDescriptorCompiler"
.end annotation


# instance fields
.field private m_in:Ljava/io/PushbackReader;

.field final m_result:Ljava/util/List;

.field private m_token:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_result:Ljava/util/List;

    .line 751
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    .line 613
    new-instance v0, Ljava/io/PushbackReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    .line 614
    return-void
.end method

.method private consume(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    .line 736
    if-eq v0, p1, :cond_0

    .line 737
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumed \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' while expecting \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_0
    return-void
.end method

.method private newToken()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_result:Ljava/util/List;

    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 748
    return-void
.end method


# virtual methods
.method arrayType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x5b

    .line 681
    invoke-direct {p0, v1}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->consume(C)V

    .line 682
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->componentType()V

    .line 685
    return-void
.end method

.method baseType()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    .line 713
    sparse-switch v0, :sswitch_data_0

    .line 727
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown base type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :sswitch_0
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 729
    return-void

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method componentType()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->fieldType()V

    .line 664
    return-void
.end method

.method fieldType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    .line 690
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v1, v0}, Ljava/io/PushbackReader;->unread(I)V

    .line 692
    sparse-switch v0, :sswitch_data_0

    .line 703
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->baseType()V

    .line 706
    :goto_0
    return-void

    .line 695
    :sswitch_0
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->objectType()V

    goto :goto_0

    .line 699
    :sswitch_1
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->arrayType()V

    goto :goto_0

    .line 692
    nop

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method getResult()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 619
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 621
    return-object v0
.end method

.method methodDescriptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->consume(C)V

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v1, v0}, Ljava/io/PushbackReader;->unread(I)V

    .line 632
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->parameterDescriptor()V

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->returnDescriptor()V

    .line 635
    return-void
.end method

.method objectType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x4c

    const/16 v2, 0x3b

    .line 668
    invoke-direct {p0, v1}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->consume(C)V

    .line 669
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 672
    :goto_0
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    if-eq v0, v2, :cond_0

    .line 674
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 677
    return-void
.end method

.method parameterDescriptor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->fieldType()V

    .line 640
    invoke-direct {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->newToken()V

    .line 641
    return-void
.end method

.method returnDescriptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    int-to-char v0, v0

    .line 647
    packed-switch v0, :pswitch_data_0

    .line 654
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_in:Ljava/io/PushbackReader;

    invoke-virtual {v1, v0}, Ljava/io/PushbackReader;->unread(I)V

    .line 655
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->fieldType()V

    .line 659
    :goto_0
    return-void

    .line 650
    :pswitch_0
    iget-object v1, p0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->m_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method
