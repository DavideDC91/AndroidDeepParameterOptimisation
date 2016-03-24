.class public abstract Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;
.super Lcom/vladium/jcd/cls/constant/CONSTANT_info;
.source "CONSTANT_ref_info.java"


# instance fields
.field public m_class_index:I

.field public m_name_and_type_index:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 71
    iput p1, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_class_index:I

    .line 72
    iput p2, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_name_and_type_index:I

    .line 73
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
    .line 64
    invoke-direct {p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_class_index:I

    .line 66
    invoke-virtual {p1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    iput v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_name_and_type_index:I

    .line 67
    return-void
.end method


# virtual methods
.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 53
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_class_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 54
    iget v0, p0, Lcom/vladium/jcd/cls/constant/CONSTANT_ref_info;->m_name_and_type_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 55
    return-void
.end method
