.class public final enum Lcom/github/wdkapps/fillup/CheatSheet$Trigger;
.super Ljava/lang/Enum;
.source "CheatSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wdkapps/fillup/CheatSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/wdkapps/fillup/CheatSheet$Trigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

.field private static final $VRc:[[Z

.field public static final enum Click:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

.field public static final enum LongClick:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CheatSheet$Trigger"

    const-wide v2, 0x736e0309cb710a45L    # 1.0492028929951361E248

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 38
    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    const-string v2, "Click"

    invoke-direct {v1, v2, v3}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->Click:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    new-instance v1, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    const-string v2, "LongClick"

    invoke-direct {v1, v2, v4}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->LongClick:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    sget-object v2, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->Click:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->LongClick:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    aput-object v2, v1, v4

    sput-object v1, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VALUES:[Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    aput-boolean v4, v0, v3

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/wdkapps/fillup/CheatSheet$Trigger;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 38
    const-class v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/github/wdkapps/fillup/CheatSheet$Trigger;
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 38
    sget-object v0, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->$VALUES:[Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    invoke-virtual {v0}, [Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    return-object v0
.end method
