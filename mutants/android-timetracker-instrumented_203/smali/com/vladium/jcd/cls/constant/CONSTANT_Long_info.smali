.class public final Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;
.source "CONSTANT_Long_info.java"


# static fields
.field public static final TAG:B = 0x5t


# instance fields
.field public m_value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;->m_value:J

    .line 41
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
    .line 83
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;->m_value:J

    .line 85
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/constant/ICONSTANTVisitor;->visit(Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag()B
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;->m_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 65
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
    .line 74
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 76
    iget-wide v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;->m_value:J

    invoke-virtual {p1, v0, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeLong(J)V

    .line 77
    return-void
.end method
