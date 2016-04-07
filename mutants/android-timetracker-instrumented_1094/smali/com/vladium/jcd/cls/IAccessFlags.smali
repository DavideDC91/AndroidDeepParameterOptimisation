.class public interface abstract Lcom/vladium/jcd/cls/IAccessFlags;
.super Ljava/lang/Object;
.source "IAccessFlags.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final ALL_ACC:[I

.field public static final ALL_ACC_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xb

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC:[I

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "public"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "private"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "static"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "final"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "synchronized"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "abstract"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/jcd/cls/IAccessFlags;->ALL_ACC_NAMES:[Ljava/lang/String;

    return-void

    .line 34
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
    .end array-data
.end method


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract setAccessFlags(I)V
.end method
