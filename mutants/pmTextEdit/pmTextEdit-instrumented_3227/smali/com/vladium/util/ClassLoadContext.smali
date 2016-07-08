.class public Lcom/vladium/util/ClassLoadContext;
.super Ljava/lang/Object;
.source "ClassLoadContext.java"


# instance fields
.field private final m_caller:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/vladium/util/ClassLoadContext;->m_caller:Ljava/lang/Class;

    .line 48
    return-void
.end method


# virtual methods
.method public final getCallerClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vladium/util/ClassLoadContext;->m_caller:Ljava/lang/Class;

    return-object v0
.end method
