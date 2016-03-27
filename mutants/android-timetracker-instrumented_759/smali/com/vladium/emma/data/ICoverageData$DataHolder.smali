.class public final Lcom/vladium/emma/data/ICoverageData$DataHolder;
.super Ljava/lang/Object;
.source "ICoverageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/data/ICoverageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataHolder"
.end annotation


# instance fields
.field public final m_coverage:[[Z

.field public final m_stamp:J


# direct methods
.method public constructor <init>([[ZJ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_coverage:[[Z

    .line 25
    iput-wide p2, p0, Lcom/vladium/emma/data/ICoverageData$DataHolder;->m_stamp:J

    .line 26
    return-void
.end method
