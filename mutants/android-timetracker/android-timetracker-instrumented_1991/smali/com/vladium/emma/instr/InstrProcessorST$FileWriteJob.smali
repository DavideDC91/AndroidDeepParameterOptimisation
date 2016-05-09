.class final Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;
.super Lcom/vladium/emma/instr/InstrProcessorST$Job;
.source "InstrProcessorST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrProcessorST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileWriteJob"
.end annotation


# instance fields
.field m_data:[B

.field final m_mkdirs:Z

.field final m_outFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;[BZ)V
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/instr/InstrProcessorST$Job;-><init>(Lcom/vladium/emma/instr/InstrProcessorST$1;)V

    .line 888
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_outFile:Ljava/io/File;

    .line 889
    iput-object p2, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_data:[B

    .line 890
    iput-boolean p3, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_mkdirs:Z

    .line 891
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_data:[B

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_outFile:Ljava/io/File;

    iget-boolean v2, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_mkdirs:Z

    invoke-static {v0, v1, v2}, Lcom/vladium/emma/instr/InstrProcessorST;->writeFile([BLjava/io/File;Z)V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST$FileWriteJob;->m_data:[B

    .line 884
    return-void
.end method
