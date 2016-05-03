.class Lorg/paulmach/textedit/ColorPreference$3;
.super Ljava/lang/Object;
.source "ColorPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/paulmach/textedit/ColorPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = 0x345146a820c0c9d0L


# instance fields
.field final synthetic this$0:Lorg/paulmach/textedit/ColorPreference;

.field final synthetic val$colorView:Landroid/view/View;

.field final synthetic val$colormap:Landroid/widget/ImageView;


# direct methods
.method private static $VRi()[[Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/paulmach/textedit/ColorPreference$3;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v1, v1, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    const-string v1, "org/paulmach/textedit/ColorPreference$3"

    const-wide v2, 0x7feb8bfa56cf78e6L    # 1.547521024765672E308

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$3;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/paulmach/textedit/ColorPreference;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lorg/paulmach/textedit/ColorPreference$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 90
    iput-object p1, p0, Lorg/paulmach/textedit/ColorPreference$3;->this$0:Lorg/paulmach/textedit/ColorPreference;

    iput-object p2, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colormap:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v5, 0x41700000    # 15.0f

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-object v0, Lorg/paulmach/textedit/ColorPreference$3;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/paulmach/textedit/ColorPreference$3;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v3, v0, v7

    .line 92
    iget-object v0, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colormap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colormap:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colormap:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput-boolean v7, v3, v1

    if-lt v0, v5, :cond_1

    .line 101
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aput-boolean v7, v3, v7

    .line 102
    :cond_1
    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    if-gez v0, :cond_2

    .line 103
    const/4 v0, 0x3

    aput-boolean v7, v3, v0

    move v0, v1

    .line 105
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x4

    aput-boolean v7, v3, v6

    if-lt v2, v5, :cond_3

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x5

    aput-boolean v7, v3, v5

    .line 107
    :cond_3
    const/4 v5, 0x6

    aput-boolean v7, v3, v5

    if-gez v2, :cond_4

    .line 108
    const/4 v2, 0x7

    aput-boolean v7, v3, v2

    .line 111
    :goto_0
    iget-object v2, p0, Lorg/paulmach/textedit/ColorPreference$3;->this$0:Lorg/paulmach/textedit/ColorPreference;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    iput v0, v2, Lorg/paulmach/textedit/ColorPreference;->color:I

    .line 112
    iget-object v0, p0, Lorg/paulmach/textedit/ColorPreference$3;->val$colorView:Landroid/view/View;

    iget-object v1, p0, Lorg/paulmach/textedit/ColorPreference$3;->this$0:Lorg/paulmach/textedit/ColorPreference;

    iget v1, v1, Lorg/paulmach/textedit/ColorPreference;->color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    const/16 v0, 0x8

    aput-boolean v7, v3, v0

    return v7

    :cond_4
    move v1, v2

    goto :goto_0
.end method
