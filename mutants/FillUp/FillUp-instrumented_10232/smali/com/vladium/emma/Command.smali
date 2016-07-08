.class public abstract Lcom/vladium/emma/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field protected static final COMMA_DELIMITERS:Ljava/lang/String; = ", \t\r\n"

.field protected static final PATH_DELIMITERS:Ljava/lang/String;

.field protected static final RC_OK:I = 0x0

.field protected static final RC_UNEXPECTED:I = 0x2

.field protected static final RC_USAGE:I = 0x1

.field protected static final STDOUT_WIDTH:I = 0x50

.field protected static final USAGE_OPT_NAMES:[Ljava/lang/String;


# instance fields
.field protected final m_args:[Ljava/lang/String;

.field protected m_exit:Z

.field protected m_out:Ljava/io/PrintWriter;

.field protected m_propertyFile:Ljava/io/File;

.field protected m_propertyOverrides:Ljava/util/Properties;

.field protected final m_usageToolName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 296
    const-string v0, ","

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/emma/Command;->PATH_DELIMITERS:Ljava/lang/String;

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "h"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "help"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/emma/Command;->USAGE_OPT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    .line 66
    if-eqz p2, :cond_0

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/vladium/emma/Command;->m_args:[Ljava/lang/String;

    .line 67
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/emma/Command;
    .locals 3

    .prologue
    .line 42
    const-string v0, "run"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/vladium/emma/runCommand;

    invoke-direct {v0, p1, p2}, Lcom/vladium/emma/runCommand;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {v0}, Lcom/vladium/emma/Command;->initialize()V

    .line 55
    return-object v0

    .line 44
    :cond_0
    const-string v0, "instr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/vladium/emma/instr/instrCommand;

    invoke-direct {v0, p1, p2}, Lcom/vladium/emma/instr/instrCommand;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "report"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/vladium/emma/report/reportCommand;

    invoke-direct {v0, p1, p2}, Lcom/vladium/emma/report/reportCommand;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "merge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Lcom/vladium/emma/data/mergeCommand;

    invoke-direct {v0, p1, p2}, Lcom/vladium/emma/data/mergeCommand;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getListOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-interface {p0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getValues()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vladium/util/Strings;->mergeAT([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z
    .locals 1

    .prologue
    .line 253
    invoke-interface {p0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getValueCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-interface {p0}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/vladium/util/Property;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    .line 317
    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/vladium/util/XProperties;

    invoke-direct {v0}, Lcom/vladium/util/XProperties;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    .line 322
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method protected static toolNameToCommandName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 283
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method protected static usageMsgPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    invoke-static {p0}, Lcom/vladium/emma/Command;->toolNameToCommandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " usage: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static usageResName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_usage.res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    const-string v1, "[EMMA v0.0, build 0 (unsupported private build)]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    :cond_0
    if-eqz p2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vladium/emma/Command;->toolNameToCommandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_1
    if-eqz p4, :cond_7

    .line 227
    iget-boolean v0, p0, Lcom/vladium/emma/Command;->m_exit:Z

    if-eqz v0, :cond_4

    .line 229
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 230
    :cond_2
    invoke-static {p4}, Ljava/lang/System;->exit(I)V

    .line 249
    :cond_3
    :goto_0
    return-void

    .line 234
    :cond_4
    instance-of v0, p3, Lcom/vladium/emma/EMMARuntimeException;

    if-eqz v0, :cond_5

    .line 235
    check-cast p3, Lcom/vladium/emma/EMMARuntimeException;

    throw p3

    .line 236
    :cond_5
    if-eqz p3, :cond_3

    .line 237
    if-eqz p2, :cond_6

    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v0, p2, p3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_6
    new-instance v0, Lcom/vladium/emma/EMMARuntimeException;

    const-string v1, "unexpected failure: "

    invoke-direct {v0, v1, p3}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 244
    :cond_7
    iget-boolean v0, p0, Lcom/vladium/emma/Command;->m_exit:Z

    if-eqz v0, :cond_3

    .line 246
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected final getOptParser(Ljava/lang/ClassLoader;)Lcom/vladium/util/args/IOptsParser;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/vladium/emma/Command;->getToolName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vladium/emma/Command;->usageResName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    invoke-static {v1}, Lcom/vladium/emma/Command;->usageMsgPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/emma/Command;->USAGE_OPT_NAMES:[Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/vladium/util/args/IOptsParser$Factory;->create(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Lcom/vladium/util/args/IOptsParser;

    move-result-object v0

    return-object v0
.end method

.method protected final getToolName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vladium/emma/Command;->m_exit:Z

    .line 76
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    .line 78
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final processCmdPropertyOverrides(Lcom/vladium/util/args/IOptsParser$IOpts;)V
    .locals 6

    .prologue
    .line 143
    const-string v0, "D"

    invoke-interface {p1, v0}, Lcom/vladium/util/args/IOptsParser$IOpts;->getOpts(Ljava/lang/String;)[Lcom/vladium/util/args/IOptsParser$IOpt;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_1

    array-length v0, v1

    if-eqz v0, :cond_1

    .line 146
    new-instance v2, Lcom/vladium/util/XProperties;

    invoke-direct {v2}, Lcom/vladium/util/XProperties;-><init>()V

    .line 148
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 150
    aget-object v3, v1, v0

    .line 151
    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getPatternPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-interface {v3}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    invoke-static {v2, v0}, Lcom/vladium/util/Property;->combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    .line 161
    :cond_1
    return-void
.end method

.method protected final processFilePropertyOverrides()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/vladium/emma/Command;->m_propertyFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/vladium/emma/Command;->m_propertyFile:Ljava/io/File;

    invoke-static {v1}, Lcom/vladium/util/Property;->getPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    invoke-static {v2, v1}, Lcom/vladium/util/Property;->combine(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/vladium/emma/Command;->m_propertyOverrides:Ljava/util/Properties;

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property override file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vladium/emma/Command;->m_propertyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] could not be read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v0}, Lcom/vladium/emma/Command;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final processOpt(Lcom/vladium/util/args/IOptsParser$IOpt;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-interface {p1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "exit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-static {p1}, Lcom/vladium/emma/Command;->getOptionalBooleanOptValue(Lcom/vladium/util/args/IOptsParser$IOpt;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vladium/emma/Command;->m_exit:Z

    .line 138
    :goto_0
    return v0

    .line 103
    :cond_0
    const-string v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vladium/emma/Command;->m_propertyFile:Ljava/io/File;

    goto :goto_0

    .line 108
    :cond_1
    const-string v2, "verbose"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string v1, "verbosity.level"

    const-string v2, "verbose"

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v2, "quiet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    const-string v1, "verbosity.level"

    const-string v2, "warning"

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string v2, "silent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    const-string v1, "verbosity.level"

    const-string v2, "severe"

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    invoke-interface {p1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getValueCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 126
    const-string v1, "verbosity.level"

    const-string v2, "trace1"

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_5
    const-string v1, "verbosity.level"

    invoke-interface {p1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_6
    const-string v2, "debugcls"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    const-string v1, "verbosity.filter"

    invoke-interface {p1}, Lcom/vladium/util/args/IOptsParser$IOpt;->getValues()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ", \t\r\n"

    invoke-static {v2, v3, v0}, Lcom/vladium/util/Strings;->merge([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/vladium/util/Strings;->toListForm([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/vladium/emma/Command;->setPropertyOverride(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public abstract run()V
.end method

.method protected abstract usageArgsMsg()Ljava/lang/String;
.end method

.method protected final usageexit(Lcom/vladium/util/args/IOptsParser;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 188
    if-eqz p3, :cond_0

    .line 190
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    invoke-static {v1}, Lcom/vladium/emma/Command;->usageMsgPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    :cond_0
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 197
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    invoke-static {v1}, Lcom/vladium/emma/Command;->usageMsgPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vladium/emma/Command;->m_usageToolName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vladium/emma/Command;->toolNameToCommandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vladium/emma/Command;->usageArgsMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    const-string v1, "  where options include:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 201
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    const/16 v1, 0x50

    invoke-interface {p1, v0, p2, v1}, Lcom/vladium/util/args/IOptsParser;->usage(Ljava/io/PrintWriter;II)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/Command;->m_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 205
    invoke-virtual {p0, v3, v4, v4, v3}, Lcom/vladium/emma/Command;->exit(ZLjava/lang/String;Ljava/lang/Throwable;I)V

    .line 206
    return-void
.end method
