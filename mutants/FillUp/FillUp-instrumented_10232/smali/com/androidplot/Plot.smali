.class public abstract Lcom/androidplot/Plot;
.super Landroid/view/View;
.source "Plot.java"

# interfaces
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/Plot$b;,
        Lcom/androidplot/Plot$BufferedCanvas;,
        Lcom/androidplot/Plot$RenderMode;,
        Lcom/androidplot/Plot$BorderStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        "RendererType:",
        "Lcom/androidplot/ui/SeriesRenderer;",
        ">",
        "Landroid/view/View;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/androidplot/ui/BoxModel;

.field private c:Lcom/androidplot/Plot$BorderStyle;

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Lcom/androidplot/ui/LayoutManager;

.field private i:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private j:Lcom/androidplot/util/DisplayDimensions;

.field private k:Lcom/androidplot/Plot$RenderMode;

.field private final l:Lcom/androidplot/Plot$BufferedCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/Plot",
            "<TSeriesType;TFormatterType;TRendererType;>.BufferedCanvas;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Object;

.field private n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TRendererType;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/androidplot/ui/SeriesAndFormatterList",
            "<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/PlotListener;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Thread;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/androidplot/Plot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/Plot;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x41700000    # 15.0f

    const/16 v9, 0x96

    const/high16 v1, 0x40400000    # 3.0f

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/androidplot/ui/BoxModel;-><init>(FFFFFFFF)V

    iput-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    .line 109
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    .line 110
    iput v10, p0, Lcom/androidplot/Plot;->d:F

    .line 111
    iput v10, p0, Lcom/androidplot/Plot;->e:F

    .line 112
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    .line 118
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    .line 119
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    invoke-direct {v0, p0}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->r:Z

    .line 139
    iput-boolean v11, p0, Lcom/androidplot/Plot;->s:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x41700000    # 15.0f

    const/16 v9, 0x96

    const/high16 v1, 0x40400000    # 3.0f

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/androidplot/ui/BoxModel;-><init>(FFFFFFFF)V

    iput-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    .line 109
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    .line 110
    iput v10, p0, Lcom/androidplot/Plot;->d:F

    .line 111
    iput v10, p0, Lcom/androidplot/Plot;->e:F

    .line 112
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    .line 118
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    .line 119
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    invoke-direct {v0, p0}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->r:Z

    .line 139
    iput-boolean v11, p0, Lcom/androidplot/Plot;->s:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 9

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct/range {v0 .. v8}, Lcom/androidplot/ui/BoxModel;-><init>(FFFFFFFF)V

    iput-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    .line 109
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    .line 110
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/androidplot/Plot;->d:F

    .line 111
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/androidplot/Plot;->e:F

    .line 112
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    .line 118
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    .line 119
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    invoke-direct {v0, p0}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->r:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    const/16 v1, 0x96

    const/16 v2, 0x96

    const/16 v3, 0x96

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iput-object p3, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    .line 227
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidplot/Plot;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setTitle(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 304
    new-instance v0, Lcom/androidplot/ui/LayoutManager;

    invoke-direct {v0}, Lcom/androidplot/ui/LayoutManager;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    .line 305
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    iget-object v2, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    new-instance v3, Lcom/androidplot/ui/SizeMetrics;

    const/high16 v4, 0x41c80000    # 25.0f

    sget-object v5, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    const/high16 v6, 0x42c80000    # 100.0f

    sget-object v7, Lcom/androidplot/ui/SizeLayoutType;->ABSOLUTE:Lcom/androidplot/ui/SizeLayoutType;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/androidplot/ui/SizeMetrics;-><init>(FLcom/androidplot/ui/SizeLayoutType;FLcom/androidplot/ui/SizeLayoutType;)V

    sget-object v4, Lcom/androidplot/ui/TextOrientationType;->HORIZONTAL:Lcom/androidplot/ui/TextOrientationType;

    invoke-direct {v0, v2, v3, v4}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetrics;Lcom/androidplot/ui/TextOrientationType;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 309
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    sget-object v2, Lcom/androidplot/ui/XLayoutStyle;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/XLayoutStyle;

    sget-object v4, Lcom/androidplot/ui/YLayoutStyle;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/YLayoutStyle;

    sget-object v5, Lcom/androidplot/ui/AnchorPosition;->TOP_MIDDLE:Lcom/androidplot/ui/AnchorPosition;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/XLayoutStyle;FLcom/androidplot/ui/YLayoutStyle;Lcom/androidplot/ui/AnchorPosition;)V

    .line 312
    invoke-virtual {p0}, Lcom/androidplot/Plot;->a()V

    .line 314
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    iget-object v1, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 315
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 316
    if-eqz p2, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidplot"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "androidplot"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/androidplot/util/Configurator;->configure(Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;)V

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0}, Lcom/androidplot/ui/LayoutManager;->onPostInit()V

    .line 320
    sget-object v0, Lcom/androidplot/Plot;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidPlot RenderMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_3

    .line 322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/androidplot/Plot$a;

    invoke-direct {v1, p0}, Lcom/androidplot/Plot$a;-><init>(Lcom/androidplot/Plot;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/lang/Thread;

    .line 351
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/androidplot/Plot;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/androidplot/Plot;->r:Z

    return v0
.end method

.method static synthetic a(Lcom/androidplot/Plot;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/androidplot/Plot;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/PlotListener;

    .line 395
    invoke-interface {v0, p0, p1}, Lcom/androidplot/PlotListener;->onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/androidplot/Plot;Z)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/androidplot/Plot;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 647
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/androidplot/Plot$b;->a:[I

    iget-object v2, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v2}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->draw(Landroid/graphics/Canvas;)V

    .line 653
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/androidplot/Plot$b;->a:[I

    iget-object v2, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v2}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catch Lcom/androidplot/exception/PlotRenderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v1, :pswitch_data_1

    .line 663
    :cond_1
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    .line 667
    invoke-direct {p0, p1}, Lcom/androidplot/Plot;->b(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 668
    monitor-exit p0

    return-void

    .line 648
    :pswitch_0
    :try_start_3
    iget v1, p0, Lcom/androidplot/Plot;->d:F

    iget v2, p0, Lcom/androidplot/Plot;->e:F

    iget-object v3, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catch Lcom/androidplot/exception/PlotRenderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    :try_start_4
    sget-object v1, Lcom/androidplot/Plot;->a:Ljava/lang/String;

    const-string v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    invoke-virtual {v0}, Lcom/androidplot/exception/PlotRenderException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 663
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/androidplot/Plot;->s:Z

    .line 667
    invoke-direct {p0, p1}, Lcom/androidplot/Plot;->b(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 641
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 648
    :pswitch_1
    :try_start_6
    iget-object v1, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_6
    .catch Lcom/androidplot/exception/PlotRenderException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    :try_start_7
    sget-object v1, Lcom/androidplot/Plot;->a:Ljava/lang/String;

    const-string v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 654
    :pswitch_2
    :try_start_8
    iget v1, p0, Lcom/androidplot/Plot;->d:F

    iget v2, p0, Lcom/androidplot/Plot;->e:F

    iget-object v3, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_8
    .catch Lcom/androidplot/exception/PlotRenderException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 654
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized addListener(Lcom/androidplot/PlotListener;)Z
    .locals 1

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)Z"
        }
    .end annotation

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v2

    .line 404
    iget-object v1, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SeriesAndFormatterList;

    .line 407
    if-nez v1, :cond_3

    .line 409
    invoke-virtual {p0, v2}, Lcom/androidplot/Plot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Lcom/androidplot/ui/Formatter;->getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    new-instance v1, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-direct {v1}, Lcom/androidplot/ui/SeriesAndFormatterList;-><init>()V

    .line 413
    iget-object v3, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 417
    :goto_0
    instance-of v1, p1, Lcom/androidplot/PlotListener;

    if-eqz v1, :cond_1

    .line 418
    move-object v0, p1

    check-cast v0, Lcom/androidplot/PlotListener;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/androidplot/Plot;->addListener(Lcom/androidplot/PlotListener;)Z

    .line 422
    :cond_1
    invoke-virtual {v2, p1}, Lcom/androidplot/ui/SeriesAndFormatterList;->contains(Lcom/androidplot/Series;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const/4 v1, 0x0

    .line 426
    :goto_1
    monitor-exit p0

    return v1

    .line 425
    :cond_2
    :try_start_1
    invoke-virtual {v2, p1, p2}, Lcom/androidplot/ui/SeriesAndFormatterList;->add(Lcom/androidplot/Series;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    const/4 v1, 0x1

    goto :goto_1

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class;",
            ")TFormatterType;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SeriesAndFormatterList;->getFormatter(Lcom/androidplot/Series;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/Formatter;

    return-object v0
.end method

.method public getLayoutManager()Lcom/androidplot/ui/LayoutManager;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    return-object v0
.end method

.method public getPlotMarginBottom()F
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getPlotMarginLeft()F
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getPlotMarginRight()F
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getPlotMarginTop()F
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingBottom()F
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingLeft()F
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingRight()F
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingTop()F
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lcom/androidplot/Plot$RenderMode;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    return-object v0
.end method

.method public getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TRendererType;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesRenderer;

    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 522
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRendererList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TRendererType;>;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/androidplot/Plot;->n:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSeriesAndFormatterListForRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesAndFormatterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/androidplot/ui/SeriesAndFormatterList",
            "<TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    return-object v0
.end method

.method public getSeriesListForRenderer(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    .line 509
    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesAndFormatterList;->getSeriesList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeriesSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 496
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesRenderer;

    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Plot;->getSeriesListForRenderer(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Series;

    .line 500
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_1
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleWidget()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 2

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    .line 565
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    iget-object v1, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/util/DisplayDimensions;

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->layout(Lcom/androidplot/util/DisplayDimensions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/PlotListener;

    .line 389
    invoke-interface {v0, p0, p1}, Lcom/androidplot/PlotListener;->onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/Plot;->r:Z

    .line 572
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 573
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 615
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    iget-object v0, v0, Lcom/androidplot/Plot$BufferedCanvas;->a:Landroid/graphics/Bitmap;

    .line 618
    if-eqz v0, :cond_0

    .line 619
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 621
    :cond_0
    monitor-exit v1

    .line 627
    :goto_0
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_2

    .line 623
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 625
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Render Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/Plot;->setLayerType(ILandroid/graphics/Paint;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/Plot$BufferedCanvas;

    invoke-virtual {v0, p2, p1}, Lcom/androidplot/Plot$BufferedCanvas;->resize(II)V

    .line 597
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 598
    iget-object v1, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v1, v0}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v2, v1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 601
    new-instance v3, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v3, v0, v1, v2}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Lcom/androidplot/Plot;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 603
    iget-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_2
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public redraw()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 544
    iget-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 547
    monitor-exit v1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_3

    .line 552
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/androidplot/Plot;->invalidate()V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/Plot;->postInvalidate()V

    goto :goto_0

    .line 558
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Render Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/androidplot/PlotListener;)Z
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)V"
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 451
    iget-object v2, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SeriesAndFormatterList;->remove(Lcom/androidplot/Series;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 455
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesAndFormatterList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 462
    :cond_2
    instance-of v0, p1, Lcom/androidplot/PlotListener;

    if-eqz v0, :cond_3

    .line 463
    check-cast p1, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SeriesAndFormatterList;->remove(Lcom/androidplot/Series;)Z

    move-result v1

    .line 432
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesAndFormatterList;

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesAndFormatterList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_0
    instance-of v0, p1, Lcom/androidplot/PlotListener;

    if-eqz v0, :cond_1

    .line 438
    check-cast p1, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_1
    monitor-exit p0

    return v1

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/androidplot/Plot;->g:Landroid/graphics/Paint;

    .line 756
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    .line 865
    iget-object v0, p0, Lcom/androidplot/Plot;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public setBorderStyle(Lcom/androidplot/Plot$BorderStyle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 679
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    if-ne p1, v0, :cond_2

    .line 680
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "radiusX and radiusY cannot be null when using BorderStyle.ROUNDED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/Plot;->d:F

    .line 684
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/Plot;->e:F

    .line 686
    :cond_2
    iput-object p1, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/Plot$BorderStyle;

    .line 687
    return-void
.end method

.method public setLayoutManager(Lcom/androidplot/ui/LayoutManager;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    .line 740
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->setMarkupEnabled(Z)V

    .line 531
    return-void
.end method

.method public setPlotMarginBottom(F)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    .line 800
    return-void
.end method

.method public setPlotMarginLeft(F)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 808
    return-void
.end method

.method public setPlotMarginRight(F)V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 816
    return-void
.end method

.method public setPlotMarginTop(F)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 792
    return-void
.end method

.method public setPlotMargins(FFFF)V
    .locals 0

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotMarginLeft(F)V

    .line 767
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotMarginTop(F)V

    .line 768
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotMarginRight(F)V

    .line 769
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotMarginBottom(F)V

    .line 770
    return-void
.end method

.method public setPlotPadding(FFFF)V
    .locals 0

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotPaddingLeft(F)V

    .line 781
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotPaddingTop(F)V

    .line 782
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotPaddingRight(F)V

    .line 783
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotPaddingBottom(F)V

    .line 784
    return-void
.end method

.method public setPlotPaddingBottom(F)V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    .line 832
    return-void
.end method

.method public setPlotPaddingLeft(F)V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 840
    return-void
.end method

.method public setPlotPaddingRight(F)V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 848
    return-void
.end method

.method public setPlotPaddingTop(F)V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/androidplot/Plot;->b:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 824
    return-void
.end method

.method public setRenderMode(Lcom/androidplot/Plot$RenderMode;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/Plot$RenderMode;

    .line 292
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public setTitleWidget(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/androidplot/Plot;->i:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 748
    return-void
.end method
