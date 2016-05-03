.class public interface abstract Lcom/vladium/emma/data/ICoverageData;
.super Ljava/lang/Object;
.source "ICoverageData.java"

# interfaces
.implements Lcom/vladium/emma/data/IMergeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/data/ICoverageData$DataHolder;
    }
.end annotation


# virtual methods
.method public abstract addClass([[ZLjava/lang/String;J)V
.end method

.method public abstract getCoverage(Lcom/vladium/emma/data/ClassDescriptor;)Lcom/vladium/emma/data/ICoverageData$DataHolder;
.end method

.method public abstract lock()Ljava/lang/Object;
.end method

.method public abstract shallowCopy()Lcom/vladium/emma/data/ICoverageData;
.end method

.method public abstract size()I
.end method
