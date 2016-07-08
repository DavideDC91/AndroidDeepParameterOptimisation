.class public Lcom/androidplot/pie/Segment;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Lcom/androidplot/Series;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/Series",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2}, Lcom/androidplot/pie/Segment;->setValue(Ljava/lang/Number;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/androidplot/pie/Segment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androidplot/pie/Segment;->b:Ljava/lang/Number;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->b:Ljava/lang/Number;

    .line 47
    return-void
.end method
