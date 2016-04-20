.class public interface abstract Lcom/vladium/emma/filter/IInclExclFilter;
.super Ljava/lang/Object;
.source "IInclExclFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/filter/IInclExclFilter$Factory;
    }
.end annotation


# static fields
.field public static final EXCLUSION_PREFIX:C = '-'

.field public static final EXCLUSION_PREFIX_STRING:Ljava/lang/String; = "-"

.field public static final INCLUSION_PREFIX:C = '+'

.field public static final INCLUSION_PREFIX_STRING:Ljava/lang/String; = "+"


# virtual methods
.method public abstract included(Ljava/lang/String;)Z
.end method
