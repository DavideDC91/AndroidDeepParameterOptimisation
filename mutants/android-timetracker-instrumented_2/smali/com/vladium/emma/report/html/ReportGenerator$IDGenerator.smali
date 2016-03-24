.class final Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;
.super Ljava/lang/Object;
.source "ReportGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/ReportGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDGenerator"
.end annotation


# instance fields
.field private final m_namespace:Lcom/vladium/util/ObjectIntMap;

.field private final m_out:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Lcom/vladium/util/ObjectIntMap;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/vladium/util/ObjectIntMap;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_namespace:Lcom/vladium/util/ObjectIntMap;

    .line 733
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_out:[I

    .line 734
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    new-instance v0, Lcom/vladium/util/ObjectIntMap;

    invoke-direct {v0, p1}, Lcom/vladium/util/ObjectIntMap;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_namespace:Lcom/vladium/util/ObjectIntMap;

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_out:[I

    .line 740
    return-void
.end method


# virtual methods
.method getID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_out:[I

    .line 747
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_namespace:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v1, p1, v0}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 755
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_namespace:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v0}, Lcom/vladium/util/ObjectIntMap;->size()I

    move-result v0

    .line 752
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->m_namespace:Lcom/vladium/util/ObjectIntMap;

    invoke-virtual {v1, p1, v0}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_0
.end method
