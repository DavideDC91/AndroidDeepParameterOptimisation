.class Lcom/vladium/util/SoftValueMap$IndexedSoftReference;
.super Ljava/lang/ref/SoftReference;
.source "SoftValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/SoftValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexedSoftReference"
.end annotation


# instance fields
.field m_bucketIndex:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 434
    iput p3, p0, Lcom/vladium/util/SoftValueMap$IndexedSoftReference;->m_bucketIndex:I

    .line 435
    return-void
.end method
