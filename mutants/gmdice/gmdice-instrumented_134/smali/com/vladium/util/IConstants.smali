.class public interface abstract Lcom/vladium/util/IConstants;
.super Ljava/lang/Object;
.source "IConstants.java"


# static fields
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EOL:Ljava/lang/String;

.field public static final INDENT_INCREMENT:Ljava/lang/String; = "  "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/vladium/util/IConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 23
    new-array v0, v1, [Ljava/io/File;

    sput-object v0, Lcom/vladium/util/IConstants;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 24
    new-array v0, v1, [I

    sput-object v0, Lcom/vladium/util/IConstants;->EMPTY_INT_ARRAY:[I

    .line 26
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vladium/util/IConstants;->EOL:Ljava/lang/String;

    return-void
.end method
