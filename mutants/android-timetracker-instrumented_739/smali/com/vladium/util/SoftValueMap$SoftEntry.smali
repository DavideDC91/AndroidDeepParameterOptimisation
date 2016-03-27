.class Lcom/vladium/util/SoftValueMap$SoftEntry;
.super Ljava/lang/Object;
.source "SoftValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/SoftValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftEntry"
.end annotation


# instance fields
.field m_key:Ljava/lang/Object;

.field m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

.field m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljava/lang/Object;Lcom/vladium/util/SoftValueMap$SoftEntry;I)V
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_key:Ljava/lang/Object;

    .line 451
    new-instance v0, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    invoke-direct {v0, p3, p1, p5}, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    iput-object v0, p0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_softValue:Lcom/vladium/util/SoftValueMap$IndexedSoftReference;

    .line 454
    iput-object p4, p0, Lcom/vladium/util/SoftValueMap$SoftEntry;->m_next:Lcom/vladium/util/SoftValueMap$SoftEntry;

    .line 455
    return-void
.end method
