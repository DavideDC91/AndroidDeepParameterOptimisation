.class final Lcom/vladium/emma/report/SourcePathCache$CacheEntry;
.super Ljava/lang/Object;
.source "SourcePathCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/SourcePathCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final m_listings:[Ljava/util/Set;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-array v0, p1, [Ljava/util/Set;

    iput-object v0, p0, Lcom/vladium/emma/report/SourcePathCache$CacheEntry;->m_listings:[Ljava/util/Set;

    .line 130
    return-void
.end method
