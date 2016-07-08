.class final Lcom/vladium/util/IProperties$Factory$PropertiesImpl;
.super Ljava/lang/Object;
.source "IProperties.java"

# interfaces
.implements Lcom/vladium/util/IProperties;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IProperties$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertiesImpl"
.end annotation


# instance fields
.field private m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

.field private final m_mapper:Lcom/vladium/util/IProperties$IMapper;

.field private transient m_unmappedKeySet:Ljava/util/Set;

.field private m_valueMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/vladium/util/IProperties$IMapper;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_mapper:Lcom/vladium/util/IProperties$IMapper;

    .line 302
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    .line 305
    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/vladium/util/IProperties;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    .line 177
    iput-object v5, v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 182
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    move-object v3, v1

    move-object v4, v0

    :goto_0
    if-eqz v3, :cond_0

    .line 187
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    iget-object v2, v3, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v1, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    .line 199
    iput-object v5, v1, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 201
    invoke-virtual {v4, v1}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->setDelegate(Lcom/vladium/util/IProperties$Factory$PropertiesImpl;)V

    .line 182
    iget-object v2, v3, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    move-object v3, v2

    move-object v4, v1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :catch_1
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    return-object v0
.end method

.method getLastProperties()Lcom/vladium/util/IProperties$Factory$PropertiesImpl;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 334
    if-ne v0, p0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cyclic delegation detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    iget-object v1, v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 340
    :cond_1
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_mapper:Lcom/vladium/util/IProperties$IMapper;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_mapper:Lcom/vladium/util/IProperties$IMapper;

    invoke-interface {v1, p1}, Lcom/vladium/util/IProperties$IMapper;->getMappedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    if-eqz v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    if-eqz v0, :cond_2

    move-object p2, v0

    :cond_2
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    invoke-virtual {v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverridden(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 4

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->properties()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {p0, v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":\t["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->properties()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-virtual {p0, v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":\t["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public properties()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->unmappedKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method setDelegate(Lcom/vladium/util/IProperties$Factory$PropertiesImpl;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 350
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    if-nez p2, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 295
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toAppArgsForm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/vladium/util/IConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 254
    :goto_0
    return-object v0

    .line 239
    :cond_0
    if-nez p1, :cond_1

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->properties()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 252
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public toProperties()Ljava/util/Properties;
    .locals 4

    .prologue
    .line 215
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->properties()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-virtual {p0, v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    return-object v1
.end method

.method unmappedKeySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 311
    if-nez v0, :cond_1

    .line 313
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_valueMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 315
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_delegate:Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    invoke-virtual {v1}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->unmappedKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 318
    :cond_0
    iput-object v0, p0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->m_unmappedKeySet:Ljava/util/Set;

    .line 322
    :cond_1
    return-object v0
.end method
