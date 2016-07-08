.class public abstract Lcom/vladium/util/Descriptors;
.super Ljava/lang/Object;
.source "Descriptors.java"


# static fields
.field public static final JAVA_NAME_SEPARATOR:C = '.'

.field private static final RENAME_INNER_CLASSES:Z = false

.field public static final VM_NAME_SEPARATOR:C = '/'


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty input: name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 35
    :cond_2
    :goto_0
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static combineJavaName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x2e

    invoke-static {p0, p1, v0}, Lcom/vladium/util/Descriptors;->combine(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static combineVMName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x2f

    invoke-static {p0, p1, v0}, Lcom/vladium/util/Descriptors;->combine(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static methodVMNameToJavaName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x29

    const/4 v2, 0x1

    .line 100
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    if-eqz p3, :cond_4

    .line 104
    const-string v0, "<clinit>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "<static initializer>"

    .line 144
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 122
    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    array-length v0, v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget-char v1, v4, v0

    if-ne v1, v6, :cond_1

    move v1, v2

    .line 126
    :goto_2
    if-ge v1, v0, :cond_6

    .line 128
    if-le v1, v2, :cond_2

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_2
    invoke-static {v4, v1, p4, v3}, Lcom/vladium/util/Descriptors;->typeDescriptorToJavaName([CIZLjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 113
    :cond_4
    const-string v0, "<clinit>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const-string v0, "<clinit>"

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
    :cond_6
    if-eqz p5, :cond_7

    .line 135
    const-string v1, "): "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0, p4, v3}, Lcom/vladium/util/Descriptors;->typeDescriptorToJavaName([CIZLjava/lang/StringBuffer;)I

    .line 144
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method private static typeDescriptorToJavaName([CIZLjava/lang/StringBuffer;)I
    .locals 8

    .prologue
    const/16 v7, 0x2f

    const/4 v1, 0x0

    const/16 v6, 0x3b

    move v0, v1

    .line 168
    :goto_0
    aget-char v2, p0, p1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    add-int/lit8 v3, p1, 0x1

    aget-char v2, p0, p1

    .line 171
    sparse-switch v2, :sswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type descriptor element: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :sswitch_0
    if-eqz p2, :cond_4

    .line 177
    const/4 v2, -0x1

    move v4, v2

    move v2, v3

    .line 178
    :goto_1
    aget-char v5, p0, v2

    if-eq v5, v6, :cond_2

    .line 180
    aget-char v5, p0, v2

    if-ne v5, v7, :cond_1

    move v4, v2

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    if-lez v4, :cond_3

    add-int/lit8 v3, v4, 0x1

    :cond_3
    :goto_2
    aget-char v2, p0, v3

    if-eq v2, v6, :cond_6

    .line 185
    aget-char v2, p0, v3

    .line 189
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_4
    :goto_3
    aget-char v2, p0, v3

    if-eq v2, v6, :cond_6

    .line 196
    aget-char v2, p0, v3

    .line 197
    if-eq v2, v7, :cond_5

    :goto_4
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 197
    :cond_5
    const/16 v2, 0x2e

    goto :goto_4

    .line 201
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 221
    :goto_5
    if-lez v0, :cond_7

    .line 223
    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    :goto_6
    if-ge v1, v0, :cond_7

    const-string v2, "[]"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 205
    :sswitch_1
    const-string v2, "byte"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 206
    :sswitch_2
    const-string v2, "char"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 207
    :sswitch_3
    const-string v2, "double"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 208
    :sswitch_4
    const-string v2, "float"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 209
    :sswitch_5
    const-string v2, "int"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 210
    :sswitch_6
    const-string v2, "long"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 211
    :sswitch_7
    const-string v2, "short"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 212
    :sswitch_8
    const-string v2, "boolean"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 214
    :sswitch_9
    const-string v2, "void"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 227
    :cond_7
    return v3

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_3
        0x46 -> :sswitch_4
        0x49 -> :sswitch_5
        0x4a -> :sswitch_6
        0x4c -> :sswitch_0
        0x53 -> :sswitch_7
        0x56 -> :sswitch_9
        0x5a -> :sswitch_8
    .end sparse-switch
.end method

.method public static vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
