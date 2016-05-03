.class public abstract Lcom/vladium/util/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/Property$SystemRedirectsLookup;,
        Lcom/vladium/util/Property$SystemPropertyLookup;,
        Lcom/vladium/util/Property$FilePropertyLookup;
    }
.end annotation


# static fields
.field private static s_systemFingerprint:Ljava/lang/String;

.field private static s_systemProperties:Ljava/util/Properties;

.field private static s_systemRedirects:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method public static combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance p0, Lcom/vladium/util/XProperties;

    invoke-direct {p0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 87
    :cond_0
    :goto_0
    return-object p0

    .line 70
    :cond_1
    if-nez p0, :cond_2

    move-object p0, p1

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lcom/vladium/util/XProperties;

    invoke-direct {v1, p1}, Lcom/vladium/util/XProperties;-><init>(Ljava/util/Properties;)V

    .line 79
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object p0, v1

    .line 87
    goto :goto_0
.end method

.method public static getAppProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;
    .locals 5

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null properties: appNameLC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_default.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vladium/util/Property;->getProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;

    move-result-object v1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-static {v0}, Lcom/vladium/util/Property;->getLazyPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    .line 115
    invoke-static {p0}, Lcom/vladium/util/Property;->getSystemProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/vladium/util/Property;->getProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;

    move-result-object v3

    .line 118
    invoke-static {v0, v1}, Lcom/vladium/util/Property;->combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vladium/util/Property;->combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vladium/util/Property;->combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLazyPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/vladium/util/Property$FilePropertyLookup;

    invoke-direct {v0, p0}, Lcom/vladium/util/Property$FilePropertyLookup;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/vladium/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    .line 225
    :try_start_1
    new-instance v2, Lcom/vladium/util/XProperties;

    invoke-direct {v2}, Lcom/vladium/util/XProperties;-><init>()V

    .line 226
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    .line 235
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :cond_1
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 235
    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_2
    :goto_3
    throw v0

    .line 235
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 229
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getProperties(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Properties;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-static {p0, p1}, Lcom/vladium/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    new-instance v2, Lcom/vladium/util/XProperties;

    invoke-direct {v2}, Lcom/vladium/util/XProperties;-><init>()V

    .line 260
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    .line 269
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    :cond_1
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 269
    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 270
    :cond_2
    :goto_3
    throw v0

    .line 269
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 263
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 294
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    new-instance v0, Lcom/vladium/util/XProperties;

    invoke-direct {v0}, Lcom/vladium/util/XProperties;-><init>()V

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :cond_1
    :goto_0
    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 302
    :cond_2
    :goto_2
    throw v0

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getSystemFingerprint()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 161
    sget-object v0, Lcom/vladium/util/Property;->s_systemFingerprint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/vladium/util/Property;->s_systemFingerprint:Ljava/lang/String;

    .line 181
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    const-string v1, "java.vm.name"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "java.vm.version"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "java.vm.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, "os.name"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, "os.version"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    const-string v1, "os.arch"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/Property;->s_systemFingerprint:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/vladium/util/Property;->s_systemFingerprint:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/vladium/util/Property;->s_systemProperties:Ljava/util/Properties;

    .line 129
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/vladium/util/Property$SystemPropertyLookup;

    invoke-direct {v0, p0}, Lcom/vladium/util/Property$SystemPropertyLookup;-><init>(Ljava/lang/String;)V

    .line 133
    sput-object v0, Lcom/vladium/util/Property;->s_systemProperties:Ljava/util/Properties;

    .line 137
    :cond_0
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 205
    :goto_0
    return-object p1

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getSystemPropertyRedirects(Ljava/util/Map;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/vladium/util/Property;->s_systemRedirects:Ljava/util/Properties;

    .line 145
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/vladium/util/Property$SystemRedirectsLookup;

    invoke-direct {v0, p0}, Lcom/vladium/util/Property$SystemRedirectsLookup;-><init>(Ljava/util/Map;)V

    .line 149
    sput-object v0, Lcom/vladium/util/Property;->s_systemRedirects:Ljava/util/Properties;

    .line 153
    :cond_0
    return-object v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "y"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
