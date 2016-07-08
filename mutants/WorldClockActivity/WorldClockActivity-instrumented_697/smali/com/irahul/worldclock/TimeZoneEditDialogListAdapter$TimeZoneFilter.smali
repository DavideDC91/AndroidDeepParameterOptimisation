.class Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;
.super Landroid/widget/Filter;
.source "TimeZoneEditDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneFilter"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x25aab113569a2e93L


# instance fields
.field final synthetic this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "com/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter"

    const-wide v2, -0x580128e53d1a3eb4L    # -4.89192287912817E-116

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 98
    iput-object p1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$1;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 98
    invoke-direct {p0, p1}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;-><init>(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .prologue
    const/4 v8, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v8

    .line 105
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 107
    const/4 v0, 0x0

    aput-boolean v8, v1, v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    aput-boolean v8, v1, v8

    if-nez v0, :cond_2

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-static {v3}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->access$100(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    const/4 v0, 0x2

    aput-boolean v8, v1, v0

    .line 127
    :goto_0
    const/16 v0, 0x9

    aput-boolean v8, v1, v0

    return-object v2

    .line 113
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-static {v4}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->access$100(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x3

    aput-boolean v8, v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x4

    aput-boolean v8, v1, v6

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/irahul/worldclock/WorldClockTimeZone;

    .line 118
    invoke-virtual {v0}, Lcom/irahul/worldclock/WorldClockTimeZone;->getSearchString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x5

    aput-boolean v8, v1, v7

    if-eqz v6, :cond_3

    .line 119
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    aput-boolean v8, v1, v0

    .line 121
    :cond_3
    const/4 v0, 0x7

    aput-boolean v8, v1, v0

    goto :goto_1

    .line 123
    :cond_4
    iput-object v4, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 124
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    const/16 v0, 0x8

    aput-boolean v8, v1, v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v2, v0, v5

    .line 136
    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->access$202(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-virtual {v0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->clear()V

    .line 139
    aput-boolean v4, v2, v1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-static {v1}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->access$200(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v4, v2, v4

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    iget-object v3, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-static {v3}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->access$200(Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->add(Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    aput-boolean v4, v2, v5

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter$TimeZoneFilter;->this$0:Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;

    invoke-virtual {v0}, Lcom/irahul/worldclock/TimeZoneEditDialogListAdapter;->notifyDataSetChanged()V

    .line 144
    const/4 v0, 0x3

    aput-boolean v4, v2, v0

    return-void
.end method
