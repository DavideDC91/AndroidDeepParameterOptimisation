.class public Lorg/paulmach/textedit/SearchSuggestions;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchSuggestions.java"


# static fields
.field private static final $VRc:[[Z = null

.field public static final AUTHORITY:Ljava/lang/String; = "org.paulmach.authority"

.field public static final MODE:I = 0x1

.field private static final serialVersionUID:J = 0xe2189f97f86b266L


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/SearchSuggestions;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v3

    const-string v1, "org/paulmach/textedit/SearchSuggestions"

    const-wide v2, 0x86a6aab2f5bL

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lorg/paulmach/textedit/SearchSuggestions;->$VRi()[[Z

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/SearchSuggestions;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/SearchSuggestions;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 11
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 12
    const-string v1, "org.paulmach.authority"

    invoke-virtual {p0, v1, v3}, Lorg/paulmach/textedit/SearchSuggestions;->setupSuggestions(Ljava/lang/String;I)V

    .line 13
    aput-boolean v3, v0, v2

    return-void
.end method
