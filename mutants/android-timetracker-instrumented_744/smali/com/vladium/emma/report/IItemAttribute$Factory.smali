.class public abstract Lcom/vladium/emma/report/IItemAttribute$Factory;
.super Ljava/lang/Object;
.source "IItemAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;,
        Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;,
        Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;
    }
.end annotation


# static fields
.field private static final ATTRIBUTES:[[Lcom/vladium/emma/report/IItemAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 237
    new-instance v8, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;

    const-string v0, "name"

    invoke-direct {v8, v0}, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v1, "class, %"

    const/4 v2, 0x5

    const/16 v3, 0xb

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    .line 240
    new-instance v1, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v2, "method, %"

    const/4 v3, 0x4

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    .line 242
    const/4 v2, 0x2

    new-array v9, v2, [[Lcom/vladium/emma/report/IItemAttribute;

    const/4 v10, 0x0

    const/4 v2, 0x5

    new-array v11, v2, [Lcom/vladium/emma/report/IItemAttribute;

    const/4 v2, 0x0

    aput-object v8, v11, v2

    const/4 v2, 0x1

    aput-object v0, v11, v2

    const/4 v2, 0x2

    aput-object v1, v11, v2

    const/4 v12, 0x3

    new-instance v2, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v3, "block, %"

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    aput-object v2, v11, v12

    const/4 v12, 0x4

    new-instance v2, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v3, "line, %"

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    aput-object v2, v11, v12

    aput-object v11, v9, v10

    const/4 v6, 0x1

    const/4 v2, 0x5

    new-array v7, v2, [Lcom/vladium/emma/report/IItemAttribute;

    const/4 v2, 0x0

    aput-object v8, v7, v2

    const/4 v2, 0x1

    aput-object v0, v7, v2

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v8, 0x3

    new-instance v0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v1, "block, %"

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;

    const-string v1, "line, %"

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;-><init>(Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    aput-object v7, v9, v6

    sput-object v9, Lcom/vladium/emma/report/IItemAttribute$Factory;->ATTRIBUTES:[[Lcom/vladium/emma/report/IItemAttribute;

    .line 261
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/vladium/emma/report/IItemAttribute$Factory;->ATTRIBUTES:[[Lcom/vladium/emma/report/IItemAttribute;

    aget-object v0, v0, p1

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getAttributes(I)[Lcom/vladium/emma/report/IItemAttribute;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/vladium/emma/report/IItemAttribute$Factory;->ATTRIBUTES:[[Lcom/vladium/emma/report/IItemAttribute;

    aget-object v0, v0, p0

    invoke-virtual {v0}, [Lcom/vladium/emma/report/IItemAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vladium/emma/report/IItemAttribute;

    check-cast v0, [Lcom/vladium/emma/report/IItemAttribute;

    return-object v0
.end method
