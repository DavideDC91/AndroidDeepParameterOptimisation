.class public final Lcom/vladium/emma/report/PackageItem;
.super Lcom/vladium/emma/report/Item;
.source "PackageItem.java"


# static fields
.field private static final METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;


# instance fields
.field private final m_VMname:Ljava/lang/String;

.field private final m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lcom/vladium/emma/report/Item$ItemMetadata;

    const/4 v1, 0x1

    const-string v2, "package"

    const-wide/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/vladium/emma/report/Item$ItemMetadata;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/vladium/emma/report/PackageItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/vladium/emma/report/IItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/Item;-><init>(Lcom/vladium/emma/report/IItem;)V

    .line 24
    iput-object p2, p0, Lcom/vladium/emma/report/PackageItem;->m_name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/vladium/emma/report/PackageItem;->m_VMname:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vladium/emma/report/PackageItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-interface {p1, p0, p2}, Lcom/vladium/emma/report/IItemVisitor;->visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
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
    .line 45
    sget-object v0, Lcom/vladium/emma/report/PackageItem;->METADATA:Lcom/vladium/emma/report/Item$ItemMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vladium/emma/report/PackageItem;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVMName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vladium/emma/report/PackageItem;->m_VMname:Ljava/lang/String;

    return-object v0
.end method
