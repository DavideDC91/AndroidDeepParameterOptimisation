.class final Lcom/vladium/util/args/OptsParser$OptDef;
.super Ljava/lang/Object;
.source "OptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptDef"
.end annotation


# static fields
.field static final C_ONE:[I

.field static final C_ONE_OR_MORE:[I

.field static final C_ZERO:[I

.field static final C_ZERO_OR_MORE:[I

.field static final C_ZERO_OR_ONE:[I


# instance fields
.field private m_description:Ljava/lang/String;

.field private m_detailedOnly:Z

.field private m_excludesSet:[Ljava/lang/String;

.field private m_mergeable:Z

.field private m_names:[Ljava/lang/String;

.field private m_pattern:Z

.field private m_required:Z

.field private m_requiresSet:[Ljava/lang/String;

.field private final m_usage:Z

.field private m_valueCardinality:[I

.field private m_valueMnemonic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 898
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO:[I

    .line 899
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ONE:[I

    .line 900
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO_OR_ONE:[I

    .line 901
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO_OR_MORE:[I

    .line 902
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ONE_OR_MORE:[I

    return-void

    .line 898
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 899
    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    .line 900
    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 901
    :array_3
    .array-data 4
        0x0
        0x7fffffff
    .end array-data

    .line 902
    :array_4
    .array-data 4
        0x1
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-boolean p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_usage:Z

    .line 773
    return-void
.end method


# virtual methods
.method getCanonicalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_names:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method getExcludesSet()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_excludesSet:[Ljava/lang/String;

    return-object v0
.end method

.method getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_names:[Ljava/lang/String;

    return-object v0
.end method

.method getRequiresSet()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_requiresSet:[Ljava/lang/String;

    return-object v0
.end method

.method getValueCardinality()[I
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_valueCardinality:[I

    return-object v0
.end method

.method getValueMnemonic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_valueMnemonic:Ljava/lang/String;

    return-object v0
.end method

.method isDetailedOnly()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_detailedOnly:Z

    return v0
.end method

.method isMergeable()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_mergeable:Z

    return v0
.end method

.method isPattern()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_pattern:Z

    return v0
.end method

.method isRequired()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_required:Z

    return v0
.end method

.method isUsage()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_usage:Z

    return v0
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 892
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: description"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_description:Ljava/lang/String;

    .line 895
    return-void
.end method

.method setDetailedOnly(Z)V
    .locals 0

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_detailedOnly:Z

    .line 862
    return-void
.end method

.method setExcludesSet([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 885
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_excludesSet:[Ljava/lang/String;

    .line 888
    return-void

    .line 887
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method setMergeable(Z)V
    .locals 0

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_mergeable:Z

    .line 857
    return-void
.end method

.method setNames([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 837
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_names:[Ljava/lang/String;

    .line 840
    return-void
.end method

.method setPattern(Z)V
    .locals 0

    .prologue
    .line 866
    iput-boolean p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_pattern:Z

    .line 867
    return-void
.end method

.method setRequired(Z)V
    .locals 0

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_required:Z

    .line 845
    return-void
.end method

.method setRequiresSet([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 878
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_requiresSet:[Ljava/lang/String;

    .line 881
    return-void

    .line 880
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method setValueCardinality([I)V
    .locals 2

    .prologue
    .line 871
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or invalid input: cardinality"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_valueCardinality:[I

    .line 874
    return-void
.end method

.method setValueMnemonic(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 849
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: mnemonic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$OptDef;->m_valueMnemonic:Ljava/lang/String;

    .line 852
    return-void
.end method
