.class public abstract Lcom/vladium/emma/EMMAProperties;
.super Ljava/lang/Object;
.source "EMMAProperties.java"


# static fields
.field public static final DEFAULT_COVERAGE_DATA_OUT_FILE:Ljava/lang/String; = "coverage.ec"

.field public static final DEFAULT_COVERAGE_DATA_OUT_MERGE:Ljava/lang/Boolean;

.field public static final DEFAULT_META_DATA_OUT_FILE:Ljava/lang/String; = "coverage.em"

.field public static final DEFAULT_META_DATA_OUT_MERGE:Ljava/lang/Boolean;

.field public static final DEFAULT_SESSION_DATA_OUT_FILE:Ljava/lang/String; = "coverage.es"

.field public static final DEFAULT_SESSION_DATA_OUT_MERGE:Ljava/lang/Boolean;

.field public static final GENERIC_PROPERTY_OVERRIDE_PREFIX:Ljava/lang/String; = "D"

.field public static final PREFIX_COVERAGE_DATA:Ljava/lang/String; = "coverage."

.field public static final PREFIX_META_DATA:Ljava/lang/String; = "metadata."

.field public static final PREFIX_SESSION_DATA:Ljava/lang/String; = "session."

.field public static final PROPERTY_COVERAGE_DATA_OUT_FILE:Ljava/lang/String; = "coverage.out.file"

.field public static final PROPERTY_COVERAGE_DATA_OUT_MERGE:Ljava/lang/String; = "coverage.out.merge"

.field public static final PROPERTY_META_DATA_OUT_FILE:Ljava/lang/String; = "metadata.out.file"

.field public static final PROPERTY_META_DATA_OUT_MERGE:Ljava/lang/String; = "metadata.out.merge"

.field public static final PROPERTY_SESSION_DATA_OUT_FILE:Ljava/lang/String; = "session.out.file"

.field public static final PROPERTY_SESSION_DATA_OUT_MERGE:Ljava/lang/String; = "session.out.merge"

.field public static final PROPERTY_TEMP_FILE_EXT:Ljava/lang/String; = ".et"

.field public static final SYSTEM_PROPERTY_REDIRECTS:Ljava/util/Map;

.field private static final s_properties:Ljava/util/Map;

.field private static s_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/vladium/emma/EMMAProperties;->DEFAULT_META_DATA_OUT_MERGE:Ljava/lang/Boolean;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/vladium/emma/EMMAProperties;->DEFAULT_COVERAGE_DATA_OUT_MERGE:Ljava/lang/Boolean;

    .line 54
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/vladium/emma/EMMAProperties;->DEFAULT_SESSION_DATA_OUT_MERGE:Ljava/lang/Boolean;

    .line 190
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/vladium/emma/EMMAProperties;->s_properties:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v1, "report."

    const-string v2, "out.encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.encoding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "report."

    const-string v2, "out.dir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user.dir"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/vladium/emma/EMMAProperties;->SYSTEM_PROPERTY_REDIRECTS:Ljava/util/Map;

    .line 199
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppProperties()Lcom/vladium/util/IProperties;
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/vladium/emma/EMMAProperties;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/vladium/util/ClassLoaderResolver;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/vladium/emma/EMMAProperties;->getAppProperties(Ljava/lang/ClassLoader;)Lcom/vladium/util/IProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAppProperties(Ljava/lang/ClassLoader;)Lcom/vladium/util/IProperties;
    .locals 6

    .prologue
    .line 127
    const-class v1, Lcom/vladium/emma/EMMAProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vladium/emma/EMMAProperties;->s_properties:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/IProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v0, :cond_0

    .line 170
    :goto_0
    monitor-exit v1

    return-object v0

    .line 133
    :cond_0
    :try_start_1
    const-string v0, "emma"

    .line 138
    sget-object v0, Lcom/vladium/emma/EMMAProperties;->SYSTEM_PROPERTY_REDIRECTS:Ljava/util/Map;

    invoke-static {v0}, Lcom/vladium/util/Property;->getSystemPropertyRedirects(Ljava/util/Map;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v2

    .line 139
    const-string v0, "emma_default.properties"

    invoke-static {v0, p0}, Lcom/vladium/util/Property;->getProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v3

    .line 142
    const-string v0, "emma.properties"

    invoke-static {v0}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    :goto_1
    invoke-static {v0}, Lcom/vladium/util/Property;->getLazyPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 149
    const-string v4, "emma"

    invoke-static {v4}, Lcom/vladium/util/Property;->getSystemProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    invoke-static {v4}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v4

    .line 150
    const-string v5, "emma.properties"

    invoke-static {v5, p0}, Lcom/vladium/util/Property;->getProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;

    move-result-object v5

    invoke-static {v5}, Lcom/vladium/emma/EMMAProperties;->wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;

    move-result-object v5

    .line 162
    invoke-static {v3, v2}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vladium/util/IProperties$Factory;->combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;

    move-result-object v0

    .line 168
    sget-object v2, Lcom/vladium/emma/EMMAProperties;->s_properties:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getTimeStamp()J
    .locals 6

    .prologue
    .line 74
    const-class v2, Lcom/vladium/emma/EMMAProperties;

    monitor-enter v2

    :try_start_0
    sget-wide v0, Lcom/vladium/emma/EMMAProperties;->s_timestamp:J

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vladium/emma/EMMAProperties;->s_timestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v2

    return-wide v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static makeAppVersion(III)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x2e

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/util/Properties;)Lcom/vladium/util/IProperties;
    .locals 1

    .prologue
    .line 106
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vladium/emma/report/ReportProperties;->REPORT_PROPERTY_MAPPER:Lcom/vladium/util/IProperties$IMapper;

    invoke-static {p0, v0}, Lcom/vladium/util/IProperties$Factory;->wrap(Ljava/util/Properties;Lcom/vladium/util/IProperties$IMapper;)Lcom/vladium/util/IProperties;

    move-result-object v0

    goto :goto_0
.end method
