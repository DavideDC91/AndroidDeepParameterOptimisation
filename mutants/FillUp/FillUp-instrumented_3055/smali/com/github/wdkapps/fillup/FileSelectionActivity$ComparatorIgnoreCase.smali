.class Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;
.super Ljava/lang/Object;
.source "FileSelectionActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wdkapps/fillup/FileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComparatorIgnoreCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x7bacca5c0d431e6fL


# instance fields
.field final synthetic this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase"

    const-wide v2, 0x6f2704c726a9501fL    # 2.7265084850615572E227

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 231
    iput-object p1, p0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->this$0:Lcom/github/wdkapps/fillup/FileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;Lcom/github/wdkapps/fillup/FileSelectionActivity$1;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 231
    invoke-direct {p0, p1}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;-><init>(Lcom/github/wdkapps/fillup/FileSelectionActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 231
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/FileSelectionActivity$ComparatorIgnoreCase;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method
