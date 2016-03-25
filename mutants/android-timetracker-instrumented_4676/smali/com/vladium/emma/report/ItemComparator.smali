.class public interface abstract Lcom/vladium/emma/report/ItemComparator;
.super Ljava/lang/Object;
.source "ItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/ItemComparator$1;,
        Lcom/vladium/emma/report/ItemComparator$Factory;
    }
.end annotation


# static fields
.field public static final NULL_COMPARATOR:Lcom/vladium/emma/report/ItemComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/vladium/emma/report/ItemComparator$Factory$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/ItemComparator$Factory$NullComparator;-><init>(Lcom/vladium/emma/report/ItemComparator$1;)V

    sput-object v0, Lcom/vladium/emma/report/ItemComparator;->NULL_COMPARATOR:Lcom/vladium/emma/report/ItemComparator;

    return-void
.end method
