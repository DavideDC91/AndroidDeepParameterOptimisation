.class public interface abstract Lcom/vladium/util/IProperties;
.super Ljava/lang/Object;
.source "IProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/util/IProperties$Factory;,
        Lcom/vladium/util/IProperties$IMapper;
    }
.end annotation


# virtual methods
.method public abstract copy()Lcom/vladium/util/IProperties;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isOverridden(Ljava/lang/String;)Z
.end method

.method public abstract list(Ljava/io/PrintStream;)V
.end method

.method public abstract list(Ljava/io/PrintWriter;)V
.end method

.method public abstract properties()Ljava/util/Iterator;
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toAppArgsForm(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract toProperties()Ljava/util/Properties;
.end method
