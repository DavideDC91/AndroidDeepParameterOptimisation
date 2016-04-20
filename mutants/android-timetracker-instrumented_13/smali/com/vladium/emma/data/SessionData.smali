.class public final Lcom/vladium/emma/data/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"

# interfaces
.implements Lcom/vladium/emma/data/ISessionData;
.implements Ljava/io/Serializable;


# instance fields
.field private final m_cdata:Lcom/vladium/emma/data/ICoverageData;

.field private final m_mdata:Lcom/vladium/emma/data/IMetaData;


# direct methods
.method public constructor <init>(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: cdata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/vladium/emma/data/SessionData;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    .line 43
    iput-object p2, p0, Lcom/vladium/emma/data/SessionData;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    .line 44
    return-void
.end method


# virtual methods
.method public getCoverageData()Lcom/vladium/emma/data/ICoverageData;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vladium/emma/data/SessionData;->m_cdata:Lcom/vladium/emma/data/ICoverageData;

    return-object v0
.end method

.method public getMetaData()Lcom/vladium/emma/data/IMetaData;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vladium/emma/data/SessionData;->m_mdata:Lcom/vladium/emma/data/IMetaData;

    return-object v0
.end method
