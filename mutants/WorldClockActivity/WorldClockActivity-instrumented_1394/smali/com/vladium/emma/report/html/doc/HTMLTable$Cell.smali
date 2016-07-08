.class Lcom/vladium/emma/report/html/doc/HTMLTable$Cell;
.super Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;
.source "HTMLTable.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/html/doc/HTMLTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cell"
.end annotation


# direct methods
.method constructor <init>(Lcom/vladium/emma/report/html/doc/Tag;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/vladium/emma/report/html/doc/AttributeSet;->create()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory$ElementImpl;-><init>(Lcom/vladium/emma/report/html/doc/Tag;Lcom/vladium/emma/report/html/doc/AttributeSet;)V

    .line 100
    return-void
.end method


# virtual methods
.method public setColspan(I)Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/vladium/emma/report/html/doc/HTMLTable$Cell;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/vladium/emma/report/html/doc/Attribute;->COLSPAN:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v0, v1, p1}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;I)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 94
    return-object p0
.end method
