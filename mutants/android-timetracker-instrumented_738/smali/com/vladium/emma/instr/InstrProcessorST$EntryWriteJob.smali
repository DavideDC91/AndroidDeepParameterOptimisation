.class final Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;
.super Lcom/vladium/emma/instr/InstrProcessorST$Job;
.source "InstrProcessorST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrProcessorST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryWriteJob"
.end annotation


# instance fields
.field m_data:[B

.field final m_entry:Ljava/util/zip/ZipEntry;

.field final m_isCopy:Z

.field final m_out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipOutputStream;[BLjava/util/zip/ZipEntry;Z)V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/instr/InstrProcessorST$Job;-><init>(Lcom/vladium/emma/instr/InstrProcessorST$1;)V

    .line 911
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_out:Ljava/util/zip/ZipOutputStream;

    .line 912
    iput-object p2, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_data:[B

    .line 913
    iput-object p3, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_entry:Ljava/util/zip/ZipEntry;

    .line 914
    iput-boolean p4, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_isCopy:Z

    .line 915
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_data:[B

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_out:Ljava/util/zip/ZipOutputStream;

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_entry:Ljava/util/zip/ZipEntry;

    iget-boolean v3, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_isCopy:Z

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/instr/InstrProcessorST;->writeZipEntry([BLjava/util/zip/ZipOutputStream;Ljava/util/zip/ZipEntry;Z)V

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrProcessorST$EntryWriteJob;->m_data:[B

    .line 907
    return-void
.end method
