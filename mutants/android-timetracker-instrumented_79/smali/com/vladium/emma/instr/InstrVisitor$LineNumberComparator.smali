.class final Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;
.super Ljava/lang/Object;
.source "InstrVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineNumberComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/instr/InstrVisitor$1;)V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 2022
    check-cast p1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    iget v0, p1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    check-cast p2, Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    iget v1, p2, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    sub-int/2addr v0, v1

    return v0
.end method
