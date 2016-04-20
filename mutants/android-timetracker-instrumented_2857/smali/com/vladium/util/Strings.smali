.class public abstract Lcom/vladium/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static final USE_GET_CHARS:Z = true

.field public static final WHITE_SPACE:Ljava/lang/String; = " \t\r\n"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HTMLEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    invoke-static {p0, v0}, Lcom/vladium/util/Strings;->HTMLEscape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static HTMLEscape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    .line 182
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: append"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 190
    aget-char v3, v1, v0

    .line 192
    sparse-switch v3, :sswitch_data_0

    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 199
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 203
    :sswitch_2
    const-string v3, "&#34;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 207
    :sswitch_3
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 215
    :cond_2
    return-void

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static HTMLEscapeNB(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    .line 223
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: append"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 231
    aget-char v3, v1, v0

    .line 233
    sparse-switch v3, :sswitch_data_0

    .line 264
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :sswitch_0
    const/16 v3, 0xa0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 240
    :sswitch_1
    const-string v3, "\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 248
    :sswitch_2
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 252
    :sswitch_3
    const-string v3, "&gt;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 256
    :sswitch_4
    const-string v3, "&#34;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 260
    :sswitch_5
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 268
    :cond_2
    return-void

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x20 -> :sswitch_0
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public static HTMLEscapeSP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    invoke-static {p0, v0}, Lcom/vladium/util/Strings;->HTMLEscapeNB(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object p0

    .line 90
    :cond_1
    array-length v1, p0

    .line 91
    if-eqz v1, :cond_0

    .line 93
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty input: delimiters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    .line 101
    aget-object v4, p0, v0

    .line 102
    if-eqz p2, :cond_5

    if-nez v4, :cond_5

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_5
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array p0, v0, [Ljava/lang/String;

    .line 113
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static mergeAT([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 129
    if-nez p2, :cond_1

    .line 130
    invoke-static {p0, p1, v10}, Lcom/vladium/util/Strings;->merge([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    .line 170
    :cond_0
    :goto_0
    return-object p0

    .line 133
    :cond_1
    if-eqz p0, :cond_0

    .line 135
    array-length v3, p0

    .line 136
    if-eqz v3, :cond_0

    .line 138
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null/empty input: delimiters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 144
    :goto_1
    if-ge v2, v3, :cond_9

    .line 146
    aget-object v0, p0, v2

    .line 147
    if-nez v0, :cond_5

    .line 144
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 149
    :cond_5
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_6
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 156
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vladium/util/Files;->readFileList(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 157
    :goto_3
    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 159
    aget-object v8, v7, v0

    .line 160
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 163
    :cond_8
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array p0, v0, [Ljava/lang/String;

    .line 168
    invoke-interface {v5, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removeDuplicates([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 50
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object p0

    .line 52
    :cond_1
    array-length v1, p0

    .line 53
    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 60
    aget-object v4, p0, v0

    .line 61
    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    if-eq v0, v1, :cond_0

    .line 71
    new-array p0, v0, [Ljava/lang/String;

    .line 72
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toListForm([Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 36
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    const/4 v0, 0x0

    array-length v2, p0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 41
    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    :cond_2
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
