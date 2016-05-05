.class public abstract Lcom/vladium/util/exception/AbstractException;
.super Ljava/lang/Exception;
.source "AbstractException.java"

# interfaces
.implements Lcom/vladium/util/exception/ICodedException;
.implements Lcom/vladium/util/exception/IThrowableWrapper;


# instance fields
.field private final transient m_arguments:[Ljava/lang/Object;

.field private final m_cause:Ljava/lang/Throwable;

.field private m_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 99
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 111
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 150
    iput-object p2, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 126
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 127
    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 166
    iput-object p3, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 167
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 168
    return-void

    .line 167
    :cond_0
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public static addExceptionResource(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->addExceptionResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle;

    .line 302
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/vladium/util/exception/AbstractException;->getMessage()Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 320
    return-void
.end method


# virtual methods
.method public __printStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 283
    return-void
.end method

.method public __printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 288
    return-void
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/vladium/util/exception/AbstractException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_message:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 186
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 189
    iget-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 191
    invoke-static {v2, v1}, Lcom/vladium/util/exception/ExceptionCommon;->getMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    if-nez v0, :cond_0

    .line 201
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    iput-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_message:Ljava/lang/String;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_message:Ljava/lang/String;

    return-object v0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/vladium/util/exception/AbstractException;->m_arguments:[Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/vladium/util/exception/ExceptionCommon;->getMessage(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final printStackTrace()V
    .locals 1

    .prologue
    .line 233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/vladium/util/exception/ExceptionCommon;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 234
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 244
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 253
    invoke-static {p0, p1}, Lcom/vladium/util/exception/ExceptionCommon;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 254
    return-void
.end method
