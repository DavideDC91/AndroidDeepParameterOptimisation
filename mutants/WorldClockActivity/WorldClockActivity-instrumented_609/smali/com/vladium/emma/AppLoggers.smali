.class public abstract Lcom/vladium/emma/AppLoggers;
.super Ljava/lang/Object;
.source "AppLoggers.java"


# static fields
.field private static final COMMA_DELIMITERS:Ljava/lang/String; = ", \t\r\n"

.field public static final DEFAULT_VERBOSITY_LEVEL:Ljava/lang/String; = "info"

.field public static final PREFIX_VERBOSITY:Ljava/lang/String; = "verbosity."

.field public static final PROPERTY_VERBOSITY_FILTER:Ljava/lang/String; = "verbosity.filter"

.field public static final PROPERTY_VERBOSITY_LEVEL:Ljava/lang/String; = "verbosity.level"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/vladium/util/IProperties;Lcom/vladium/logging/Logger;)Lcom/vladium/logging/Logger;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-string v0, "verbosity.level"

    const-string v2, "info"

    invoke-interface {p1, v0, v2}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/vladium/logging/Logger;->stringToLevel(Ljava/lang/String;)I

    move-result v2

    .line 54
    const-string v0, "verbosity.filter"

    invoke-interface {p1, v0}, Lcom/vladium/util/IProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ", \t\r\n"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 63
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 73
    :cond_2
    invoke-static {v2, v1, p0, v0, p2}, Lcom/vladium/logging/Logger;->create(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;Lcom/vladium/logging/Logger;)Lcom/vladium/logging/Logger;

    move-result-object v0

    return-object v0
.end method
