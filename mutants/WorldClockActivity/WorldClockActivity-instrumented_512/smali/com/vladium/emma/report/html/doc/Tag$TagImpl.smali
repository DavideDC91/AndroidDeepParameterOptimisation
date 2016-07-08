.class final Lcom/vladium/emma/report/html/doc/Tag$TagImpl;
.super Lcom/vladium/emma/report/html/doc/Tag;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TagImpl"
.end annotation


# instance fields
.field private final m_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vladium/emma/report/html/doc/Tag;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;->m_name:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;->m_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->write(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;->m_name:Ljava/lang/String;

    return-object v0
.end method
