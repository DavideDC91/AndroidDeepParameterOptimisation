.class public final Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;
.super Ljava/lang/Object;
.source "SrcFileItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/SrcFileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LineCoverageData"
.end annotation


# static fields
.field public static final LINE_COVERAGE_COMPLETE:I = 0x2

.field public static final LINE_COVERAGE_PARTIAL:I = 0x1

.field public static final LINE_COVERAGE_ZERO:I


# instance fields
.field public final m_coverageRatio:[[I

.field public final m_coverageStatus:I

.field final synthetic this$0:Lcom/vladium/emma/report/SrcFileItem;


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/SrcFileItem;I[[I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->this$0:Lcom/vladium/emma/report/SrcFileItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageStatus:I

    .line 40
    iput-object p3, p0, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageRatio:[[I

    .line 41
    return-void
.end method
