.class public abstract Lcom/vladium/emma/report/IReportDataModel$Factory;
.super Ljava/lang/Object;
.source "IReportDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IReportDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)Lcom/vladium/emma/report/IReportDataModel;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/vladium/emma/report/ReportDataModel;

    invoke-direct {v0, p0, p1}, Lcom/vladium/emma/report/ReportDataModel;-><init>(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)V

    return-object v0
.end method
