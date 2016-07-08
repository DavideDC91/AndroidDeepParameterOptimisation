.class final Lcom/vladium/util/args/OptsParser$MetadataParser;
.super Ljava/lang/Object;
.source "OptsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/util/args/OptsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MetadataParser"
.end annotation


# static fields
.field private static final EMPTY_OPTDEF_ARRAY:[Lcom/vladium/util/args/OptsParser$OptDef;

.field private static final KEYWORDS:Ljava/util/Map;


# instance fields
.field private m_currentChar:I

.field private m_in:Ljava/io/Reader;

.field private m_opts:Ljava/util/List;

.field private m_token:Lcom/vladium/util/args/OptsParser$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1381
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vladium/util/args/OptsParser$OptDef;

    sput-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->EMPTY_OPTDEF_ARRAY:[Lcom/vladium/util/args/OptsParser$OptDef;

    .line 1385
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    .line 1387
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->OPTIONAL:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->OPTIONAL:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->REQUIRED:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->REQUIRED:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->VALUES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->VALUES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->REQUIRES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->REQUIRES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->EXCLUDES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->EXCLUDES:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->MERGEABLE:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->MERGEABLE:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->DETAILEDONLY:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->DETAILEDONLY:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->PATTERN:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->PATTERN:Lcom/vladium/util/args/OptsParser$Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private consumeWS()V
    .locals 2

    .prologue
    .line 1347
    iget v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1358
    :cond_0
    return-void

    .line 1351
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    goto :goto_0
.end method

.method private nextChar()V
    .locals 4

    .prologue
    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    return-void

    .line 1366
    :catch_0
    move-exception v0

    .line 1368
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error while parsing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method accept()Lcom/vladium/util/args/OptsParser$Token;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    .line 1209
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextToken()V

    .line 1211
    return-object v0
.end method

.method accept(I)Lcom/vladium/util/args/OptsParser$Token;
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    .line 1218
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextToken()V

    .line 1223
    return-object v0

    .line 1221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error: invalid token ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], expected type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cardinality()[I
    .locals 3

    .prologue
    .line 1178
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    move-result-object v0

    .line 1180
    const-string v1, "0"

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    sget-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO:[I

    .line 1185
    :goto_0
    return-object v0

    .line 1182
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    sget-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ONE:[I

    goto :goto_0

    .line 1185
    :cond_1
    sget-object v0, Lcom/vladium/util/args/OptsParser$OptDef;->C_ZERO_OR_ONE:[I

    goto :goto_0
.end method

.method namelist()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-virtual {p0, v3}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    :goto_0
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1196
    invoke-virtual {p0, v3}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1199
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1200
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1202
    return-object v1
.end method

.method nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x9

    .line 1230
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->consumeWS()V

    .line 1232
    iget v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    sparse-switch v0, :sswitch_data_0

    .line 1326
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1328
    :goto_0
    iget v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    iget v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1331
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    goto :goto_0

    .line 1234
    :sswitch_0
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->EOF:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    .line 1342
    :goto_1
    return-void

    .line 1238
    :sswitch_1
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1239
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->COLON:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1245
    :sswitch_2
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1246
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->SEMICOLON:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1252
    :sswitch_3
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1253
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->COMMA:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1259
    :sswitch_4
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1260
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->LBRACKET:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1266
    :sswitch_5
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1267
    sget-object v0, Lcom/vladium/util/args/OptsParser$Token;->RBRACKET:Lcom/vladium/util/args/OptsParser$Token;

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1273
    :sswitch_6
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1274
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1280
    :sswitch_7
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1281
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const-string v1, "1"

    invoke-direct {v0, v2, v1}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1287
    :sswitch_8
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1288
    new-instance v0, Lcom/vladium/util/args/OptsParser$Token;

    const-string v1, "?"

    invoke-direct {v0, v2, v1}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1294
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1296
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1297
    :goto_2
    iget v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 1299
    iget v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1300
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    goto :goto_2

    .line 1302
    :cond_0
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1304
    new-instance v1, Lcom/vladium/util/args/OptsParser$Token;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto :goto_1

    .line 1310
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1312
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1313
    :goto_3
    iget v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    .line 1315
    iget v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_currentChar:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1316
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    goto :goto_3

    .line 1318
    :cond_1
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1320
    new-instance v1, Lcom/vladium/util/args/OptsParser$Token;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vladium/util/args/OptsParser$Token;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto/16 :goto_1

    .line 1334
    :cond_2
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->KEYWORDS:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/util/args/OptsParser$Token;

    .line 1335
    if-nez v0, :cond_3

    .line 1336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error: unrecognized keyword ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_3
    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    goto/16 :goto_1

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x2c -> :sswitch_3
        0x30 -> :sswitch_6
        0x31 -> :sswitch_7
        0x3a -> :sswitch_1
        0x3b -> :sswitch_2
        0x3f -> :sswitch_8
        0x7b -> :sswitch_4
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method optdef()Lcom/vladium/util/args/OptsParser$OptDef;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Lcom/vladium/util/args/OptsParser$OptDef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/util/args/OptsParser$OptDef;-><init>(Z)V

    .line 1076
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->optnamelist()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/util/args/OptsParser$OptDef;->setNames([Ljava/lang/String;)V

    .line 1077
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1078
    invoke-virtual {p0, v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->optmetadata(Lcom/vladium/util/args/OptsParser$OptDef;)V

    .line 1079
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1081
    return-object v0
.end method

.method optmetadata(Lcom/vladium/util/args/OptsParser$OptDef;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 1091
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error: invalid token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->REQUIRED:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vladium/util/args/OptsParser$Token;->OPTIONAL:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :pswitch_0
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1096
    invoke-virtual {p1, v3}, Lcom/vladium/util/args/OptsParser$OptDef;->setRequired(Z)V

    .line 1112
    :goto_0
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1114
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1117
    invoke-virtual {p1, v3}, Lcom/vladium/util/args/OptsParser$OptDef;->setMergeable(Z)V

    .line 1119
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1125
    invoke-virtual {p1, v3}, Lcom/vladium/util/args/OptsParser$OptDef;->setDetailedOnly(Z)V

    .line 1127
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1133
    invoke-virtual {p1, v3}, Lcom/vladium/util/args/OptsParser$OptDef;->setPattern(Z)V

    .line 1135
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1138
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1140
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->cardinality()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setValueCardinality([I)V

    .line 1142
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1143
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setValueMnemonic(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1148
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1151
    :cond_3
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 1153
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1155
    invoke-virtual {p0, v4}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1156
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->namelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setRequiresSet([Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0, v5}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1159
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getID()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1164
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1166
    invoke-virtual {p0, v4}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1167
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->namelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setExcludesSet([Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0, v5}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1170
    invoke-virtual {p0, v2}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    .line 1173
    :cond_5
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept(I)Lcom/vladium/util/args/OptsParser$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vladium/util/args/OptsParser$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setDescription(Ljava/lang/String;)V

    .line 1174
    return-void

    .line 1102
    :pswitch_1
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->accept()Lcom/vladium/util/args/OptsParser$Token;

    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vladium/util/args/OptsParser$OptDef;->setRequired(Z)V

    goto/16 :goto_0

    .line 1091
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method optnamelist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->namelist()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parse(Ljava/io/Reader;)[Lcom/vladium/util/args/OptsParser$OptDef;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    iput-object p1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_in:Ljava/io/Reader;

    .line 1047
    invoke-direct {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextChar()V

    .line 1048
    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->nextToken()V

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_token:Lcom/vladium/util/args/OptsParser$Token;

    sget-object v1, Lcom/vladium/util/args/OptsParser$Token;->EOF:Lcom/vladium/util/args/OptsParser$Token;

    if-eq v0, v1, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    invoke-virtual {p0}, Lcom/vladium/util/args/OptsParser$MetadataParser;->optdef()Lcom/vladium/util/args/OptsParser$OptDef;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1059
    :cond_3
    sget-object v0, Lcom/vladium/util/args/OptsParser$MetadataParser;->EMPTY_OPTDEF_ARRAY:[Lcom/vladium/util/args/OptsParser$OptDef;

    .line 1066
    :goto_1
    iput-object v2, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_in:Ljava/io/Reader;

    .line 1067
    iput-object v2, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    .line 1069
    return-object v0

    .line 1062
    :cond_4
    iget-object v0, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vladium/util/args/OptsParser$OptDef;

    .line 1063
    iget-object v1, p0, Lcom/vladium/util/args/OptsParser$MetadataParser;->m_opts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method
