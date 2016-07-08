.class public final Lcom/maxfierke/sandwichroulette/SandwichIngredientData;
.super Ljava/lang/Object;
.source "SandwichIngredientData.java"


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x37420b2d8c369b25L


# instance fields
.field public final BASE_BEEFSTK:I

.field public final BASE_BLT:I

.field public final BASE_BUFCHK:I

.field public final BASE_CHK:I

.field public final BASE_CHKBAC:I

.field public final BASE_CHKSALAD:I

.field public final BASE_CLUB:I

.field public final BASE_HAM:I

.field public final BASE_HAMITSAUSG:I

.field public final BASE_HAMTURK:I

.field public final BASE_HAMTURKMLT:I

.field public final BASE_MEATBALL:I

.field public final BASE_PHILCHZ:I

.field public final BASE_RBEEF:I

.field public final BASE_SPITMEAT:I

.field public final BASE_TRYKICHK:I

.field public final BASE_TUNA:I

.field public final BASE_TURK:I

.field public final BASE_VEG:I

.field public final BRD_FLAT:I

.field public final BRD_GARLIC:I

.field public final BRD_ITAL:I

.field public final BRD_ITHERBCHZ:I

.field public final BRD_MONTCHDR:I

.field public final BRD_OATWHEAT:I

.field public final BRD_SRDOUGH:I

.field public final BRD_WHEAT:I

.field public final CHZ_AMER:I

.field public final CHZ_CHD:I

.field public final CHZ_PARM:I

.field public final CHZ_PEPJCK:I

.field public final CHZ_PROV:I

.field public final CHZ_SHRMONTCHD:I

.field public final CHZ_SWISS:I

.field public final IN_BANPEP:I

.field public final IN_CUCUMBER:I

.field public final IN_GRNPEP:I

.field public final IN_JALAPENO:I

.field public final IN_LETTUCE:I

.field public final IN_OLIVE:I

.field public final IN_ONIONS:I

.field public final IN_PICKLES:I

.field public final IN_SPINACH:I

.field public final IN_TOMATO:I

.field public final SC_CHIPOTLE:I

.field public final SC_CSRDRSNG:I

.field public final SC_HNYMUST:I

.field public final SC_HUMMUS:I

.field public final SC_ITALDRSNG:I

.field public final SC_MAYO:I

.field public final SC_MUST:I

.field public final SC_OIL:I

.field public final SC_RANCH:I

.field public final SC_SWTONION:I

.field public final SC_VINAI:I

.field public final SC_VINEGAR:I

.field private baseArray:[Ljava/lang/String;

.field private breadArray:[Ljava/lang/String;

.field private cheeseArray:[Ljava/lang/String;

.field private ingredients:[Landroid/widget/CheckBox;

.field resources:Landroid/content/res/Resources;

.field private sauces:[Landroid/widget/CheckBox;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

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

    const/4 v1, 0x4

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "com/maxfierke/sandwichroulette/SandwichIngredientData"

    const-wide v2, -0x3edd58d8df75377cL    # -611219.5635588323

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v1, v0, v4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v4, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_HAM:I

    .line 97
    iput v5, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_BLT:I

    .line 98
    iput v6, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_BUFCHK:I

    .line 99
    iput v7, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_CHKBAC:I

    .line 100
    iput v8, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_HAMTURK:I

    .line 101
    const/4 v0, 0x5

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_HAMITSAUSG:I

    .line 102
    const/4 v0, 0x6

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_MEATBALL:I

    .line 103
    const/4 v0, 0x7

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_CHKSALAD:I

    .line 104
    const/16 v0, 0x8

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_CHK:I

    .line 105
    const/16 v0, 0x9

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_RBEEF:I

    .line 106
    const/16 v0, 0xa

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_SPITMEAT:I

    .line 107
    const/16 v0, 0xb

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_BEEFSTK:I

    .line 108
    const/16 v0, 0xc

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_CLUB:I

    .line 109
    const/16 v0, 0xd

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_HAMTURKMLT:I

    .line 110
    const/16 v0, 0xe

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_PHILCHZ:I

    .line 111
    const/16 v0, 0xf

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_TRYKICHK:I

    .line 112
    const/16 v0, 0x10

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_TUNA:I

    .line 113
    const/16 v0, 0x11

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_TURK:I

    .line 114
    const/16 v0, 0x13

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BASE_VEG:I

    .line 117
    iput v4, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_WHEAT:I

    .line 118
    iput v5, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_FLAT:I

    .line 119
    iput v6, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_ITAL:I

    .line 120
    iput v7, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_OATWHEAT:I

    .line 121
    iput v8, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_ITHERBCHZ:I

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_MONTCHDR:I

    .line 123
    const/4 v0, 0x6

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_GARLIC:I

    .line 124
    const/4 v0, 0x7

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->BRD_SRDOUGH:I

    .line 127
    iput v4, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_CHD:I

    .line 128
    iput v5, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_AMER:I

    .line 129
    iput v6, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_SHRMONTCHD:I

    .line 130
    iput v7, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_PARM:I

    .line 131
    iput v8, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_PEPJCK:I

    .line 132
    const/4 v0, 0x5

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_PROV:I

    .line 133
    const/4 v0, 0x6

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->CHZ_SWISS:I

    .line 136
    iput v4, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_PICKLES:I

    .line 137
    iput v5, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_ONIONS:I

    .line 138
    iput v6, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_LETTUCE:I

    .line 139
    iput v7, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_TOMATO:I

    .line 140
    iput v8, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_GRNPEP:I

    .line 141
    const/4 v0, 0x5

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_SPINACH:I

    .line 142
    const/4 v0, 0x6

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_CUCUMBER:I

    .line 143
    const/4 v0, 0x7

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_BANPEP:I

    .line 144
    const/16 v0, 0x8

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_OLIVE:I

    .line 145
    const/16 v0, 0x9

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->IN_JALAPENO:I

    .line 148
    iput v4, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_CHIPOTLE:I

    .line 149
    iput v5, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_HNYMUST:I

    .line 150
    iput v6, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_SWTONION:I

    .line 151
    iput v7, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_MAYO:I

    .line 152
    iput v8, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_MUST:I

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_OIL:I

    .line 154
    const/4 v0, 0x6

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_VINAI:I

    .line 155
    const/4 v0, 0x7

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_VINEGAR:I

    .line 156
    const/16 v0, 0x8

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_ITALDRSNG:I

    .line 157
    const/16 v0, 0x9

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_RANCH:I

    .line 158
    const/16 v0, 0xa

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_CSRDRSNG:I

    .line 159
    const/16 v0, 0xb

    iput v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->SC_HUMMUS:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->resources:Landroid/content/res/Resources;

    .line 22
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->resources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->baseArray:[Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->resources:Landroid/content/res/Resources;

    const v2, 0x7f050001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->breadArray:[Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->resources:Landroid/content/res/Resources;

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->cheeseArray:[Ljava/lang/String;

    .line 31
    const/16 v0, 0xa

    new-array v2, v0, [Landroid/widget/CheckBox;

    const v0, 0x7f090018

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v4

    const v0, 0x7f090019

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v5

    const v0, 0x7f09001b

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v6

    const v0, 0x7f09001c

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v7

    const v0, 0x7f09001e

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v8

    const/4 v3, 0x5

    const v0, 0x7f09001f

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/4 v3, 0x6

    const v0, 0x7f090021

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/4 v3, 0x7

    const v0, 0x7f090022

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0x8

    const v0, 0x7f090024

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0x9

    const v0, 0x7f090025

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->ingredients:[Landroid/widget/CheckBox;

    .line 44
    const/16 v0, 0xc

    new-array v2, v0, [Landroid/widget/CheckBox;

    const v0, 0x7f09002a

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v4

    const v0, 0x7f09002b

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v5

    const v0, 0x7f09002d

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v6

    const v0, 0x7f09002e

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v7

    const v0, 0x7f090030

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v8

    const/4 v3, 0x5

    const v0, 0x7f090031

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/4 v3, 0x6

    const v0, 0x7f090033

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/4 v3, 0x7

    const v0, 0x7f090034

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0x8

    const v0, 0x7f090036

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0x9

    const v0, 0x7f090037

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0xa

    const v0, 0x7f090039

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    const/16 v3, 0xb

    const v0, 0x7f09003a

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->sauces:[Landroid/widget/CheckBox;

    .line 58
    aput-boolean v5, v1, v4

    return-void
.end method


# virtual methods
.method public getBaseArray()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 61
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->baseArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getBreadArray()[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 65
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->breadArray:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCheeseArray()[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 69
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->cheeseArray:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getIng(I)Landroid/widget/CheckBox;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 81
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->ingredients:[Landroid/widget/CheckBox;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getIngredients()[Landroid/widget/CheckBox;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 73
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->ingredients:[Landroid/widget/CheckBox;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSauce(I)Landroid/widget/CheckBox;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 85
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->sauces:[Landroid/widget/CheckBox;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSauces()[Landroid/widget/CheckBox;
    .locals 4

    .prologue
    sget-object v0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->$VRi()[[Z

    move-result-object v0

    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 77
    iget-object v1, p0, Lcom/maxfierke/sandwichroulette/SandwichIngredientData;->sauces:[Landroid/widget/CheckBox;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
