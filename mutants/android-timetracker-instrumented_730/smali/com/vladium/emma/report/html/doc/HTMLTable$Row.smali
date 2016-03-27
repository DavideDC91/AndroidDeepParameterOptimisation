.class Lcom/vladium/emma/report/html/doc/HTMLTable$Row;
.super Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.source "HTMLTable.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/HTMLTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Row"
.end annotation


# instance fields
.field private final m_th:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TR:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 120
    iput-boolean p1, p0, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;->m_th:Z

    .line 121
    return-void
.end method


# virtual methods
.method public newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;
    .locals 2

    .prologue
    .line 110
    new-instance v1, Lcom/vladium/emma/report/html/doc/HTMLTable$Cell;

    iget-boolean v0, p0, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;->m_th:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TH:Lcom/vladium/emma/report/html/doc/Tag;

    :goto_0
    invoke-direct {v1, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$Cell;-><init>(Lcom/vladium/emma/report/html/doc/Tag;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$Row;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 113
    return-object v1

    .line 110
    :cond_0
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TD:Lcom/vladium/emma/report/html/doc/Tag;

    goto :goto_0
.end method
