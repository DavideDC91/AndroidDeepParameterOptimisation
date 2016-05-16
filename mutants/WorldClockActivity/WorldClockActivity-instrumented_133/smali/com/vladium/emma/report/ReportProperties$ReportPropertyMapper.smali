.class final Lcom/vladium/emma/report/ReportProperties$ReportPropertyMapper;
.super Ljava/lang/Object;
.source "ReportProperties.java"

# interfaces
.implements Lcom/vladium/util/IProperties$IMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/ReportProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportPropertyMapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vladium/emma/report/ReportProperties$1;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/vladium/emma/report/ReportProperties$ReportPropertyMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getMappedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    if-eqz p1, :cond_0

    .line 463
    const-string v0, "report."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/16 v0, 0x2e

    const-string v1, "report."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 466
    if-lez v0, :cond_0

    .line 470
    const-string v1, "report."

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
