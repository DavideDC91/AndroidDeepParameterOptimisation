.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
.source "CONSTANT_String_info.java"


# static fields
.field public static final TAG:B = 0x8t


# instance fields
.field public m_string_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 40
    iput p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;->m_string_index:I

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;->m_string_index:I

    .line 78
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x8

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONSTANT_String: [string_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;->m_string_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 69
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;->m_string_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 70
    return-void
.end method
