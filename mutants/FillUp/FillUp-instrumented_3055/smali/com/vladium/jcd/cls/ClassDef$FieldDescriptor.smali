.class final Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;
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
    name = "FieldDescriptor"
.end annotation


# instance fields
.field final m_descriptor:Ljava/lang/String;

.field final m_modifiers:I

.field final m_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_name:Ljava/lang/String;

    .line 649
    iput p2, p0, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_modifiers:I

    .line 650
    iput-object p3, p0, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_descriptor:Ljava/lang/String;

    .line 651
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_name:Ljava/lang/String;

    check-cast p1, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;

    iget-object v1, p1, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
