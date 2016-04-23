.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
.source "CONSTANT_Integer_info.java"


# static fields
.field public static final TAG:B = 0x3t


# instance fields
.field public m_value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 39
    iput p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;->m_value:I

    .line 40
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
    .line 74
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;->m_value:I

    .line 76
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;->m_value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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
    .line 65
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 67
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Integer_info;->m_value:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeInt(I)V

    .line 68
    return-void
.end method
