.class public interface abstract Lcom/androidplot/xy/XYSeries;
.super Ljava/lang/Object;
.source "XYSeries.java"

# interfaces
.implements Lcom/androidplot/Series;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/Series",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Number;",
        "Ljava/lang/Number;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public abstract getX(I)Ljava/lang/Number;
.end method

.method public abstract getY(I)Ljava/lang/Number;
.end method

.method public abstract size()I
.end method
