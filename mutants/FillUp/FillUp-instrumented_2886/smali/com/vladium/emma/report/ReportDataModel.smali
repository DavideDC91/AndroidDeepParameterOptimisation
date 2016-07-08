.class final Lcom/vladium/emma/report/ReportDataModel;
.super Ljava/lang/Object;
.source "ReportDataModel.java"

# interfaces
.implements Lcom/vladium/emma/report/IReportDataModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/ReportDataModel$ReportDataView;
    }
.end annotation


# instance fields
.field private final m_cdata:Lcom/vladium/emma/data/ICoverageData;

.field private final m_mdata:Lcom/vladium/emma/data/IMetaData;

.field private final m_views:[Lcom/vladium/emma/report/IReportDataView;


# direct methods
.method constructor <init>(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: cdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vladium/emma/report/IReportDataView;

    iput-object v0, p0, Lcom/vladium/emma/report/ReportDataModel;->m_views:[Lcom/vladium/emma/report/IReportDataView;

    .line 148
    iput-object p1, p0, Lcom/vladium/emma/report/ReportDataModel;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 149
    iput-object p2, p0, Lcom/vladium/emma/report/ReportDataModel;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 150
    return-void
.end method


# virtual methods
.method public declared-synchronized getView(I)Lcom/vladium/emma/report/IReportDataView;
    .locals 14

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/ReportDataModel;->m_views:[Lcom/vladium/emma/report/IReportDataView;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/ReportDataModel;->m_views:[Lcom/vladium/emma/report/IReportDataView;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz v0, :cond_1

    .line 129
    :goto_0
    monitor-exit p0

    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 48
    :goto_1
    if-eqz v8, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/vladium/emma/report/ReportDataModel;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v0}, Lcom/vladium/emma/data/IMetaData;->hasSrcFileData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source file data view requested for metadata with incomplete SourceFile debug info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 51
    :cond_3
    new-instance v9, Lcom/vladium/emma/report/AllItem;

    invoke-direct {v9}, Lcom/vladium/emma/report/AllItem;-><init>()V

    .line 52
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/vladium/emma/report/ReportDataModel;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    invoke-interface {v0}, Lcom/vladium/emma/data/IMetaData;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ClassDescriptor;

    .line 58
    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getPackageVMName()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/PackageItem;

    .line 61
    if-nez v1, :cond_e

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "default package"

    move-object v2, v1

    .line 64
    :goto_3
    new-instance v1, Lcom/vladium/emma/report/PackageItem;

    invoke-direct {v1, v9, v2, v3}, Lcom/vladium/emma/report/PackageItem;-><init>(Lcom/vladium/emma/report/IItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v9, v1}, Lcom/vladium/emma/report/AllItem;->addChild(Lcom/vladium/emma/report/IItem;)V

    move-object v7, v1

    .line 70
    :goto_4
    const/4 v1, 0x0

    .line 71
    if-eqz v8, :cond_d

    .line 73
    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getSrcFileName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v3, v2}, Lcom/vladium/util/Descriptors;->combineVMName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/SrcFileItem;

    .line 79
    if-nez v1, :cond_c

    .line 81
    new-instance v1, Lcom/vladium/emma/report/SrcFileItem;

    invoke-direct {v1, v7, v2, v3}, Lcom/vladium/emma/report/SrcFileItem;-><init>(Lcom/vladium/emma/report/IItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v7, v1}, Lcom/vladium/emma/report/PackageItem;->addChild(Lcom/vladium/emma/report/IItem;)V

    move-object v6, v1

    .line 88
    :goto_5
    iget-object v1, p0, Lcom/vladium/emma/report/ReportDataModel;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    invoke-interface {v1, v0}, Lcom/vladium/emma/data/ICoverageData;->getCoverage(Lcom/vladium/emma/data/ClassDescriptor;)Lcom/vladium/emma/data/ICoverageData$DataHolder;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_5

    .line 94
    iget-wide v2, v1, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_stamp:J

    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getStamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 95
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    const-string v2, "CLASS_STAMP_MISMATCH"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getClassVMName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/util/Descriptors;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 63
    :cond_4
    invoke-static {v3}, Lcom/vladium/util/Descriptors;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 99
    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_coverage:[[Z

    move-object v2, v1

    .line 103
    :goto_6
    if-eqz v8, :cond_7

    new-instance v1, Lcom/vladium/emma/report/ClassItem;

    invoke-direct {v1, v6, v0, v2}, Lcom/vladium/emma/report/ClassItem;-><init>(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/data/ClassDescriptor;[[Z)V

    .line 104
    :goto_7
    invoke-virtual {v0}, Lcom/vladium/emma/data/ClassDescriptor;->getMethods()[Lcom/vladium/emma/data/MethodDescriptor;

    move-result-object v13

    .line 107
    const/4 v2, 0x0

    :goto_8
    array-length v0, v13

    if-ge v2, v0, :cond_9

    .line 109
    aget-object v5, v13, v2

    .line 111
    invoke-virtual {v5}, Lcom/vladium/emma/data/MethodDescriptor;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_8

    .line 107
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 99
    :cond_6
    const/4 v1, 0x0

    check-cast v1, [[Z

    move-object v2, v1

    goto :goto_6

    .line 103
    :cond_7
    new-instance v1, Lcom/vladium/emma/report/ClassItem;

    invoke-direct {v1, v7, v0, v2}, Lcom/vladium/emma/report/ClassItem;-><init>(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/data/ClassDescriptor;[[Z)V

    goto :goto_7

    .line 114
    :cond_8
    new-instance v0, Lcom/vladium/emma/report/MethodItem;

    invoke-virtual {v5}, Lcom/vladium/emma/data/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/vladium/emma/data/MethodDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/vladium/emma/data/MethodDescriptor;->getFirstLine()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/vladium/emma/report/MethodItem;-><init>(Lcom/vladium/emma/report/IItem;ILjava/lang/String;Ljava/lang/String;I)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/ClassItem;->addChild(Lcom/vladium/emma/report/IItem;)V

    goto :goto_9

    .line 120
    :cond_9
    if-eqz v8, :cond_a

    .line 121
    invoke-virtual {v6, v1}, Lcom/vladium/emma/report/SrcFileItem;->addChild(Lcom/vladium/emma/report/IItem;)V

    goto/16 :goto_2

    .line 123
    :cond_a
    invoke-virtual {v7, v1}, Lcom/vladium/emma/report/PackageItem;->addChild(Lcom/vladium/emma/report/IItem;)V

    goto/16 :goto_2

    .line 126
    :cond_b
    new-instance v0, Lcom/vladium/emma/report/ReportDataModel$ReportDataView;

    invoke-direct {v0, v9}, Lcom/vladium/emma/report/ReportDataModel$ReportDataView;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 128
    iget-object v1, p0, Lcom/vladium/emma/report/ReportDataModel;->m_views:[Lcom/vladium/emma/report/IReportDataView;

    aput-object v0, v1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_c
    move-object v6, v1

    goto/16 :goto_5

    :cond_d
    move-object v6, v1

    goto/16 :goto_5

    :cond_e
    move-object v7, v1

    goto/16 :goto_4
.end method
