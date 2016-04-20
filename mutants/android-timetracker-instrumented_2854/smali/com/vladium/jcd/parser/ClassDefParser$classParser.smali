.class final Lcom/vladium/jcd/parser/ClassDefParser$classParser;
.super Ljava/lang/Object;
.source "ClassDefParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/parser/ClassDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "classParser"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final s_line:Ljava/lang/String; = "------------------------------------------------------------------------"


# instance fields
.field private final m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

.field private m_table:Lcom/vladium/jcd/cls/ClassDef;


# direct methods
.method constructor <init>(Lcom/vladium/jcd/lib/UDataInputStream;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    .line 96
    return-void
.end method


# virtual methods
.method access_flags()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v1, v0}, Lcom/vladium/jcd/cls/ClassDef;->setAccessFlags(I)V

    .line 184
    return-void
.end method

.method attributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 286
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v2

    .line 288
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 290
    iget-object v3, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-static {v2, v3}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->new_Attribute_info(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v3

    .line 297
    iget-object v4, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v4}, Lcom/vladium/jcd/cls/ClassDef;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method class_table()Lcom/vladium/jcd/cls/ClassDef;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/vladium/jcd/cls/ClassDef;

    invoke-direct {v0}, Lcom/vladium/jcd/cls/ClassDef;-><init>()V

    iput-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    .line 104
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->magic()V

    .line 105
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->version()V

    .line 109
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->constant_pool()V

    .line 113
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->access_flags()V

    .line 114
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->this_class()V

    .line 115
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->super_class()V

    .line 119
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->interfaces()V

    .line 122
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->fields()V

    .line 125
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->methods()V

    .line 128
    invoke-virtual {p0}, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->attributes()V

    .line 131
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    return-object v0
.end method

.method constant_pool()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 164
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v2

    .line 166
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 168
    iget-object v3, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-static {v3}, Lcom/vladium/jcd/cls/constant/CONSTANT_info;->new_CONSTANT_info(Lcom/vladium/jcd/lib/UDataInputStream;)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v3

    .line 169
    invoke-interface {v2, v3}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    .line 173
    instance-of v4, v3, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    if-nez v4, :cond_0

    instance-of v3, v3, Lcom/vladium/jcd/cls/constant/CONSTANT_Double_info;

    if-eqz v3, :cond_1

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method fields()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v4

    .line 225
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v5

    move v3, v2

    .line 227
    :goto_0
    if-ge v3, v4, :cond_2

    .line 229
    new-instance v0, Lcom/vladium/jcd/cls/Field_info;

    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-direct {v0, v5, v1}, Lcom/vladium/jcd/cls/Field_info;-><init>(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 236
    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v1}, Lcom/vladium/jcd/cls/ClassDef;->getFields()Lcom/vladium/jcd/cls/IFieldCollection;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/vladium/jcd/cls/IFieldCollection;->add(Lcom/vladium/jcd/cls/Field_info;)I

    .line 240
    invoke-virtual {v0}, Lcom/vladium/jcd/cls/Field_info;->getAccessFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x18

    const/16 v6, 0x18

    if-ne v1, v6, :cond_1

    const-string v1, "serialVersionUID"

    iget-object v6, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0, v6}, Lcom/vladium/jcd/cls/Field_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/vladium/jcd/cls/Field_info;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v6

    .line 244
    invoke-interface {v6}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    .line 246
    invoke-interface {v6, v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v0

    .line 248
    instance-of v8, v0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;

    if-eqz v8, :cond_0

    .line 250
    check-cast v0, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;

    iget-object v8, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0, v8}, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;->getValue(Lcom/vladium/jcd/cls/ClassDef;)Lcom/vladium/jcd/cls/constant/CONSTANT_literal_info;

    move-result-object v0

    .line 251
    instance-of v8, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    if-eqz v8, :cond_0

    .line 252
    iget-object v8, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    iget-wide v10, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;->m_value:J

    invoke-virtual {v8, v10, v11}, Lcom/vladium/jcd/cls/ClassDef;->setDeclaredSUID(J)V

    .line 244
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 227
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 257
    :cond_2
    return-void
.end method

.method interfaces()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 210
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v2}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v3}, Lcom/vladium/jcd/cls/ClassDef;->getInterfaces()Lcom/vladium/jcd/cls/IInterfaceCollection;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IInterfaceCollection;->add(I)I

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method magic()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU4()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v2, v0, v1}, Lcom/vladium/jcd/cls/ClassDef;->setMagic(J)V

    .line 141
    return-void
.end method

.method methods()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 265
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v0}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v2

    .line 267
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 269
    new-instance v3, Lcom/vladium/jcd/cls/Method_info;

    iget-object v4, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-direct {v3, v2, v4}, Lcom/vladium/jcd/cls/Method_info;-><init>(Lcom/vladium/jcd/cls/IConstantCollection;Lcom/vladium/jcd/lib/UDataInputStream;)V

    .line 276
    iget-object v4, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v4}, Lcom/vladium/jcd/cls/ClassDef;->getMethods()Lcom/vladium/jcd/cls/IMethodCollection;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/vladium/jcd/cls/IMethodCollection;->add(Lcom/vladium/jcd/cls/Method_info;)I

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method super_class()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v1, v0}, Lcom/vladium/jcd/cls/ClassDef;->setSuperClassIndex(I)V

    .line 202
    return-void
.end method

.method this_class()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v1, v0}, Lcom/vladium/jcd/cls/ClassDef;->setThisClassIndex(I)V

    .line 193
    return-void
.end method

.method version()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v0}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_bytes:Lcom/vladium/jcd/lib/UDataInputStream;

    invoke-virtual {v1}, Lcom/vladium/jcd/lib/UDataInputStream;->readU2()I

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/vladium/jcd/parser/ClassDefParser$classParser;->m_table:Lcom/vladium/jcd/cls/ClassDef;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/vladium/jcd/cls/ClassDef;->setVersion([I)V

    .line 156
    return-void
.end method
