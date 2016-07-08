.class public abstract Lcom/vladium/emma/report/AbstractReportGenerator;
.super Lcom/vladium/emma/report/AbstractItemVisitor;
.source "AbstractReportGenerator.java"

# interfaces
.implements Lcom/vladium/emma/report/IReportGenerator;


# static fields
.field private static final MAX_DEBUG_INFO_WARNING_COUNT:I = 0x3


# instance fields
.field protected m_cache:Lcom/vladium/emma/report/SourcePathCache;

.field protected m_hasLineNumberInfo:Z

.field protected m_hasSrcFileInfo:Z

.field protected m_log:Lcom/vladium/logging/Logger;

.field protected m_metrics:[I

.field protected m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

.field protected m_srcView:Z

.field protected m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

.field protected m_verbose:Z

.field protected m_view:Lcom/vladium/emma/report/IReportDataView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vladium/emma/report/AbstractItemVisitor;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/vladium/emma/report/IReportGenerator;
    .locals 3

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty input: type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    const-string v0, "html"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    new-instance v0, Lcom/vladium/emma/report/html/ReportGenerator;

    invoke-direct {v0}, Lcom/vladium/emma/report/html/ReportGenerator;-><init>()V

    .line 51
    :goto_0
    return-object v0

    .line 46
    :cond_2
    const-string v0, "lcov"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lcom/vladium/emma/report/lcov/ReportGenerator;

    invoke-direct {v0}, Lcom/vladium/emma/report/lcov/ReportGenerator;-><init>()V

    goto :goto_0

    .line 48
    :cond_3
    const-string v0, "txt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    new-instance v0, Lcom/vladium/emma/report/txt/ReportGenerator;

    invoke-direct {v0}, Lcom/vladium/emma/report/txt/ReportGenerator;-><init>()V

    goto :goto_0

    .line 50
    :cond_4
    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    new-instance v0, Lcom/vladium/emma/report/xml/ReportGenerator;

    invoke-direct {v0}, Lcom/vladium/emma/report/xml/ReportGenerator;-><init>()V

    goto :goto_0

    .line 53
    :cond_5
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no report generator class found for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->reset()V

    .line 220
    return-void
.end method

.method public initialize(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    .line 62
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atVERBOSE()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_verbose:Z

    .line 64
    invoke-virtual {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/vladium/emma/report/ReportProperties;->parseProperties(Lcom/vladium/util/IProperties;Ljava/lang/String;)Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    .line 66
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 68
    invoke-interface {p1}, Lcom/vladium/emma/data/IMetaData;->hasSrcFileData()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_hasSrcFileInfo:Z

    .line 69
    invoke-interface {p1}, Lcom/vladium/emma/data/IMetaData;->hasLineNumberData()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_hasLineNumberInfo:Z

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v5, 0x0

    .line 75
    invoke-interface {p1}, Lcom/vladium/emma/data/IMetaData;->hasSrcFileData()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getViewType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 79
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "not all instrumented classes were compiled with source file"

    invoke-virtual {v3, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "debug data: no sources will be embedded in the report."

    invoke-virtual {v3, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setViewType(I)V

    .line 86
    :cond_0
    iget-boolean v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_hasLineNumberInfo:Z

    if-nez v3, :cond_11

    .line 88
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v6

    .line 89
    new-instance v7, Lcom/vladium/util/IntVector;

    invoke-direct {v7}, Lcom/vladium/util/IntVector;-><init>()V

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v3, 0x0

    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_2

    .line 94
    aget v8, v6, v3

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 95
    const/4 v4, 0x1

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    aget v8, v6, v3

    invoke-virtual {v7, v8}, Lcom/vladium/util/IntVector;->add(I)V

    goto :goto_1

    .line 101
    :cond_2
    if-eqz v4, :cond_11

    .line 103
    const/4 v3, 0x1

    .line 105
    invoke-virtual {v7}, Lcom/vladium/util/IntVector;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 107
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line coverage requested in a report of type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] but"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "not all instrumented classes were compiled with line number"

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "debug data: since this was the only requested column, no report will be generated."

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x1

    move v4, v2

    move v2, v3

    .line 140
    :goto_2
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atINFO()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 143
    new-instance v6, Lcom/vladium/util/ObjectIntMap;

    invoke-direct {v6}, Lcom/vladium/util/ObjectIntMap;-><init>()V

    .line 144
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 146
    invoke-interface {p1}, Lcom/vladium/emma/data/IMetaData;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 148
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vladium/emma/data/ClassDescriptor;

    .line 151
    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->hasCompleteLineNumberInfo()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->hasSrcFileInfo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 153
    :cond_4
    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->getPackageVMName()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v6, v9, v7}, Lcom/vladium/util/ObjectIntMap;->get(Ljava/lang/Object;[I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    aget v3, v7, v3

    .line 158
    :goto_4
    const/4 v10, 0x3

    if-ge v3, v10, :cond_3

    .line 160
    invoke-virtual {v2}, Lcom/vladium/emma/data/ClassDescriptor;->getClassVMName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vladium/util/Descriptors;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v6, v9, v2}, Lcom/vladium/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_3

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "line coverage requested in a report of type ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] but"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "not all instrumented classes were compiled with line number"

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "debug data: this column will be removed from the report."

    invoke-virtual {v2, v4}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v7}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setColumnOrder([I)V

    .line 121
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getSortOrder()[I

    move-result-object v4

    .line 122
    new-instance v6, Lcom/vladium/util/IntVector;

    invoke-direct {v6}, Lcom/vladium/util/IntVector;-><init>()V

    .line 124
    const/4 v2, 0x0

    :goto_5
    array-length v7, v4

    if-ge v2, v7, :cond_7

    .line 126
    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    .line 128
    aget v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/vladium/util/IntVector;->add(I)V

    .line 129
    add-int/lit8 v7, v2, 0x1

    aget v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/vladium/util/IntVector;->add(I)V

    .line 124
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 133
    :cond_7
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setSortOrder([I)V

    move v4, v5

    move v2, v3

    goto/16 :goto_2

    .line 154
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 166
    :cond_9
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "showing up to 3 classes without full debug info per package:"

    invoke-virtual {v2, v3}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 167
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 169
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 173
    :cond_a
    if-eqz v4, :cond_b

    .line 176
    new-instance v2, Lcom/vladium/emma/EMMARuntimeException;

    const-string v3, "BAILED OUT"

    invoke-direct {v2, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_b
    invoke-static {}, Lcom/vladium/emma/report/IItemMetadata$Factory;->getAllTypes()[Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v4

    .line 180
    array-length v2, v4

    new-array v2, v2, [Lcom/vladium/emma/report/ItemComparator;

    iput-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    .line 182
    const/4 v2, 0x0

    :goto_7
    array-length v3, v4

    if-ge v2, v3, :cond_e

    .line 184
    new-instance v5, Lcom/vladium/util/IntVector;

    invoke-direct {v5}, Lcom/vladium/util/IntVector;-><init>()V

    .line 185
    aget-object v3, v4, v2

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getAttributeIDs()J

    move-result-wide v6

    .line 187
    const/4 v3, 0x0

    :goto_8
    iget-object v8, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v8}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getSortOrder()[I

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_d

    .line 189
    iget-object v8, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v8}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getSortOrder()[I

    move-result-object v8

    aget v8, v8, v3

    .line 191
    const/4 v9, 0x1

    shl-int/2addr v9, v8

    int-to-long v10, v9

    and-long/2addr v10, v6

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_c

    .line 193
    invoke-virtual {v5, v8}, Lcom/vladium/util/IntVector;->add(I)V

    .line 195
    iget-object v8, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v8}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getSortOrder()[I

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    .line 196
    invoke-virtual {v5, v8}, Lcom/vladium/util/IntVector;->add(I)V

    .line 187
    :cond_c
    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    .line 200
    :cond_d
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-virtual {v5}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v5

    iget-object v6, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/vladium/emma/report/ItemComparator$Factory;->create([II)Lcom/vladium/emma/report/ItemComparator;

    move-result-object v5

    aput-object v5, v3, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 203
    :cond_e
    array-length v2, v4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_metrics:[I

    .line 204
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getMetrics()Lcom/vladium/util/IntIntMap;

    move-result-object v3

    .line 205
    const/4 v2, 0x0

    :goto_9
    iget-object v4, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_metrics:[I

    array-length v4, v4

    if-ge v2, v4, :cond_f

    .line 207
    iget-object v4, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_metrics:[I

    const/4 v5, -0x1

    aput v5, v4, v2

    .line 208
    iget-object v4, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_metrics:[I

    invoke-virtual {v3, v2, v4, v2}, Lcom/vladium/util/IntIntMap;->get(I[II)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 211
    :cond_f
    invoke-static/range {p1 .. p2}, Lcom/vladium/emma/report/IReportDataModel$Factory;->create(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)Lcom/vladium/emma/report/IReportDataModel;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v3}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getViewType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/vladium/emma/report/IReportDataModel;->getView(I)Lcom/vladium/emma/report/IReportDataView;

    move-result-object v2

    iput-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    .line 214
    iget-object v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getViewType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    :goto_a
    iput-boolean v2, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_srcView:Z

    .line 215
    return-void

    .line 214
    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    move v4, v5

    goto/16 :goto_2
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    .line 228
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    .line 229
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_srcView:Z

    .line 233
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    .line 234
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_metrics:[I

    .line 236
    iput-object v1, p0, Lcom/vladium/emma/report/AbstractReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    .line 237
    return-void
.end method
