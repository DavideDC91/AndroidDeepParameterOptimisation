.class final Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;
.super Ljava/lang/Object;
.source "ClassDef.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/cls/ClassDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstructorDescriptor"
.end annotation


# instance fields
.field final m_descriptor:Ljava/lang/String;

.field final m_modifiers:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput p1, p0, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_modifiers:I

    .line 673
    iput-object p2, p0, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_descriptor:Ljava/lang/String;

    .line 674
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_descriptor:Ljava/lang/String;

    check-cast p1, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;

    iget-object v1, p1, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
