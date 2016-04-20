.class public final Lcom/vladium/emma/instr/InstrProcessor$OutMode;
.super Ljava/lang/Object;
.source "InstrProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/instr/InstrProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutMode"
.end annotation


# static fields
.field public static final OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

.field public static final OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

.field public static final OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;


# instance fields
.field private final m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    const-string v1, "copy"

    invoke-direct {v0, v1}, Lcom/vladium/emma/instr/InstrProcessor$OutMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    .line 281
    new-instance v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    const-string v1, "fullcopy"

    invoke-direct {v0, v1}, Lcom/vladium/emma/instr/InstrProcessor$OutMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    .line 282
    new-instance v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    const-string v1, "overwrite"

    invoke-direct {v0, v1}, Lcom/vladium/emma/instr/InstrProcessor$OutMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public static nameToMode(Ljava/lang/String;)Lcom/vladium/emma/instr/InstrProcessor$OutMode;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_COPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    .line 303
    :goto_0
    return-object v0

    .line 298
    :cond_0
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_FULLCOPY:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    goto :goto_0

    .line 300
    :cond_1
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    iget-object v0, v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    sget-object v0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->OUT_MODE_OVERWRITE:Lcom/vladium/emma/instr/InstrProcessor$OutMode;

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrProcessor$OutMode;->m_name:Ljava/lang/String;

    return-object v0
.end method
