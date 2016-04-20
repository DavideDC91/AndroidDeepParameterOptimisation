.class public interface abstract Lcom/vladium/emma/report/IReportGenerator;
.super Ljava/lang/Object;
.source "IReportGenerator.java"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract process(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation
.end method
