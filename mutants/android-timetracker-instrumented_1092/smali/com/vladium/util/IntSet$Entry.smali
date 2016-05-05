.class final Lcom/vladium/util/IntSet$Entry;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final m_key:I

.field m_next:Lcom/vladium/util/IntSet$Entry;


# direct methods
.method constructor <init>(ILcom/vladium/util/IntSet$Entry;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lcom/vladium/util/IntSet$Entry;->m_key:I

    .line 201
    iput-object p2, p0, Lcom/vladium/util/IntSet$Entry;->m_next:Lcom/vladium/util/IntSet$Entry;

    .line 202
    return-void
.end method
