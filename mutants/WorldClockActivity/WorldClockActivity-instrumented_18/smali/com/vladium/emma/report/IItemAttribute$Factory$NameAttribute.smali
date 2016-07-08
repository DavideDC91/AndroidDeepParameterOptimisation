.class final Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;
.super Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;
.source "IItemAttribute.java"

# interfaces
.implements Lcom/vladium/emma/report/IItemAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAttribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute$NameComparator;
    }
.end annotation


# instance fields
.field private final m_comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute$NameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute$NameComparator;-><init>(Lcom/vladium/emma/report/IItemAttribute$1;)V

    iput-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;->m_comparator:Ljava/util/Comparator;

    .line 122
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$NameAttribute;->m_comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    return-void
.end method

.method public passes(Lcom/vladium/emma/report/IItem;I)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
