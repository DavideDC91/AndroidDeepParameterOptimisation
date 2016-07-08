.class public interface abstract Lcom/vladium/emma/report/IItemMetadata;
.super Ljava/lang/Object;
.source "IItemMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/IItemMetadata$Factory;
    }
.end annotation


# static fields
.field public static final TYPE_ID_ALL:I = 0x0

.field public static final TYPE_ID_CLASS:I = 0x3

.field public static final TYPE_ID_METHOD:I = 0x4

.field public static final TYPE_ID_PACKAGE:I = 0x1

.field public static final TYPE_ID_SRCFILE:I = 0x2


# virtual methods
.method public abstract getAttributeIDs()J
.end method

.method public abstract getTypeID()I
.end method

.method public abstract getTypeName()Ljava/lang/String;
.end method
