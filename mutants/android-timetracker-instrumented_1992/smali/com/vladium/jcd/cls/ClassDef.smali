.class public final Lcom/vladium/jcd/cls/ClassDef;
.super Ljava/lang/Object;
.source "ClassDef.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/vladium/jcd/cls/IAccessFlags;
.implements Lcom/vladium/jcd/compiler/IClassFormatOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;,
        Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;,
        Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;
    }
.end annotation


# static fields
.field private static final DEBUG_SUID:Z


# instance fields
.field private m_access_flags:I

.field private m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

.field private m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

.field private m_declaredSUID:J

.field private m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

.field private m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

.field private m_magic:J

.field private m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

.field private m_super_class_index:I

.field private m_this_class_index:I

.field private m_version:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    .line 54
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newConstantCollection(I)Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    .line 55
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newInterfaceCollection(I)Lcom/vladium/jcd/cls/IInterfaceCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

    .line 56
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newFieldCollection(I)Lcom/vladium/jcd/cls/IFieldCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    .line 57
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newMethodCollection(I)Lcom/vladium/jcd/cls/IMethodCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    .line 58
    invoke-static {v1}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    .line 59
    return-void
.end method


# virtual methods
.method public accept(Lcom/vladium/jcd/cls/IClassDefVisitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    invoke-interface {p1, p0, p2}, Lcom/vladium/jcd/cls/IClassDefVisitor;->visit(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public addCONSTANT_Utf8(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 496
    if-eqz p2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IConstantCollection;->findCONSTANT_Utf8(Ljava/lang/String;)I

    move-result v0

    .line 499
    if-lez v0, :cond_0

    .line 507
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v1, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    invoke-direct {v1, p1}, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    goto :goto_0
.end method

.method public addClassref(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v2, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    invoke-direct {v2, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    return v0
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 544
    invoke-virtual {p0, p1, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 545
    invoke-virtual {p0, p2, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v1

    .line 547
    new-instance v2, Lcom/vladium/jcd/cls/Field_info;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v3

    invoke-direct {v2, p3, v0, v1, v3}, Lcom/vladium/jcd/cls/Field_info;-><init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 550
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v0, v2}, Lcom/vladium/jcd/cls/IFieldCollection;->add(Lcom/vladium/jcd/cls/Field_info;)I

    move-result v0

    return v0
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;ILcom/vladium/jcd/cls/IAttributeCollection;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 562
    invoke-virtual {p0, p1, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 563
    invoke-virtual {p0, p2, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v1

    .line 565
    new-instance v2, Lcom/vladium/jcd/cls/Field_info;

    invoke-direct {v2, p3, v0, v1, p4}, Lcom/vladium/jcd/cls/Field_info;-><init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 567
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v0, v2}, Lcom/vladium/jcd/cls/IFieldCollection;->add(Lcom/vladium/jcd/cls/Field_info;)I

    move-result v0

    return v0
.end method

.method public addFieldref(I)I
    .locals 4

    .prologue
    .line 622
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IFieldCollection;->get(I)Lcom/vladium/jcd/cls/Field_info;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;

    iget v2, v0, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    iget v0, v0, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    invoke-direct {v1, v2, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;-><init>(II)V

    .line 625
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v2, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;

    iget v3, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    invoke-direct {v2, v3, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    return v0
.end method

.method public addFieldref(Lcom/vladium/jcd/cls/Field_info;)I
    .locals 4

    .prologue
    .line 607
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;

    iget v1, p1, Lcom/vladium/jcd/cls/Field_info;->m_name_index:I

    iget v2, p1, Lcom/vladium/jcd/cls/Field_info;->m_descriptor_index:I

    invoke-direct {v0, v1, v2}, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;-><init>(II)V

    .line 608
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v1, v0}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v2, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;

    iget v3, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    invoke-direct {v2, v3, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Fieldref_info;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    return v0
.end method

.method public addMethod(Lcom/vladium/jcd/cls/Method_info;)I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IMethodCollection;->add(Lcom/vladium/jcd/cls/Method_info;)I

    move-result v0

    return v0
.end method

.method public addNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 520
    invoke-virtual {p0, p1, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 521
    invoke-virtual {p0, p2, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v1

    .line 523
    iget-object v2, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v3, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;

    invoke-direct {v3, v0, v1}, Lcom/vladium/jcd/cls/constant/CONSTANT_NameAndType_info;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    return v0
.end method

.method public addStringConstant(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    new-instance v2, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;

    invoke-direct {v2, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 211
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/ClassDef;

    .line 214
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    .line 215
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IConstantCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IConstantCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    .line 216
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IInterfaceCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IInterfaceCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

    .line 217
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IFieldCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IFieldCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    .line 218
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IMethodCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IMethodCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    .line 219
    iget-object v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/jcd/cls/IAttributeCollection;

    iput-object v1, v0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final computeSUID(Z)J
    .locals 22

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/vladium/jcd/cls/ClassDef;->m_declaredSUID:J

    .line 266
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-eqz v4, :cond_1

    move-wide v4, v8

    .line 480
    :cond_0
    return-wide v4

    .line 272
    :cond_1
    :try_start_0
    new-instance v11, Lcom/vladium/util/ByteArrayOStream;

    const/16 v4, 0x400

    invoke-direct {v11, v4}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 273
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/jcd/cls/ClassDef;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 290
    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vladium/jcd/cls/ClassDef;->isNested([I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget v4, v4, v5

    :goto_0
    and-int/lit16 v4, v4, 0x611

    .line 302
    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/jcd/cls/ClassDef;->getInterfaces()Lcom/vladium/jcd/cls/IInterfaceCollection;

    move-result-object v6

    .line 311
    invoke-interface {v6}, Lcom/vladium/jcd/cls/IInterfaceCollection;->size()I

    move-result v4

    new-array v7, v4, [Ljava/lang/String;

    .line 313
    array-length v10, v7

    .line 314
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v10, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v6, v5}, Lcom/vladium/jcd/cls/IInterfaceCollection;->get(I)I

    move-result v13

    invoke-interface {v4, v13}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v4

    check-cast v4, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    .line 314
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/jcd/cls/ClassDef;->getAccessFlags()I

    move-result v4

    goto :goto_0

    .line 320
    :cond_3
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 321
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_4

    .line 323
    aget-object v5, v7, v4

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/jcd/cls/ClassDef;->getFields()Lcom/vladium/jcd/cls/IFieldCollection;

    move-result-object v7

    .line 334
    invoke-interface {v7}, Lcom/vladium/jcd/cls/IFieldCollection;->size()I

    move-result v4

    new-array v10, v4, [Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;

    .line 336
    const/4 v5, 0x0

    .line 337
    const/4 v4, 0x0

    array-length v13, v10

    move v6, v4

    move v4, v5

    :goto_3
    if-ge v6, v13, :cond_7

    .line 339
    invoke-interface {v7, v6}, Lcom/vladium/jcd/cls/IFieldCollection;->get(I)Lcom/vladium/jcd/cls/Field_info;

    move-result-object v14

    .line 340
    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Field_info;->getAccessFlags()I

    move-result v15

    .line 342
    and-int/lit8 v5, v15, 0x2

    if-eqz v5, :cond_5

    and-int/lit16 v5, v15, 0x88

    if-nez v5, :cond_6

    .line 344
    :cond_5
    add-int/lit8 v5, v4, 0x1

    new-instance v16, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/vladium/jcd/cls/Field_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/vladium/jcd/cls/Field_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v14}, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v16, v10, v4

    move v4, v5

    .line 337
    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    .line 347
    :cond_7
    if-lez v4, :cond_8

    .line 349
    const/4 v5, 0x0

    invoke-static {v10, v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 350
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 352
    aget-object v6, v10, v5

    .line 354
    iget-object v7, v6, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 355
    iget v7, v6, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_modifiers:I

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 356
    iget-object v6, v6, Lcom/vladium/jcd/cls/ClassDef$FieldDescriptor;->m_descriptor:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 377
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vladium/jcd/cls/ClassDef;->getMethods()Lcom/vladium/jcd/cls/IMethodCollection;

    move-result-object v13

    .line 379
    const/4 v7, 0x0

    .line 380
    invoke-interface {v13}, Lcom/vladium/jcd/cls/IMethodCollection;->size()I

    move-result v4

    new-array v14, v4, [Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;

    .line 381
    array-length v4, v14

    new-array v15, v4, [Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;

    .line 383
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 385
    const/4 v4, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move v10, v4

    move v4, v5

    :goto_5
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 387
    invoke-interface {v13, v10}, Lcom/vladium/jcd/cls/IMethodCollection;->get(I)Lcom/vladium/jcd/cls/Method_info;

    move-result-object v17

    .line 389
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vladium/jcd/cls/Method_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v18

    .line 391
    if-nez v7, :cond_9

    const-string v5, "<clinit>"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 393
    const/4 v5, 0x1

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    .line 385
    :goto_6
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v6

    move v6, v5

    goto :goto_5

    .line 398
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/vladium/jcd/cls/Method_info;->getAccessFlags()I

    move-result v19

    .line 399
    and-int/lit8 v5, v19, 0x2

    if-nez v5, :cond_f

    .line 401
    const-string v5, "<init>"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 402
    add-int/lit8 v5, v6, 0x1

    new-instance v18, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;-><init>(ILjava/lang/String;)V

    aput-object v18, v14, v6

    move v6, v7

    goto :goto_6

    .line 404
    :cond_a
    add-int/lit8 v5, v4, 0x1

    new-instance v20, Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v20, v15, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_6

    .line 409
    :cond_b
    if-eqz v7, :cond_c

    if-nez p1, :cond_c

    .line 411
    const-string v5, "<clinit>"

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 412
    const/16 v5, 0x8

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 413
    const-string v5, "()V"

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 416
    :cond_c
    if-lez v6, :cond_d

    .line 418
    const/4 v5, 0x0

    invoke-static {v14, v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 420
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v6, :cond_d

    .line 422
    aget-object v7, v14, v5

    .line 424
    const-string v10, "<init>"

    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 425
    iget v10, v7, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_modifiers:I

    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 426
    iget-object v7, v7, Lcom/vladium/jcd/cls/ClassDef$ConstructorDescriptor;->m_descriptor:Ljava/lang/String;

    const/16 v10, 0x2f

    const/16 v13, 0x2e

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 430
    :cond_d
    if-lez v4, :cond_e

    .line 432
    const/4 v5, 0x0

    invoke-static {v15, v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 434
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_e

    .line 436
    aget-object v6, v15, v5

    .line 438
    iget-object v7, v6, Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;->m_name:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 439
    iget v7, v6, Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;->m_modifiers:I

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget-object v6, v6, Lcom/vladium/jcd/cls/ClassDef$MethodDescriptor;->m_descriptor:Ljava/lang/String;

    const/16 v7, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 434
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 445
    :cond_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 457
    const-string v4, "SHA"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 459
    invoke-virtual {v11}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 460
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 475
    array-length v4, v7

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    move-wide v4, v8

    :goto_9
    if-ltz v6, :cond_0

    .line 477
    const/16 v8, 0x8

    shl-long/2addr v4, v8

    aget-byte v8, v7, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v8, v4

    .line 475
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_9

    .line 482
    :catch_0
    move-exception v4

    .line 484
    new-instance v5, Ljava/lang/Error;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :catch_1
    move-exception v4

    .line 488
    new-instance v5, Ljava/lang/SecurityException;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    move v5, v6

    move v6, v7

    goto/16 :goto_6
.end method

.method public final getAccessFlags()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_access_flags:I

    return v0
.end method

.method public getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    return-object v0
.end method

.method public getConstants()Lcom/vladium/jcd/cls/IConstantCollection;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    return-object v0
.end method

.method public final getDeclaredSUID()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_declaredSUID:J

    return-wide v0
.end method

.method public getFields()Lcom/vladium/jcd/cls/IFieldCollection;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v0, p0, p1}, Lcom/vladium/jcd/cls/IFieldCollection;->get(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lcom/vladium/jcd/cls/IInterfaceCollection;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

    return-object v0
.end method

.method public getMagic()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_magic:J

    return-wide v0
.end method

.method public getMethods()Lcom/vladium/jcd/cls/IMethodCollection;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    return-object v0
.end method

.method public getMethods(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    invoke-interface {v0, p0, p1}, Lcom/vladium/jcd/cls/IMethodCollection;->get(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/vladium/jcd/cls/ClassDef;->getThisClass()Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    iget v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_super_class_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    return-object v0
.end method

.method public getSuperClassIndex()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_super_class_index:I

    return v0
.end method

.method public getThisClass()Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    iget v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    return-object v0
.end method

.method public getThisClassIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    return v0
.end method

.method public getVersion()[I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    return-object v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_access_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNested([I)Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->getInnerClassesAttribute()Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    invoke-virtual {v0, v1, p1}, Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;->makesClassNested(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->hasSynthetic()Z

    move-result v0

    return v0
.end method

.method public newEmptyMethod(Ljava/lang/String;Ljava/lang/String;I)Lcom/vladium/jcd/cls/Method_info;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    const-string v0, "Code"

    invoke-virtual {p0, v0, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v1

    .line 577
    invoke-virtual {p0, p1, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v7

    .line 578
    invoke-virtual {p0, p2, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v8

    .line 580
    invoke-static {v2}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v9

    .line 581
    new-instance v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;

    sget-object v4, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v2}, Lcom/vladium/jcd/cls/attribute/AttributeElementFactory;->newExceptionHandlerTable(I)Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v5

    invoke-static {v2}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;-><init>(III[BLcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;Lcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 586
    invoke-interface {v9, v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 588
    new-instance v0, Lcom/vladium/jcd/cls/Method_info;

    invoke-direct {v0, p3, v7, v8, v9}, Lcom/vladium/jcd/cls/Method_info;-><init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 590
    return-object v0
.end method

.method public final setAccessFlags(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_access_flags:I

    .line 143
    return-void
.end method

.method public final setDeclaredSUID(J)V
    .locals 1

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_declaredSUID:J

    .line 94
    return-void
.end method

.method public setMagic(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_magic:J

    .line 77
    return-void
.end method

.method public setSuperClassIndex(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_super_class_index:I

    .line 131
    return-void
.end method

.method public setThisClassIndex(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    .line 105
    return-void
.end method

.method public setVersion([I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 89
    return-void
.end method

.method public writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-wide v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_magic:J

    invoke-virtual {p1, v0, v1}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU4(J)V

    .line 238
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 239
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_version:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 241
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_constants:Lcom/vladium/jcd/cls/IConstantCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IConstantCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 243
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_access_flags:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 245
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_this_class_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 246
    iget v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_super_class_index:I

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/lib/UDataOutputStream;->writeU2(I)V

    .line 248
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_interfaces:Lcom/vladium/jcd/cls/IInterfaceCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IInterfaceCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 249
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_fields:Lcom/vladium/jcd/cls/IFieldCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IFieldCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 250
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_methods:Lcom/vladium/jcd/cls/IMethodCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IMethodCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 251
    iget-object v0, p0, Lcom/vladium/jcd/cls/ClassDef;->m_attributes:Lcom/vladium/jcd/cls/IAttributeCollection;

    invoke-interface {v0, p1}, Lcom/vladium/jcd/cls/IAttributeCollection;->writeInClassFormat(Lcom/vladium/jcd/lib/UDataOutputStream;)V

    .line 252
    return-void
.end method
