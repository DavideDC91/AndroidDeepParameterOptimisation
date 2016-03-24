.class final Lcom/vladium/util/args/OptsParser$Token;
.super Ljava/lang/Object;
.source "OptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Token"
.end annotation


# static fields
.field static final CARD_ID:I = 0x9

.field static final COLON:Lcom/vladium/util/args/OptsParser$Token;

.field static final COLON_ID:I = 0x2

.field static final COMMA:Lcom/vladium/util/args/OptsParser$Token;

.field static final COMMA_ID:I = 0x4

.field static final DETAILEDONLY:Lcom/vladium/util/args/OptsParser$Token;

.field static final DETAILEDONLY_ID:I = 0xf

.field static final EOF:Lcom/vladium/util/args/OptsParser$Token;

.field static final EOF_ID:I = 0x0

.field static final EXCLUDES:Lcom/vladium/util/args/OptsParser$Token;

.field static final EXCLUDES_ID:I = 0xd

.field static final LBRACKET:Lcom/vladium/util/args/OptsParser$Token;

.field static final LBRACKET_ID:I = 0x5

.field static final MERGEABLE:Lcom/vladium/util/args/OptsParser$Token;

.field static final MERGEABLE_ID:I = 0xe

.field static final OPTIONAL:Lcom/vladium/util/args/OptsParser$Token;

.field static final OPTIONAL_ID:I = 0x7

.field static final PATTERN:Lcom/vladium/util/args/OptsParser$Token;

.field static final PATTERN_ID:I = 0x10

.field static final RBRACKET:Lcom/vladium/util/args/OptsParser$Token;

.field static final RBRACKET_ID:I = 0x6

.field static final REQUIRED:Lcom/vladium/util/args/OptsParser$Token;

.field static final REQUIRED_ID:I = 0x8

.field static final REQUIRES:Lcom/vladium/util/args/OptsParser$Token;

.field static final REQUIRES_ID:I = 0xc

.field static final SEMICOLON:Lcom/vladium/util/args/OptsParser$Token;

.field static final SEMICOLON_ID:I = 0x3

.field static final STRING_ID:I = 0x1

.field static final TEXT_ID:I = 0xb

.field static final VALUES:Lcom/vladium/util/args/OptsParser$Token;

.field static final VALUES_ID:I = 0xa


# instance fields
.field private final m_ID:I

.field private final m_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1476
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->EOF:Lcom/vladium/util/args/OptsParser$Token;

    .line 1477
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x2

    const-string v2, ":"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->COLON:Lcom/vladium/util/args/OptsParser$Token;

    .line 1478
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x3

    const-string v2, ";"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->SEMICOLON:Lcom/vladium/util/args/OptsParser$Token;

    .line 1479
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x4

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->COMMA:Lcom/vladium/util/args/OptsParser$Token;

    .line 1480
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x5

    const-string v2, "{"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->LBRACKET:Lcom/vladium/util/args/OptsParser$Token;

    .line 1481
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x6

    const-string v2, "}"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->RBRACKET:Lcom/vladium/util/args/OptsParser$Token;

    .line 1482
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v1, 0x7

    const-string v2, "optional"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->OPTIONAL:Lcom/vladium/util/args/OptsParser$Token;

    .line 1483
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0x8

    const-string v2, "required"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->REQUIRED:Lcom/vladium/util/args/OptsParser$Token;

    .line 1484
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0xa

    const-string v2, "values"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->VALUES:Lcom/vladium/util/args/OptsParser$Token;

    .line 1485
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0xc

    const-string v2, "requires"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->REQUIRES:Lcom/vladium/util/args/OptsParser$Token;

    .line 1486
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0xd

    const-string v2, "excludes"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->EXCLUDES:Lcom/vladium/util/args/OptsParser$Token;

    .line 1487
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0xe

    const-string v2, "mergeable"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->MERGEABLE:Lcom/vladium/util/args/OptsParser$Token;

    .line 1488
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0xf

    const-string v2, "detailedonly"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->DETAILEDONLY:Lcom/vladium/util/args/OptsParser$Token;

    .line 1489
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v1, 0x10

    const-string v2, "pattern"

    invoke-direct {v0, v1, v2}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$Token;->PATTERN:Lcom/vladium/util/args/OptsParser$Token;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_0
    iput p1, p0, Lcom/vladium/util/args/OptsParser$Token;->m_ID:I

    .line 1439
    iput-object p2, p0, Lcom/vladium/util/args/OptsParser$Token;->m_value:Ljava/lang/String;

    .line 1440
    return-void
.end method


# virtual methods
.method getID()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/vladium/util/args/OptsParser$Token;->m_ID:I

    return v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$Token;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vladium/util/args/OptsParser$Token;->m_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$Token;->m_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
