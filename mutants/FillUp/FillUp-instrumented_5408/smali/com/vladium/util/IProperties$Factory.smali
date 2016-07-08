.class public abstract Lcom/vladium/util/IProperties$Factory;
.super Ljava/lang/Object;
.source "IProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/IProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IProperties$Factory$PropertiesImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static combine(Lcom/vladium/util/IProperties;Lcom/vladium/util/IProperties;)Lcom/vladium/util/IProperties;
    .locals 2

    .prologue
    .line 114
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vladium/util/IProperties;->copy()Lcom/vladium/util/IProperties;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 120
    check-cast v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    invoke-virtual {v0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->getLastProperties()Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    move-result-object v0

    check-cast p1, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    invoke-virtual {v0, p1}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;->setDelegate(Lcom/vladium/util/IProperties$Factory$PropertiesImpl;)V

    .line 122
    return-object v1

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vladium/util/IProperties$Factory;->create(Lcom/vladium/util/IProperties$IMapper;)Lcom/vladium/util/IProperties;

    move-result-object v1

    goto :goto_0
.end method

.method public static create(Lcom/vladium/util/IProperties$IMapper;)Lcom/vladium/util/IProperties;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;-><init>(Ljava/util/HashMap;Lcom/vladium/util/IProperties$IMapper;)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Properties;Lcom/vladium/util/IProperties$IMapper;)Lcom/vladium/util/IProperties;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;

    invoke-direct {v0, v1, p1}, Lcom/vladium/util/IProperties$Factory$PropertiesImpl;-><init>(Ljava/util/HashMap;Lcom/vladium/util/IProperties$IMapper;)V

    return-object v0
.end method
