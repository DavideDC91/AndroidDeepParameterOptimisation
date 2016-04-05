.class public final Lcom/vladium/emma/report/Item$ItemMetadata;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/vladium/emma/report/IItemMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ItemMetadata"
.end annotation


# instance fields
.field private final m_attributeIDs:J

.field private final m_typeID:I

.field private final m_typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_typeID:I

    .line 121
    iput-object p2, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_typeName:Ljava/lang/String;

    .line 122
    iput-wide p3, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_attributeIDs:J

    .line 123
    return-void
.end method


# virtual methods
.method public getAttributeIDs()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_attributeIDs:J

    return-wide v0
.end method

.method public getTypeID()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_typeID:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vladium/emma/report/Item$ItemMetadata;->m_typeName:Ljava/lang/String;

    return-object v0
.end method
