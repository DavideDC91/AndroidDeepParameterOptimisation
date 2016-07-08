.class final Lcom/vladium/util/IntObjectMap$Entry;
.super Ljava/lang/Object;
.source "IntObjectMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IntObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final m_key:I

.field m_next:Lcom/vladium/util/IntObjectMap$Entry;

.field m_value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Lcom/vladium/util/IntObjectMap$Entry;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/vladium/util/IntObjectMap$Entry;->m_key:I

    .line 227
    iput-object p2, p0, Lcom/vladium/util/IntObjectMap$Entry;->m_value:Ljava/lang/Object;

    .line 228
    iput-object p3, p0, Lcom/vladium/util/IntObjectMap$Entry;->m_next:Lcom/vladium/util/IntObjectMap$Entry;

    .line 229
    return-void
.end method
