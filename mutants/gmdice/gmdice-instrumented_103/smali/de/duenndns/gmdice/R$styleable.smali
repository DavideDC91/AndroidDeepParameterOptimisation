.class public final Lde/duenndns/gmdice/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/duenndns/gmdice/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final numberpicker:[I

.field public static final numberpicker_defaultValue:I = 0x2

.field public static final numberpicker_endRange:I = 0x1

.field public static final numberpicker_maxValue:I = 0x3

.field public static final numberpicker_startRange:I = 0x0

.field public static final numberpicker_wrap:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/duenndns/gmdice/R$styleable;->numberpicker:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
