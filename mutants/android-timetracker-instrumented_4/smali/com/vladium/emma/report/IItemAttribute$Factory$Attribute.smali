.class abstract Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;
.super Ljava/lang/Object;
.source "IItemAttribute.java"

# interfaces
.implements Lcom/vladium/emma/report/IItemAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Attribute"
.end annotation


# instance fields
.field private final m_name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;->m_name:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;->m_name:Ljava/lang/String;

    return-object v0
.end method
