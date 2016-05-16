.class final enum Lcom/markuspage/android/atimetracker/Report$Day;
.super Ljava/lang/Enum;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markuspage/android/atimetracker/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Day"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/markuspage/android/atimetracker/Report$Day;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/markuspage/android/atimetracker/Report$Day;

.field private static final $VRc:[[Z

.field public static final enum FRIDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum MONDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum SATURDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum SUNDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum THURSDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum TUESDAY:Lcom/markuspage/android/atimetracker/Report$Day;

.field public static final enum WEDNESDAY:Lcom/markuspage/android/atimetracker/Report$Day;


# instance fields
.field public calEnum:I

.field public header:Ljava/lang/String;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/markuspage/android/atimetracker/Report$Day"

    const-wide v2, -0x13dfe6e7aaab80efL    # -6.774225011529528E212

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    aget-object v0, v0, v7

    .line 71
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "MONDAY"

    const-string v3, "Mon"

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->MONDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 72
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "TUESDAY"

    const-string v3, "Tue"

    invoke-direct {v1, v2, v6, v10, v3}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->TUESDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 73
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "WEDNESDAY"

    const/4 v3, 0x4

    const-string v4, "Wed"

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->WEDNESDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 74
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "THURSDAY"

    const/4 v3, 0x5

    const-string v4, "Thu"

    invoke-direct {v1, v2, v10, v3, v4}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->THURSDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 75
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "FRIDAY"

    const/4 v3, 0x4

    const-string v4, "Fri"

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->FRIDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 76
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "SATURDAY"

    const/4 v3, 0x5

    const/4 v4, 0x7

    const-string v5, "Sat"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->SATURDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 77
    new-instance v1, Lcom/markuspage/android/atimetracker/Report$Day;

    const-string v2, "SUNDAY"

    const-string v3, "Sun"

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/markuspage/android/atimetracker/Report$Day;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->SUNDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    .line 69
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/markuspage/android/atimetracker/Report$Day;

    sget-object v2, Lcom/markuspage/android/atimetracker/Report$Day;->MONDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v2, v1, v8

    sget-object v2, Lcom/markuspage/android/atimetracker/Report$Day;->TUESDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v2, v1, v6

    sget-object v2, Lcom/markuspage/android/atimetracker/Report$Day;->WEDNESDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v2, v1, v9

    sget-object v2, Lcom/markuspage/android/atimetracker/Report$Day;->THURSDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v2, v1, v10

    const/4 v2, 0x4

    sget-object v3, Lcom/markuspage/android/atimetracker/Report$Day;->FRIDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/markuspage/android/atimetracker/Report$Day;->SATURDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v3, v1, v2

    sget-object v2, Lcom/markuspage/android/atimetracker/Report$Day;->SUNDAY:Lcom/markuspage/android/atimetracker/Report$Day;

    aput-object v2, v1, v7

    sput-object v1, Lcom/markuspage/android/atimetracker/Report$Day;->$VALUES:[Lcom/markuspage/android/atimetracker/Report$Day;

    aput-boolean v6, v0, v8

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/markuspage/android/atimetracker/Report$Day;->calEnum:I

    .line 83
    iput-object p4, p0, Lcom/markuspage/android/atimetracker/Report$Day;->header:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static fromCalEnum(I)Lcom/markuspage/android/atimetracker/Report$Day;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v8

    .line 87
    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->values()[Lcom/markuspage/android/atimetracker/Report$Day;

    move-result-object v3

    array-length v4, v3

    aput-boolean v7, v2, v1

    move v0, v1

    :goto_0
    aput-boolean v7, v2, v7

    if-ge v0, v4, :cond_2

    aget-object v1, v3, v0

    .line 88
    iget v5, v1, Lcom/markuspage/android/atimetracker/Report$Day;->calEnum:I

    const/4 v6, 0x2

    aput-boolean v7, v2, v6

    if-ne v5, p0, :cond_1

    .line 89
    aput-boolean v7, v2, v8

    move-object v0, v1

    .line 92
    :goto_1
    return-object v0

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput-boolean v7, v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/markuspage/android/atimetracker/Report$Day;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 69
    const-class v0, Lcom/markuspage/android/atimetracker/Report$Day;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/markuspage/android/atimetracker/Report$Day;

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/markuspage/android/atimetracker/Report$Day;
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v3

    .line 69
    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VALUES:[Lcom/markuspage/android/atimetracker/Report$Day;

    invoke-virtual {v0}, [Lcom/markuspage/android/atimetracker/Report$Day;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markuspage/android/atimetracker/Report$Day;

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    return-object v0
.end method


# virtual methods
.method public calEnum()I
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 101
    iget v1, p0, Lcom/markuspage/android/atimetracker/Report$Day;->calEnum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/markuspage/android/atimetracker/Report$Day;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/markuspage/android/atimetracker/Report$Day;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 97
    iget-object v1, p0, Lcom/markuspage/android/atimetracker/Report$Day;->header:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
