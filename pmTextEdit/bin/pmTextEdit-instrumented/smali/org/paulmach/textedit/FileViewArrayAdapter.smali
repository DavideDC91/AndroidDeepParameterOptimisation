.class public Lorg/paulmach/textedit/FileViewArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileViewArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field public static final FILE_BROWSER_MODE:I = 0x2

.field public static final RECENT_FILE_MODE:I = 0x1

.field private static final serialVersionUID:J = -0x2eaff7fdb3f43fc3L


# instance fields
.field private final factory:Landroid/view/LayoutInflater;

.field protected mode:I

.field private final sf:Landroid/text/Spannable$Factory;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x8

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

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

    const/16 v1, 0x23

    new-array v1, v1, [Z

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xb

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/FileViewArrayAdapter"

    const-wide v2, 0x708f169096bf4a12L    # 1.5444769801361588E234

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 49
    invoke-direct {p0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    new-instance v1, Landroid/text/Spannable$Factory;

    invoke-direct {v1}, Landroid/text/Spannable$Factory;-><init>()V

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    .line 27
    invoke-virtual {p0}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->factory:Landroid/view/LayoutInflater;

    .line 29
    iput v2, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 50
    iput v3, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 51
    aput-boolean v3, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance v1, Landroid/text/Spannable$Factory;

    invoke-direct {v1}, Landroid/text/Spannable$Factory;-><init>()V

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    .line 27
    invoke-virtual {p0}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->factory:Landroid/view/LayoutInflater;

    .line 29
    iput v2, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 34
    iput v3, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 35
    aput-boolean v3, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 41
    invoke-direct {p0, p1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance v1, Landroid/text/Spannable$Factory;

    invoke-direct {v1}, Landroid/text/Spannable$Factory;-><init>()V

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    .line 27
    invoke-virtual {p0}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->factory:Landroid/view/LayoutInflater;

    .line 29
    iput v2, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 42
    iput v3, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 43
    aput-boolean v3, v0, v2

    return-void
.end method

.method public static formatFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v7

    .line 151
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v4, 0x0

    aput-boolean v6, v1, v4

    if-eqz v0, :cond_1

    .line 154
    const-string v0, ""

    aput-boolean v6, v1, v6

    .line 165
    :goto_0
    return-object v0

    .line 156
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x2

    aput-boolean v6, v1, v4

    if-gez v0, :cond_2

    .line 157
    const-string v0, "\n0"

    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 158
    :cond_2
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    const/4 v4, 0x4

    aput-boolean v6, v1, v4

    if-nez v0, :cond_3

    .line 159
    const-string v0, "\n1 Byte"

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 160
    :cond_3
    const-wide/16 v4, 0x800

    cmp-long v0, v2, v4

    aput-boolean v6, v1, v7

    if-gez v0, :cond_4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 162
    :cond_4
    const-wide/32 v4, 0x200000

    cmp-long v0, v2, v4

    const/16 v4, 0x8

    aput-boolean v6, v1, v4

    if-gez v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v2, v2

    mul-double/2addr v2, v8

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " MB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    goto/16 :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 141
    const-string v0, ""

    .line 142
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 143
    const/4 v3, 0x0

    aput-boolean v4, v1, v3

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-boolean v4, v1, v4

    if-ge v2, v3, :cond_1

    .line 144
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 146
    :cond_1
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x14

    const/16 v8, 0x11

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v3, v0, v1

    .line 65
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    aput-boolean v6, v3, v7

    if-eqz v0, :cond_1

    .line 69
    const v0, 0x7f020006

    aput-boolean v6, v3, v6

    move v2, v0

    .line 103
    :goto_0
    const/16 v0, 0x19

    aput-boolean v6, v3, v0

    if-eqz p2, :cond_d

    .line 104
    const/16 v0, 0x1a

    aput-boolean v6, v3, v0

    .line 108
    :goto_1
    const v0, 0x7f06000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v1, 0x7f06000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    const/16 v2, 0x1c

    aput-boolean v6, v3, v2

    if-ne v1, v10, :cond_e

    .line 116
    iget-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lorg/paulmach/textedit/FileViewArrayAdapter;->formatFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1d

    aput-boolean v6, v3, v0

    .line 132
    :goto_2
    const/16 v0, 0x22

    aput-boolean v6, v3, v0

    return-object p2

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/paulmach/textedit/FileViewArrayAdapter;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v6, v3, v10

    if-eqz v1, :cond_2

    .line 75
    const v0, 0x7f020002

    const/4 v1, 0x3

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 76
    :cond_2
    const-string v1, "cpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_3

    .line 77
    const v0, 0x7f020003

    const/4 v1, 0x5

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 78
    :cond_3
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_4

    .line 79
    const v0, 0x7f020005

    const/4 v1, 0x7

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 80
    :cond_4
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_5

    .line 81
    const v0, 0x7f020007

    const/16 v1, 0x9

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 82
    :cond_5
    const-string v1, "htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_6

    .line 83
    const v0, 0x7f020008

    const/16 v1, 0xb

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 84
    :cond_6
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xc

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_7

    .line 85
    const v0, 0x7f020009

    const/16 v1, 0x10

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 86
    :cond_7
    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xe

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_8

    .line 87
    const v0, 0x7f02000a

    const/16 v1, 0xf

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 88
    :cond_8
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_9

    .line 89
    const v0, 0x7f02000c

    aput-boolean v6, v3, v8

    move v2, v0

    goto/16 :goto_0

    .line 90
    :cond_9
    const-string v1, "py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x12

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_a

    .line 91
    const v0, 0x7f02000d

    const/16 v1, 0x13

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 92
    :cond_a
    const-string v1, "tex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v6, v3, v9

    if-eqz v1, :cond_b

    .line 93
    const v0, 0x7f02000e

    const/16 v1, 0x15

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 94
    :cond_b
    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x16

    aput-boolean v6, v3, v1

    if-eqz v0, :cond_c

    .line 95
    const v0, 0x7f02000f

    const/16 v1, 0x17

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 97
    :cond_c
    const v0, 0x7f020004

    const/16 v1, 0x18

    aput-boolean v6, v3, v1

    move v2, v0

    goto/16 :goto_0

    .line 106
    :cond_d
    iget-object v0, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->factory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x1b

    aput-boolean v6, v3, v0

    goto/16 :goto_1

    .line 122
    :cond_e
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1e

    aput-boolean v6, v3, v2

    if-eqz v1, :cond_f

    .line 123
    iget-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    const/16 v2, 0x1f

    aput-boolean v6, v3, v2

    .line 127
    :goto_3
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    aput-boolean v6, v3, v0

    goto/16 :goto_2

    .line 125
    :cond_f
    iget-object v1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->sf:Landroid/text/Spannable$Factory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v6, v3, v2

    goto :goto_3
.end method

.method public setMode(I)V
    .locals 3

    .prologue
    sget-object v0, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/FileViewArrayAdapter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 55
    iput p1, p0, Lorg/paulmach/textedit/FileViewArrayAdapter;->mode:I

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
