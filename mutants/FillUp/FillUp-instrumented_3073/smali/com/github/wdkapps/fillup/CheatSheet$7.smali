.class synthetic Lcom/github/wdkapps/fillup/CheatSheet$7;
.super Ljava/lang/Object;
.source "CheatSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wdkapps/fillup/CheatSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

.field private static final $VRc:[[Z


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/github/wdkapps/fillup/CheatSheet$7;->$VRc:[[Z

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const-string v1, "com/github/wdkapps/fillup/CheatSheet$7"

    const-wide v2, -0x539f4b041d0f97f2L    # -6.25732954431546E-95

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$7;->$VRi()[[Z

    move-result-object v0

    aget-object v0, v0, v1

    .line 56
    invoke-static {}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->values()[Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    :try_start_0
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    sget-object v2, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->Click:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/github/wdkapps/fillup/CheatSheet$7;->$SwitchMap$com$github$wdkapps$fillup$CheatSheet$Trigger:[I

    sget-object v2, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->LongClick:Lcom/github/wdkapps/fillup/CheatSheet$Trigger;

    invoke-virtual {v2}, Lcom/github/wdkapps/fillup/CheatSheet$Trigger;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    aput-boolean v4, v0, v4

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_1
.end method
