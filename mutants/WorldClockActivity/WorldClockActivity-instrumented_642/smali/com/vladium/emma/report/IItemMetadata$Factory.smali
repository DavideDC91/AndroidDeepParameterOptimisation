.class public abstract Lcom/vladium/emma/report/IItemMetadata$Factory;
.super Ljava/lang/Object;
.source "IItemMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# static fields
.field private static final METADATA:[Lcom/vladium/emma/report/IItemMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vladium/emma/report/IItemMetadata;

    const/4 v1, 0x0

    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/emma/report/IItemMetadata$Factory;->METADATA:[Lcom/vladium/emma/report/IItemMetadata;

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllTypes()[Lcom/vladium/emma/report/IItemMetadata;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vladium/emma/report/IItemMetadata$Factory;->METADATA:[Lcom/vladium/emma/report/IItemMetadata;

    return-object v0
.end method

.method public static getTypeMetadata(I)Lcom/vladium/emma/report/IItemMetadata;
    .locals 3

    .prologue
    .line 42
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    sget-object v0, Lcom/vladium/emma/report/IItemMetadata$Factory;->METADATA:[Lcom/vladium/emma/report/IItemMetadata;

    aget-object v0, v0, p0

    return-object v0
.end method
