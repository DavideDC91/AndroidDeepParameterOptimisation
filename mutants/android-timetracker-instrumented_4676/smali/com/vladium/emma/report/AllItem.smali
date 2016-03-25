.class public final Lcom/vladium/emma/report/AllItem;
.super Lcom/vladium/emma/report/Item;
.source "AllItem.java"


# static fields
.field private static final METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 57
    new-instance v0, Lcom/vladium/emma/report/Item$ItemMetadata;

    const/4 v1, 0x0

    const-string v2, "all"

    const-wide/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/vladium/emma/report/Item$ItemMetadata;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/vladium/emma/report/AllItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/Item;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 23
    return-void
.end method

.method public static getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/vladium/emma/report/AllItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-interface {p1, p0, p2}, Lcom/vladium/emma/report/IItemVisitor;->visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public bridge synthetic getAggregate(I)I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/vladium/emma/report/Item;->getAggregate(I)I

    move-result v0

    return v0
.end method

.method public final getMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vladium/emma/report/AllItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "all classes"

    return-object v0
.end method
