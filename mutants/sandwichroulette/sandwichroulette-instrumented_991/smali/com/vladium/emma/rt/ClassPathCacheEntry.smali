.class public final Lcom/vladium/emma/rt/ClassPathCacheEntry;
.super Ljava/lang/Object;
.source "ClassPathCacheEntry.java"


# instance fields
.field public final m_bytes:[B

.field public final m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vladium/emma/rt/ClassPathCacheEntry;->m_bytes:[B

    .line 37
    iput-object p2, p0, Lcom/vladium/emma/rt/ClassPathCacheEntry;->m_srcURL:Ljava/lang/String;

    .line 38
    return-void
.end method
