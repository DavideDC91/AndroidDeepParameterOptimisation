.class public final Lcom/vladium/emma/report/ReportProperties$ParsedProperties;
.super Ljava/lang/Object;
.source "ReportProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ReportProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParsedProperties"
.end annotation


# instance fields
.field private m_columnOrder:[I

.field private m_depth:I

.field private m_hideClasses:Z

.field private m_metrics:Lcom/vladium/util/IntIntMap;

.field private m_outDir:Ljava/io/File;

.field private m_outEncoding:Ljava/lang/String;

.field private m_outFile:Ljava/io/File;

.field private m_sortOrder:[I

.field private m_unitsType:I

.field private m_viewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnOrder()[I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_columnOrder:[I

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_depth:I

    return v0
.end method

.method public getHideClasses()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_hideClasses:Z

    return v0
.end method

.method public getMetrics()Lcom/vladium/util/IntIntMap;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_metrics:Lcom/vladium/util/IntIntMap;

    return-object v0
.end method

.method public getOutDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outDir:Ljava/io/File;

    return-object v0
.end method

.method public getOutEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getOutFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outFile:Ljava/io/File;

    return-object v0
.end method

.method public getSortOrder()[I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_sortOrder:[I

    return-object v0
.end method

.method public getUnitsType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_unitsType:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_viewType:I

    return v0
.end method

.method public setColumnOrder([I)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_columnOrder:[I

    .line 128
    return-void
.end method

.method public setDepth(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_depth:I

    .line 106
    return-void
.end method

.method public setHideClasses(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_hideClasses:Z

    .line 116
    return-void
.end method

.method public setMetrics(Lcom/vladium/util/IntIntMap;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_metrics:Lcom/vladium/util/IntIntMap;

    .line 152
    return-void
.end method

.method public setOutDir(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outDir:Ljava/io/File;

    .line 58
    return-void
.end method

.method public setOutEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outEncoding:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOutFile(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_outFile:Ljava/io/File;

    .line 70
    return-void
.end method

.method public setSortOrder([I)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_sortOrder:[I

    .line 140
    return-void
.end method

.method public setUnitsType(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_unitsType:I

    .line 82
    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->m_viewType:I

    .line 94
    return-void
.end method

.method validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method
