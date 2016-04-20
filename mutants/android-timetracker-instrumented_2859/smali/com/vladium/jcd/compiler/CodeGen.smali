.class public abstract Lcom/vladium/jcd/compiler/CodeGen;
.super Ljava/lang/Object;
.source "CodeGen.java"

# interfaces
.implements Lcom/vladium/jcd/opcodes/IOpcodes;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load_local_object_var(Lcom/vladium/util/ByteArrayOStream;I)V
    .locals 3

    .prologue
    const/16 v2, 0x19

    .line 28
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 30
    add-int/lit8 v0, p1, 0x2a

    invoke-virtual {p0, v0}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 44
    :goto_0
    return-void

    .line 32
    :cond_0
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 34
    invoke-virtual {p0, v2, p1}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    goto :goto_0

    .line 39
    :cond_1
    const/16 v0, 0xc4

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    goto :goto_0
.end method

.method public static push_constant_index(Lcom/vladium/util/ByteArrayOStream;I)V
    .locals 2

    .prologue
    .line 108
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 110
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x13

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    goto :goto_0
.end method

.method public static push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V
    .locals 3

    .prologue
    .line 70
    const/4 v0, -0x1

    if-gt v0, p2, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 72
    add-int/lit8 v0, p2, 0x3

    invoke-virtual {p0, v0}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 104
    :goto_0
    return-void

    .line 74
    :cond_0
    const/16 v0, -0x80

    if-gt v0, p2, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    .line 76
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p2}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    goto :goto_0

    .line 79
    :cond_1
    const/16 v0, -0x8000

    if-gt v0, p2, :cond_2

    const/16 v0, 0x7fff

    if-gt p2, v0, :cond_2

    .line 81
    const/16 v0, 0x11

    ushr-int/lit8 v1, p2, 0x8

    invoke-virtual {p0, v0, v1, p2}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    new-instance v1, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;

    invoke-direct {v1, p2}, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    .line 90
    const/16 v1, 0xff

    if-gt v0, v1, :cond_3

    .line 92
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    goto :goto_0

    .line 97
    :cond_3
    const/16 v1, 0x13

    ushr-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v1, v2, v0}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    goto :goto_0
.end method

.method public static store_local_object_var(Lcom/vladium/util/ByteArrayOStream;I)V
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 48
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 50
    add-int/lit8 v0, p1, 0x4b

    invoke-virtual {p0, v0}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 54
    invoke-virtual {p0, v2, p1}, Lcom/vladium/util/ByteArrayOStream;->write2(II)V

    goto :goto_0

    .line 59
    :cond_1
    const/16 v0, 0xc4

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    goto :goto_0
.end method
