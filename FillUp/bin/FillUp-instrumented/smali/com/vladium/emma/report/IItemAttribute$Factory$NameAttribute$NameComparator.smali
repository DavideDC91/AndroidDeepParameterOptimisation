.class final Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute$NameComparator;
.super Ljava/lang/Object;
.source "IItemAttribute.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/report/IItemAttribute$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute$NameComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 109
    check-cast p1, Lcom/vladium/emma/report/IItem;

    .line 110
    check-cast p2, Lcom/vladium/emma/report/IItem;

    .line 112
    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
