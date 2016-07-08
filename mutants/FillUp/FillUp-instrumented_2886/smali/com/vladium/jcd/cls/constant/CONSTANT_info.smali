.class public abstract Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.super Ljava/lang/Object;
.source "CONSTANT_info.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static new_CONSTANT_info(Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/vladium/jcd/lib/UDataInputStream;->readByte()B

    move-result v0

    .line 65
    packed-switch v0, :pswitch_data_0

    .line 103
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONSTANT_info: invalid tag value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_1
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 101
    :goto_0
    return-object v0

    .line 71
    :pswitch_2
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 77
    :pswitch_4
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 80
    :pswitch_5
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 84
    :pswitch_6
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 87
    :pswitch_7
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 91
    :pswitch_8
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 94
    :pswitch_9
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 97
    :pswitch_a
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_InterfaceMethodref_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_InterfaceMethodref_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 101
    :pswitch_b
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;-><init>(Lcom/vladium/jcd/lib/UDataInputStream;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static tagToString(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->tag()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONSTANT_info: invalid tag value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->tag()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_1
    const-string v0, "CONSTANT_Utf8"

    .line 171
    :goto_0
    return-object v0

    .line 141
    :pswitch_2
    const-string v0, "CONSTANT_Integer"

    goto :goto_0

    .line 144
    :pswitch_3
    const-string v0, "CONSTANT_Float"

    goto :goto_0

    .line 147
    :pswitch_4
    const-string v0, "CONSTANT_Long"

    goto :goto_0

    .line 150
    :pswitch_5
    const-string v0, "CONSTANT_Double"

    goto :goto_0

    .line 154
    :pswitch_6
    const-string v0, "CONSTANT_Class"

    goto :goto_0

    .line 157
    :pswitch_7
    const-string v0, "CONSTANT_String"

    goto :goto_0

    .line 161
    :pswitch_8
    const-string v0, "CONSTANT_Fieldref"

    goto :goto_0

    .line 164
    :pswitch_9
    const-string v0, "CONSTANT_Methodref"

    goto :goto_0

    .line 167
    :pswitch_a
    const-string v0, "CONSTANT_InterfaceMethodref"

    goto :goto_0

    .line 171
    :pswitch_b
    const-string v0, "CONSTANT_NameAndType"

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public abstract accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract tag()B
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public width()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->tag()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeByte(I)V

    .line 131
    return-void
.end method
