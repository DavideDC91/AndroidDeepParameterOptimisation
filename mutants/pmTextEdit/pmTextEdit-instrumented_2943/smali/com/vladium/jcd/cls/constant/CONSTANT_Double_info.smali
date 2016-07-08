.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
.source "CONSTANT_Double_info.java"


# static fields
.field public static final TAG:B = 0x6t


# instance fields
.field public m_value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;->m_value:D

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;->m_value:D

    .line 84
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;->m_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 75
    iget-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;->m_value:D

    invoke-virtual {p1, v0, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeDouble(D)V

    .line 76
    return-void
.end method
