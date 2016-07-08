.class abstract Lcom/vladium/util/exception/ExceptionCommon;
.super Ljava/lang/Object;
.source "ExceptionCommon.java"

# interfaces
.implements Lcom/vladium/util/IJREVersion;


# static fields
.field private static final ABSTACT_RUNTIME_EXCEPTION:Ljava/lang/Class;

.field private static final ABSTRACT_EXCEPTION:Ljava/lang/Class;

.field private static final EMBED_ERROR_CODE:Z = true

.field static final EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field private static final EMPTY_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

.field private static final EOL:Ljava/lang/String;

.field private static final NESTED_THROWABLE_HEADER:Ljava/lang/String; = "[NESTED EXCEPTION]:"

.field private static final ROOT_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

.field private static final ROOT_RESOURCE_BUNDLE_NAME:Ljava/lang/String;

.field private static final THROWABLE:Ljava/lang/Class;

.field private static final s_exceptionCodeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    .line 463
    const-class v0, Ljava/lang/Throwable;

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->THROWABLE:Ljava/lang/Class;

    .line 464
    const-class v0, Lcom/vladium/util/exception/AbstractException;

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ABSTRACT_EXCEPTION:Ljava/lang/Class;

    .line 465
    const-class v0, Lcom/vladium/util/exception/AbstractRuntimeException;

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ABSTACT_RUNTIME_EXCEPTION:Ljava/lang/Class;

    .line 466
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 467
    new-instance v0, Lcom/vladium/util/exception/ExceptionCommon$1;

    invoke-direct {v0}, Lcom/vladium/util/exception/ExceptionCommon$1;-><init>()V

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->EMPTY_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    .line 481
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->EOL:Ljava/lang/String;

    .line 487
    const-class v0, Lcom/vladium/util/exception/ExceptionCommon;

    const-string v1, "exceptions"

    invoke-static {v0, v1}, Lcom/vladium/util/exception/ExceptionCommon;->getNameInNamespace(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ROOT_RESOURCE_BUNDLE_NAME:Ljava/lang/String;

    .line 490
    const/4 v0, 0x0

    .line 493
    :try_start_0
    sget-object v1, Lcom/vladium/util/exception/ExceptionCommon;->ROOT_RESOURCE_BUNDLE_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :goto_0
    sput-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ROOT_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    .line 500
    return-void

    .line 495
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExceptionResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 92
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 97
    sget-object v1, Lcom/vladium/util/exception/ExceptionCommon;->ABSTRACT_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vladium/util/exception/ExceptionCommon;->ABSTACT_RUNTIME_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExceptionResource(): class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->ABSTRACT_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->ABSTACT_RUNTIME_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->getNameInNamespace(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 118
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    :goto_0
    if-eqz v1, :cond_2

    .line 129
    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    monitor-enter v2

    .line 131
    :try_start_1
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    .line 133
    if-eqz v0, :cond_3

    .line 134
    monitor-exit v2

    .line 144
    :cond_2
    :goto_1
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 124
    goto :goto_0

    .line 137
    :cond_3
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 288
    :cond_0
    :goto_0
    return-object p1

    .line 265
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 268
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->lookup(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_2
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getMessage(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 317
    :cond_1
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->getMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    aget-object v2, p2, v0

    .line 344
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :catch_1
    move-exception v3

    .line 348
    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 351
    :cond_2
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNameInNamespace(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    if-nez p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object p1

    .line 436
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 437
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 439
    if-lez v1, :cond_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static lookup(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 375
    if-nez p1, :cond_1

    move-object v0, v1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    if-eqz p0, :cond_4

    .line 385
    :goto_1
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ABSTRACT_EXCEPTION:Ljava/lang/Class;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ABSTACT_RUNTIME_EXCEPTION:Ljava/lang/Class;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->THROWABLE:Ljava/lang/Class;

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_4

    .line 387
    sget-object v2, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    monitor-enter v2

    .line 389
    :try_start_0
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    .line 390
    if-nez v0, :cond_2

    .line 393
    const-string v0, "exceptions"

    invoke-static {p0, v0}, Lcom/vladium/util/exception/ExceptionCommon;->addExceptionResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 396
    sget-object v3, Lcom/vladium/util/exception/ExceptionCommon;->s_exceptionCodeMap:Ljava/util/Map;

    sget-object v4, Lcom/vladium/util/exception/ExceptionCommon;->EMPTY_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v0, :cond_3

    .line 406
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 409
    :goto_2
    if-nez v0, :cond_0

    .line 413
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 408
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 418
    :cond_4
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ROOT_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_5

    .line 423
    :try_start_3
    sget-object v0, Lcom/vladium/util/exception/ExceptionCommon;->ROOT_RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 426
    :goto_3
    if-nez v0, :cond_0

    :cond_5
    move-object v0, v1

    .line 429
    goto :goto_0

    .line 425
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 3

    .prologue
    .line 198
    sget-boolean v0, Lcom/vladium/util/exception/ExceptionCommon;->JRE_1_4_PLUS:Z

    if-eqz v0, :cond_2

    .line 200
    instance-of v0, p0, Lcom/vladium/util/exception/IThrowableWrapper;

    if-eqz v0, :cond_1

    .line 202
    check-cast p0, Lcom/vladium/util/exception/IThrowableWrapper;

    .line 204
    invoke-interface {p0, p1}, Lcom/vladium/util/exception/IThrowableWrapper;->__printStackTrace(Ljava/io/PrintStream;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 213
    :cond_2
    const/4 v1, 0x1

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_0

    .line 215
    if-eqz v1, :cond_3

    .line 216
    const/4 v1, 0x0

    .line 223
    :goto_2
    instance-of v2, v0, Lcom/vladium/util/exception/IThrowableWrapper;

    if-eqz v2, :cond_4

    .line 225
    check-cast v0, Lcom/vladium/util/exception/IThrowableWrapper;

    .line 227
    invoke-interface {v0, p1}, Lcom/vladium/util/exception/IThrowableWrapper;->__printStackTrace(Ljava/io/PrintStream;)V

    .line 228
    invoke-interface {v0}, Lcom/vladium/util/exception/IThrowableWrapper;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 220
    const-string v2, "[NESTED EXCEPTION]:"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 154
    sget-boolean v0, Lcom/vladium/util/exception/ExceptionCommon;->JRE_1_4_PLUS:Z

    if-eqz v0, :cond_2

    .line 156
    instance-of v0, p0, Lcom/vladium/util/exception/IThrowableWrapper;

    if-eqz v0, :cond_1

    .line 158
    check-cast p0, Lcom/vladium/util/exception/IThrowableWrapper;

    .line 160
    invoke-interface {p0, p1}, Lcom/vladium/util/exception/IThrowableWrapper;->__printStackTrace(Ljava/io/PrintWriter;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v1, 0x1

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_0

    .line 171
    if-eqz v1, :cond_3

    .line 172
    const/4 v1, 0x0

    .line 179
    :goto_2
    instance-of v2, v0, Lcom/vladium/util/exception/IThrowableWrapper;

    if-eqz v2, :cond_4

    .line 181
    check-cast v0, Lcom/vladium/util/exception/IThrowableWrapper;

    .line 183
    invoke-interface {v0, p1}, Lcom/vladium/util/exception/IThrowableWrapper;->__printStackTrace(Ljava/io/PrintWriter;)V

    .line 184
    invoke-interface {v0}, Lcom/vladium/util/exception/IThrowableWrapper;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    const-string v2, "[NESTED EXCEPTION]:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method
