.class final Lcom/androidplot/xy/BarRenderer$b;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/BarRenderer",
            "<TT;>.c;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/RectF;

.field public g:Lcom/androidplot/xy/BarRenderer$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/xy/BarRenderer",
            "<TT;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer$b;->a:Ljava/util/ArrayList;

    .line 342
    iput p2, p0, Lcom/androidplot/xy/BarRenderer$b;->b:I

    .line 343
    iput-object p3, p0, Lcom/androidplot/xy/BarRenderer$b;->f:Landroid/graphics/RectF;

    .line 344
    return-void
.end method
