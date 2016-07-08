.class final Lcom/vladium/util/ObjectIntMap$Entry;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field m_key:Ljava/lang/Object;

.field m_next:Lcom/vladium/util/ObjectIntMap$Entry;

.field m_value:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/vladium/util/ObjectIntMap$Entry;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/vladium/util/ObjectIntMap$Entry;->m_key:Ljava/lang/Object;

    .line 265
    iput p2, p0, Lcom/vladium/util/ObjectIntMap$Entry;->m_value:I

    .line 266
    iput-object p3, p0, Lcom/vladium/util/ObjectIntMap$Entry;->m_next:Lcom/vladium/util/ObjectIntMap$Entry;

    .line 267
    return-void
.end method
