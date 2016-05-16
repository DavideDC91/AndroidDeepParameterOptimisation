.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.source "CONSTANT_Utf8_info.java"


# static fields
.field public static final TAG:B = 0x1t


# instance fields
.field public m_value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONSTANT_Utf8: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 69
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 71
    iget-object v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    return-void
.end method
