.class public abstract Lcom/vladium/emma/data/CoverageOptionsFactory;
.super Ljava/lang/Object;
.source "CoverageOptionsFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/vladium/util/IProperties;)Lcom/vladium/emma/data/CoverageOptions;
    .locals 4

    .prologue
    .line 45
    const-string v0, "instr.exclude_synthetic_methods"

    const-string v1, "true"

    invoke-interface {p0, v0, v1}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 49
    const-string v1, "instr.exclude_bridge_methods"

    const-string v2, "true"

    invoke-interface {p0, v1, v2}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 53
    const-string v2, "instr.do_suid_compensation"

    const-string v3, "true"

    invoke-interface {p0, v2, v3}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 57
    new-instance v3, Lcom/vladium/emma/data/CoverageOptions;

    invoke-direct {v3, v0, v1, v2}, Lcom/vladium/emma/data/CoverageOptions;-><init>(ZZZ)V

    return-object v3
.end method

.method public static create(Ljava/util/Properties;)Lcom/vladium/emma/data/CoverageOptions;
    .locals 4

    .prologue
    .line 28
    const-string v0, "instr.exclude_synthetic_methods"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 32
    const-string v1, "instr.exclude_bridge_methods"

    const-string v2, "true"

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 36
    const-string v2, "instr.do_suid_compensation"

    const-string v3, "true"

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 40
    new-instance v3, Lcom/vladium/emma/data/CoverageOptions;

    invoke-direct {v3, v0, v1, v2}, Lcom/vladium/emma/data/CoverageOptions;-><init>(ZZZ)V

    return-object v3
.end method
