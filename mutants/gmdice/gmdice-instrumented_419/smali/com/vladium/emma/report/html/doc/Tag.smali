.class public abstract Lcom/vladium/emma/report/html/doc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/Tag$TagImpl;
    }
.end annotation


# static fields
.field public static final A:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final BODY:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final CAPTION:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H1:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H2:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H3:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H4:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H5:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final H6:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final HEAD:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final HR:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final HTML:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final Hs:[Lcom/vladium/emma/report/html/doc/Tag;

.field public static final LINK:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final META:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final P:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final SPAN:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final STYLE:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final TABLE:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final TD:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final TH:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final TITLE:Lcom/vladium/emma/report/html/doc/Tag;

.field public static final TR:Lcom/vladium/emma/report/html/doc/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "HTML"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HTML:Lcom/vladium/emma/report/html/doc/Tag;

    .line 23
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "HEAD"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HEAD:Lcom/vladium/emma/report/html/doc/Tag;

    .line 24
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "BODY"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->BODY:Lcom/vladium/emma/report/html/doc/Tag;

    .line 25
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "META"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->META:Lcom/vladium/emma/report/html/doc/Tag;

    .line 26
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "STYLE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->STYLE:Lcom/vladium/emma/report/html/doc/Tag;

    .line 28
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "TITLE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TITLE:Lcom/vladium/emma/report/html/doc/Tag;

    .line 29
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H1"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H1:Lcom/vladium/emma/report/html/doc/Tag;

    .line 30
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H2"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H2:Lcom/vladium/emma/report/html/doc/Tag;

    .line 31
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H3"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H3:Lcom/vladium/emma/report/html/doc/Tag;

    .line 32
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H4"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H4:Lcom/vladium/emma/report/html/doc/Tag;

    .line 33
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H5"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H5:Lcom/vladium/emma/report/html/doc/Tag;

    .line 34
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "H6"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->H6:Lcom/vladium/emma/report/html/doc/Tag;

    .line 35
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "LINK"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->LINK:Lcom/vladium/emma/report/html/doc/Tag;

    .line 37
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "A"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->A:Lcom/vladium/emma/report/html/doc/Tag;

    .line 39
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "TABLE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TABLE:Lcom/vladium/emma/report/html/doc/Tag;

    .line 40
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "CAPTION"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->CAPTION:Lcom/vladium/emma/report/html/doc/Tag;

    .line 41
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "TH"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TH:Lcom/vladium/emma/report/html/doc/Tag;

    .line 42
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "TR"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TR:Lcom/vladium/emma/report/html/doc/Tag;

    .line 43
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "TD"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->TD:Lcom/vladium/emma/report/html/doc/Tag;

    .line 45
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "HR"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->HR:Lcom/vladium/emma/report/html/doc/Tag;

    .line 46
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "P"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->P:Lcom/vladium/emma/report/html/doc/Tag;

    .line 47
    new-instance v0, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;

    const-string v1, "SPAN"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Tag$TagImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->SPAN:Lcom/vladium/emma/report/html/doc/Tag;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vladium/emma/report/html/doc/Tag;

    const/4 v1, 0x0

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H1:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H2:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H3:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H4:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H4:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vladium/emma/report/html/doc/Tag;->H6:Lcom/vladium/emma/report/html/doc/Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/emma/report/html/doc/Tag;->Hs:[Lcom/vladium/emma/report/html/doc/Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
