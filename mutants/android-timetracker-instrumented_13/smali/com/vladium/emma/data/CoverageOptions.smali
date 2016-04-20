.class public final Lcom/vladium/emma/data/CoverageOptions;
.super Ljava/lang/Object;
.source "CoverageOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final m_doSUIDCompensation:Z

.field private final m_excludeBridgeMethods:Z

.field private final m_excludeSyntheticMethods:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeSyntheticMethods:Z

    .line 54
    iput-boolean p2, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeBridgeMethods:Z

    .line 55
    iput-boolean p3, p0, Lcom/vladium/emma/data/CoverageOptions;->m_doSUIDCompensation:Z

    .line 56
    return-void
.end method

.method static readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/CoverageOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/vladium/emma/data/CoverageOptions;

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vladium/emma/data/CoverageOptions;-><init>(ZZZ)V

    return-object v0
.end method

.method static writeExternal(Lcom/vladium/emma/data/CoverageOptions;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeSyntheticMethods:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 71
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeBridgeMethods:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 72
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_doSUIDCompensation:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public doSUIDCompensation()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_doSUIDCompensation:Z

    return v0
.end method

.method public excludeBridgeMethods()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeBridgeMethods:Z

    return v0
.end method

.method public excludeSyntheticMethods()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vladium/emma/data/CoverageOptions;->m_excludeSyntheticMethods:Z

    return v0
.end method
