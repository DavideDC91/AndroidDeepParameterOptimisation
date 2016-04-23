.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
.source "CONSTANT_Float_info.java"


# static fields
.field public static final TAG:B = 0x4t


# instance fields
.field public m_value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 38
    iput p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;->m_value:F

    .line 39
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
    .line 73
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;->m_value:F

    .line 75
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;->m_value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

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
    .line 64
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 66
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Float_info;->m_value:F

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeFloat(F)V

    .line 67
    return-void
.end method
