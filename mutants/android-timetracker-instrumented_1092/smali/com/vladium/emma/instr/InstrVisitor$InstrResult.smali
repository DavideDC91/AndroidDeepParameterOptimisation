.class public final Lcom/vladium/emma/instr/InstrVisitor$InstrResult;
.super Ljava/lang/Object;
.source "InstrVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrResult"
.end annotation


# instance fields
.field public m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

.field public m_instrumented:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
