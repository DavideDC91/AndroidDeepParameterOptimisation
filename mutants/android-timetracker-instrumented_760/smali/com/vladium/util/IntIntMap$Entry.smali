.class final Lcom/vladium/util/IntIntMap$Entry;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field m_key:I

.field m_next:Lcom/vladium/util/IntIntMap$Entry;

.field m_value:I


# direct methods
.method constructor <init>(IILcom/vladium/util/IntIntMap$Entry;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/vladium/util/IntIntMap$Entry;->m_key:I

    .line 269
    iput p2, p0, Lcom/vladium/util/IntIntMap$Entry;->m_value:I

    .line 270
    iput-object p3, p0, Lcom/vladium/util/IntIntMap$Entry;->m_next:Lcom/vladium/util/IntIntMap$Entry;

    .line 271
    return-void
.end method
