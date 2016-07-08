.class final Lcom/vladium/emma/report/ItemComparator$Factory$NullComparator;
.super Ljava/lang/Object;
.source "ItemComparator.java"

# interfaces
.implements Lcom/vladium/emma/report/ItemComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ItemComparator$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/report/ItemComparator$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vladium/emma/report/ItemComparator$Factory$NullComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
