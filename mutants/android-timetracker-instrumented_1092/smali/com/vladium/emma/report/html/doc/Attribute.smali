.class public abstract Lcom/vladium/emma/report/html/doc/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Lcom/vladium/emma/report/html/doc/IContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;
    }
.end annotation


# static fields
.field public static final ALIGN:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final BORDER:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final CELLPADDING:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final CELLSPACING:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final CLASS:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final COLSPAN:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final CONTENT:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final HREF:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final HTTP_EQUIV:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final ID:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final NAME:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final REL:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final SIZE:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final SRC:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final TITLE:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final TYPE:Lcom/vladium/emma/report/html/doc/Attribute;

.field public static final WIDTH:Lcom/vladium/emma/report/html/doc/Attribute;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "ID"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->ID:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 23
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "NAME"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->NAME:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 24
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "TITLE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->TITLE:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 25
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->TYPE:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 26
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "CLASS"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->CLASS:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 27
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "HTTP-EQUIV"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->HTTP_EQUIV:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 28
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->CONTENT:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 29
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "HREF"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->HREF:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 30
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "SRC"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->SRC:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 31
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "REL"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->REL:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 32
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "WIDTH"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->WIDTH:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 33
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->SIZE:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 34
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "BORDER"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->BORDER:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 35
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "CELLPADDING"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->CELLPADDING:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 36
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "CELLSPACING"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->CELLSPACING:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 37
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "ALIGN"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->ALIGN:Lcom/vladium/emma/report/html/doc/Attribute;

    .line 38
    new-instance v0, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;

    const-string v1, "COLSPAN"

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/doc/Attribute$AttributeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vladium/emma/report/html/doc/Attribute;->COLSPAN:Lcom/vladium/emma/report/html/doc/Attribute;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method
