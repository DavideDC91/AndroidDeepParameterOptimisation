.class public abstract Lcom/vladium/jcd/lib/Types;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/lib/Types$1;,
        Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;,
        Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;,
        Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;,
        Lcom/vladium/jcd/lib/Types$signatureCompiler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    return-void
.end method

.method public static accessFlagsToString(IZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_3

    move v2, v0

    move v0, v1

    .line 50
    :goto_0
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 52
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC:[I

    aget v4, v4, v0

    .line 54
    and-int v5, p0, v4

    if-eqz v5, :cond_0

    .line 56
    if-eqz v2, :cond_1

    move v2, v1

    .line 61
    :goto_1
    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 62
    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 64
    :cond_2
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    move v2, v0

    move v0, v1

    .line 70
    :goto_3
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 72
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC:[I

    aget v4, v4, v0

    .line 74
    and-int/2addr v4, p0

    if-eqz v4, :cond_4

    .line 76
    if-eqz v2, :cond_5

    move v2, v1

    .line 81
    :goto_4
    sget-object v4, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 79
    :cond_5
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 86
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static descriptorToParameterTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;

    invoke-direct {v0, p0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->methodDescriptor()V

    .line 205
    invoke-virtual {v0}, Lcom/vladium/jcd/lib/Types$methodDescriptorCompiler;->getResult()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static descriptorToReturnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 188
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 190
    if-ltz v0, :cond_0

    if-lez v1, :cond_0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed method descriptor: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static descriptorToType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;-><init>(Lcom/vladium/jcd/lib/Types$1;)V

    invoke-virtual {v0, p0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler;->descriptorToClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static fullMethodDescriptorToFullUserName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {p0}, Lcom/vladium/jcd/lib/Types;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_0
    const-string v0, "<clinit>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const-string p1, "<static class initializer>"

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/vladium/jcd/lib/Types;->methodDescriptorToUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullMethodDescriptorToUserName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p0}, Lcom/vladium/jcd/lib/Types;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    :cond_0
    const-string v0, "<clinit>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const-string p1, "<static class initializer>"

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/vladium/jcd/lib/Types;->methodDescriptorToUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClassPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 38
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static javaNameToVMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static methodDescriptorToUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-static {p0}, Lcom/vladium/jcd/lib/Types;->descriptorToParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 344
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 348
    if-lez v0, :cond_0

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :cond_0
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/vladium/jcd/lib/Types;->typeDescriptorToUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 353
    if-ltz v5, :cond_1

    const-string v6, "java.lang."

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 354
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 359
    :cond_3
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signatureToDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vladium/jcd/lib/Types;->signatureToDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signatureToDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/vladium/jcd/lib/Types$signatureCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;-><init>(Lcom/vladium/jcd/lib/Types$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->signatureDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signatureToMethodDescriptor([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 323
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static simpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 395
    if-gez v0, :cond_0

    .line 398
    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static typeDescriptorToUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;-><init>(Lcom/vladium/jcd/lib/Types$1;)V

    invoke-virtual {v0, p0}, Lcom/vladium/jcd/lib/Types$typeDescriptorCompiler2;->descriptorToClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static typeToDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/vladium/jcd/lib/Types$signatureCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/jcd/lib/Types$signatureCompiler;-><init>(Lcom/vladium/jcd/lib/Types$1;)V

    invoke-virtual {v0, p0}, Lcom/vladium/jcd/lib/Types$signatureCompiler;->typeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
