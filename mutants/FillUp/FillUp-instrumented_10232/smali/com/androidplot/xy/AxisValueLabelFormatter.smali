.class public Lcom/androidplot/xy/AxisValueLabelFormatter;
.super Ljava/lang/Object;
.source "AxisValueLabelFormatter.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/androidplot/xy/AxisValueLabelFormatter;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/androidplot/xy/AxisValueLabelFormatter;->a:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/androidplot/xy/AxisValueLabelFormatter;->a:I

    .line 33
    return-void
.end method
