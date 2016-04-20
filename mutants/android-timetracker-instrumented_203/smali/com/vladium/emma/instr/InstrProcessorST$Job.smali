.class abstract Lcom/vladium/emma/instr/InstrProcessorST$Job;
.super Ljava/lang/Object;
.source "InstrProcessorST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrProcessorST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Job"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/instr/InstrProcessorST$1;)V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrProcessorST$Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
