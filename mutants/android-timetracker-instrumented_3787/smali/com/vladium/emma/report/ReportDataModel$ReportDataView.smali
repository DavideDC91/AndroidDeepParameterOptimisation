.class final Lcom/vladium/emma/report/ReportDataModel$ReportDataView;
.super Ljava/lang/Object;
.source "ReportDataModel.java"

# interfaces
.implements Lcom/vladium/emma/report/IReportDataView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ReportDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportDataView"
.end annotation


# instance fields
.field private final m_root:Lcom/vladium/emma/report/IItem;


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/IItem;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/vladium/emma/report/ReportDataModel$ReportDataView;->m_root:Lcom/vladium/emma/report/IItem;

    .line 165
    return-void
.end method


# virtual methods
.method public getRoot()Lcom/vladium/emma/report/IItem;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vladium/emma/report/ReportDataModel$ReportDataView;->m_root:Lcom/vladium/emma/report/IItem;

    return-object v0
.end method
