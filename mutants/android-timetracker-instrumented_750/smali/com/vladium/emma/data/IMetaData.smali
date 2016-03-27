.class public interface abstract Lcom/vladium/emma/data/IMetaData;
.super Ljava/lang/Object;
.source "IMetaData.java"

# interfaces
.implements Lcom/vladium/emma/data/IMergeable;


# virtual methods
.method public abstract add(Lcom/vladium/emma/data/ClassDescriptor;Z)Z
.end method

.method public abstract getOptions()Lcom/vladium/emma/data/CoverageOptions;
.end method

.method public abstract hasDescriptor(Ljava/lang/String;)Z
.end method

.method public abstract hasLineNumberData()Z
.end method

.method public abstract hasSrcFileData()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract lock()Ljava/lang/Object;
.end method

.method public abstract shallowCopy()Lcom/vladium/emma/data/IMetaData;
.end method

.method public abstract size()I
.end method
