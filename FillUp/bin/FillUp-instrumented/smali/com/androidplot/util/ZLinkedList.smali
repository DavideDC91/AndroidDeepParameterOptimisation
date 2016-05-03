.class public Lcom/androidplot/util/ZLinkedList;
.super Ljava/util/LinkedList;
.source "ZLinkedList.java"

# interfaces
.implements Lcom/androidplot/util/ZIndexable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TType;>;",
        "Lcom/androidplot/util/ZIndexable",
        "<TType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/util/ListOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/ListOrganizer",
            "<TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 29
    new-instance v0, Lcom/androidplot/util/ListOrganizer;

    invoke-direct {v0, p0}, Lcom/androidplot/util/ListOrganizer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    .line 30
    return-void
.end method


# virtual methods
.method public addToBottom(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->addToBottom(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public addToTop(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->addToTop(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0}, Lcom/androidplot/util/ListOrganizer;->elements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;TType;)Z"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/ListOrganizer;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;TType;)Z"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/ListOrganizer;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveDown(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->moveDown(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveToBottom(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->moveToBottom(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveToTop(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->moveToTop(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveUp(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/androidplot/util/ZLinkedList;->a:Lcom/androidplot/util/ListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/ListOrganizer;->moveUp(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
