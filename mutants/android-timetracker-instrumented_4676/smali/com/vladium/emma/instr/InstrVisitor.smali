.class public final Lcom/vladium/emma/instr/InstrVisitor;
.super Lcom/vladium/jcd/cls/AbstractClassDefVisitor;
.source "InstrVisitor.java"

# interfaces
.implements Lcom/vladium/jcd/cls/IClassDefVisitor;
.implements Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;
.implements Lcom/vladium/jcd/opcodes/IOpcodes;
.implements Lcom/vladium/util/IConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/instr/InstrVisitor$1;,
        Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;,
        Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;,
        Lcom/vladium/emma/instr/InstrVisitor$methodHeader;,
        Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;,
        Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;,
        Lcom/vladium/emma/instr/InstrVisitor$TABLESWITCH;,
        Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;,
        Lcom/vladium/emma/instr/InstrVisitor$IFJUMP2;,
        Lcom/vladium/emma/instr/InstrVisitor$JUMP4;,
        Lcom/vladium/emma/instr/InstrVisitor$JUMP2;,
        Lcom/vladium/emma/instr/InstrVisitor$RET;,
        Lcom/vladium/emma/instr/InstrVisitor$TERMINATE;,
        Lcom/vladium/emma/instr/InstrVisitor$Branch;,
        Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;,
        Lcom/vladium/emma/instr/InstrVisitor$Block;,
        Lcom/vladium/emma/instr/InstrVisitor$BlockList;,
        Lcom/vladium/emma/instr/InstrVisitor$InstrResult;
    }
.end annotation


# static fields
.field private static final COVERAGE_FIELD_NAME:Ljava/lang/String; = "$VRc"

.field private static final EMIT_CTX_MIN_INIT_CAPACITY:I = 0x40

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final JAVA_IO_EXTERNALIZABLE_NAME:Ljava/lang/String; = "java/io/Externalizable"

.field private static final JAVA_IO_SERIALIZABLE_NAME:Ljava/lang/String; = "java/io/Serializable"

.field private static final LINE_NUMBER_COMPARATOR:Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;

.field private static final MARK_ADDED_ELEMENTS_SYNTHETIC:Z = true

.field private static final NBEAST:J = 0x4115L

.field private static final PRECLINIT_INIT_CAPACITY:I = 0x80

.field private static final PRECLINIT_METHOD_NAME:Ljava/lang/String; = "$VRi"

.field private static final SKIP_SYNTHETIC_CLASSES:Z = false

.field private static final SUID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"


# instance fields
.field m_classBlockCounts:[I

.field private m_classBlockMetadata:[[[I

.field m_classInstrMethodCount:I

.field private m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

.field private m_className:Ljava/lang/String;

.field m_classNameConstantIndex:I

.field private m_classPackageName:Ljava/lang/String;

.field private m_classSignature:J

.field private m_classSrcFileName:Ljava/lang/String;

.field private m_clinitID:I

.field private m_clinitStatus:I

.field m_cls:Lcom/vladium/jcd/cls/ClassDef;

.field m_coverageFieldrefIndex:I

.field private final m_doSUIDCompensation:Z

.field private final m_excludeBridgeMethods:Z

.field private final m_excludeSyntheticMethods:Z

.field private m_ignoreAlreadyInstrumented:Z

.field private m_instrument:Z

.field private final m_log:Lcom/vladium/logging/Logger;

.field private m_metadata:Z

.field private m_methodBlockOffsets:[I

.field private m_methodBlockSizes:[I

.field private m_methodFirstLine:I

.field m_methodID:I

.field private m_methodJumpAdjOffsets:[I

.field private m_methodJumpAdjValues:[I

.field private m_methodName:Ljava/lang/String;

.field m_preclinitMethodrefIndex:I

.field private m_registerMethodrefIndex:I

.field private m_stampIndex:I

.field private m_syntheticStringIndex:I

.field private m_warningIssued:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2204
    new-instance v0, Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;-><init>(Lcom/vladium/emma/instr/InstrVisitor$1;)V

    sput-object v0, Lcom/vladium/emma/instr/InstrVisitor;->LINE_NUMBER_COMPARATOR:Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;

    .line 2206
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/vladium/emma/instr/InstrVisitor;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Lcom/vladium/emma/data/CoverageOptions;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vladium/jcd/cls/AbstractClassDefVisitor;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/vladium/emma/data/CoverageOptions;->excludeSyntheticMethods()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_excludeSyntheticMethods:Z

    .line 62
    invoke-virtual {p1}, Lcom/vladium/emma/data/CoverageOptions;->excludeBridgeMethods()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_excludeBridgeMethods:Z

    .line 63
    invoke-virtual {p1}, Lcom/vladium/emma/data/CoverageOptions;->doSUIDCompensation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_doSUIDCompensation:Z

    .line 65
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    .line 66
    return-void
.end method

.method private consumeSignatureData(I[I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4115

    .line 2057
    array-length v1, p2

    .line 2058
    iget-wide v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSignature:J

    mul-long/2addr v2, v6

    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 2060
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2062
    mul-long/2addr v2, v6

    aget v4, p2, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 2060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2065
    :cond_0
    iput-wide v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSignature:J

    .line 2066
    return-void
.end method

.method private static lowbound([II)I
    .locals 4

    .prologue
    .line 2081
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 2085
    :goto_0
    if-gt v1, v0, :cond_0

    .line 2087
    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 2088
    aget v3, p0, v2

    .line 2090
    if-ne v3, p1, :cond_1

    move v0, v2

    .line 2098
    :cond_0
    return v0

    .line 2092
    :cond_1
    if-ge v3, p1, :cond_2

    .line 2093
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2095
    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 2105
    iput-boolean v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_instrument:Z

    .line 2106
    iput-boolean v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    .line 2107
    iput-boolean v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_ignoreAlreadyInstrumented:Z

    .line 2109
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 2110
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classPackageName:Ljava/lang/String;

    .line 2111
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_className:Ljava/lang/String;

    .line 2112
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSrcFileName:Ljava/lang/String;

    move-object v0, v1

    .line 2113
    check-cast v0, [[[I

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockMetadata:[[[I

    .line 2114
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    .line 2116
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    .line 2117
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    .line 2118
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_registerMethodrefIndex:I

    .line 2119
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_preclinitMethodrefIndex:I

    .line 2120
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classNameConstantIndex:I

    .line 2121
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    .line 2122
    iput v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    .line 2123
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classInstrMethodCount:I

    .line 2124
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    .line 2125
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSignature:J

    .line 2127
    iput v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    .line 2128
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    .line 2129
    iput v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    .line 2130
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockOffsets:[I

    .line 2131
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjOffsets:[I

    .line 2132
    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjValues:[I

    .line 2133
    return-void
.end method

.method private setClassName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2034
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2035
    if-gez v0, :cond_0

    .line 2037
    const-string v0, ""

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classPackageName:Ljava/lang/String;

    .line 2038
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_className:Ljava/lang/String;

    .line 2048
    :goto_0
    return-void

    .line 2045
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classPackageName:Ljava/lang/String;

    .line 2046
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_className:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/vladium/jcd/cls/ClassDef;ZZZLcom/vladium/emma/instr/InstrVisitor$InstrResult;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p5, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_instrumented:Z

    .line 92
    iput-object v1, p5, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    .line 94
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/vladium/emma/instr/InstrVisitor;->reset()V

    .line 102
    iput-object p1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 105
    iput-boolean p3, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_instrument:Z

    .line 106
    iput-boolean p4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    .line 107
    iput-boolean p2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_ignoreAlreadyInstrumented:Z

    move-object v0, v1

    .line 111
    check-cast v0, Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {p0, v0, v1}, Lcom/vladium/emma/instr/InstrVisitor;->visit(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/ClassDef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vladium/emma/instr/InstrVisitor;->setClassName(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/vladium/emma/data/ClassDescriptor;

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_className:Ljava/lang/String;

    iget-wide v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSignature:J

    iget-object v6, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSrcFileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    invoke-direct/range {v1 .. v7}, Lcom/vladium/emma/data/ClassDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Lcom/vladium/emma/data/MethodDescriptor;)V

    iput-object v1, p5, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_descriptor:Lcom/vladium/emma/data/ClassDescriptor;

    .line 120
    :cond_2
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_instrument:Z

    iput-boolean v0, p5, Lcom/vladium/emma/instr/InstrVisitor$InstrResult;->m_instrumented:Z

    goto :goto_0
.end method

.method public visit(Lcom/vladium/jcd/cls/ClassDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 129
    iget-object v6, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 130
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/vladium/jcd/lib/Types;->vmNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v1

    .line 134
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_warningIssued:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/vladium/emma/IAppConstants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_warningIssued:Z

    .line 152
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "EMMA classes appear to be included on the instrumentation"

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "path: this is not a correct way to use EMMA"

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 158
    :cond_1
    const-string v0, "$VRc"

    invoke-virtual {v6, v0}, Lcom/vladium/jcd/cls/ClassDef;->getFields(Ljava/lang/String;)[I

    move-result-object v0

    .line 159
    array-length v0, v0

    if-lez v0, :cond_4

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_instrument:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    .line 164
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_ignoreAlreadyInstrumented:Z

    if-eqz v0, :cond_3

    .line 166
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "visit"

    const-string v2, "skipping instrumented class"

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_2
    :goto_0
    return-object p2

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] appears to be instrumented already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_4
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v8

    .line 184
    const-string v0, "Synthetic"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    .line 195
    const-string v0, "[[Z"

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    iget v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    invoke-direct {v1, v2}, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;-><init>(I)V

    .line 209
    invoke-interface {v0, v1}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 211
    const-string v2, "$VRc"

    const-string v3, "[[Z"

    const/16 v4, 0x1a

    invoke-virtual {v6, v2, v3, v4, v0}, Lcom/vladium/jcd/cls/ClassDef;->addField(Ljava/lang/String;Ljava/lang/String;ILcom/vladium/jcd/cls/IAttributeCollection;)I

    move-result v0

    .line 221
    invoke-virtual {v6, v0}, Lcom/vladium/jcd/cls/ClassDef;->addFieldref(I)I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    .line 227
    const-string v0, "com/vladium/emma/rt/RT"

    .line 228
    const-string v0, "com/vladium/emma/rt/RT"

    invoke-virtual {v6, v0}, Lcom/vladium/jcd/cls/ClassDef;->addClassref(Ljava/lang/String;)I

    move-result v0

    .line 231
    const-string v2, "([[ZLjava/lang/String;J)V"

    .line 232
    const-string v2, "r"

    const-string v3, "([[ZLjava/lang/String;J)V"

    invoke-virtual {v6, v2, v3}, Lcom/vladium/jcd/cls/ClassDef;->addNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 234
    new-instance v3, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;

    invoke-direct {v3, v0, v2}, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;-><init>(II)V

    invoke-interface {v8, v3}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_registerMethodrefIndex:I

    .line 243
    const-string v0, "()[[Z"

    .line 244
    const-string v0, "$VRi"

    const-string v2, "()[[Z"

    invoke-virtual {v6, v0, v2}, Lcom/vladium/jcd/cls/ClassDef;->addNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    new-instance v2, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;

    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getThisClassIndex()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/vladium/jcd/cls/constant/CONSTANT_Methodref_info;-><init>(II)V

    invoke-interface {v8, v2}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_preclinitMethodrefIndex:I

    .line 251
    new-instance v0, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;

    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getThisClass()Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    move-result-object v2

    iget v2, v2, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;->m_name_index:I

    invoke-direct {v0, v2}, Lcom/vladium/jcd/cls/constant/CONSTANT_String_info;-><init>(I)V

    invoke-interface {v8, v0}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v0

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classNameConstantIndex:I

    .line 255
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getMethods()Lcom/vladium/jcd/cls/IMethodCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/emma/instr/InstrVisitor;->visit(Lcom/vladium/jcd/cls/IMethodCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-boolean v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_doSUIDCompensation:Z

    if-eqz v0, :cond_8

    .line 262
    iget v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    .line 264
    :goto_1
    const/4 v0, 0x0

    .line 266
    if-eqz v3, :cond_f

    .line 270
    const-string v0, "serialVersionUID"

    invoke-virtual {v6, v0}, Lcom/vladium/jcd/cls/ClassDef;->getFields(Ljava/lang/String;)[I

    move-result-object v4

    .line 271
    array-length v2, v4

    .line 273
    if-lez v2, :cond_5

    .line 275
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getFields()Lcom/vladium/jcd/cls/IFieldCollection;

    move-result-object v5

    .line 277
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 279
    aget v9, v4, v0

    invoke-interface {v5, v9}, Lcom/vladium/jcd/cls/IFieldCollection;->get(I)Lcom/vladium/jcd/cls/Field_info;

    move-result-object v9

    .line 280
    invoke-virtual {v9}, Lcom/vladium/jcd/cls/Field_info;->getAccessFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x18

    const/16 v10, 0x18

    if-ne v9, v10, :cond_a

    .line 285
    const/4 v3, 0x0

    .line 295
    :cond_5
    if-eqz v3, :cond_d

    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getThisClassIndex()I

    move-result v0

    if-nez v0, :cond_d

    .line 297
    const/4 v4, 0x0

    .line 299
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getInterfaces()Lcom/vladium/jcd/cls/IInterfaceCollection;

    move-result-object v9

    .line 300
    const/4 v0, 0x0

    invoke-interface {v9}, Lcom/vladium/jcd/cls/IInterfaceCollection;->size()I

    move-result v10

    move v5, v0

    :goto_3
    if-ge v5, v10, :cond_e

    .line 302
    invoke-interface {v9, v5}, Lcom/vladium/jcd/cls/IInterfaceCollection;->get(I)I

    move-result v0

    invoke-interface {v8, v0}, Lcom/vladium/jcd/cls/IConstantCollection;->get(I)Lcom/vladium/jcd/cls/constant/CONSTANT_info;

    move-result-object v0

    check-cast v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;

    .line 303
    invoke-virtual {v0, v6}, Lcom/vladium/jcd/cls/constant/CONSTANT_Class_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v11, "java/io/Serializable"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "java/io/Externalizable"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 306
    :cond_6
    const/4 v0, 0x1

    .line 311
    :goto_4
    if-nez v0, :cond_d

    const/4 v0, 0x0

    move v12, v2

    move v2, v0

    move v0, v12

    .line 315
    :goto_5
    if-eqz v2, :cond_8

    .line 317
    if-lez v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] declares a \'serialVersionUID\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "field that is not static and final: this is likely an implementation mistake"

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "and can interfere with EMMA\'s SUID compensation"

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->warning(Ljava/lang/String;)V

    .line 328
    :cond_7
    const-string v0, "J"

    .line 330
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v2

    .line 332
    const-string v0, "ConstantValue"

    const/4 v3, 0x1

    invoke-virtual {v6, v0, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v0

    .line 333
    new-instance v3, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/vladium/jcd/cls/ClassDef;->computeSUID(Z)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;-><init>(J)V

    invoke-interface {v8, v3}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v3

    .line 335
    new-instance v4, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;

    invoke-direct {v4, v0, v3}, Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;-><init>(II)V

    .line 336
    invoke-interface {v2, v4}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 340
    if-nez v1, :cond_c

    new-instance v0, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    iget v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    invoke-direct {v0, v1}, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;-><init>(I)V

    .line 341
    :goto_6
    invoke-interface {v2, v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 344
    const-string v0, "serialVersionUID"

    const-string v1, "J"

    const/16 v3, 0x1a

    invoke-virtual {v6, v0, v1, v3, v2}, Lcom/vladium/jcd/cls/ClassDef;->addField(Ljava/lang/String;Ljava/lang/String;ILcom/vladium/jcd/cls/IAttributeCollection;)I

    .line 350
    :cond_8
    invoke-virtual {v6}, Lcom/vladium/jcd/cls/ClassDef;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vladium/emma/instr/InstrVisitor;->visit(Lcom/vladium/jcd/cls/IAttributeCollection;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 277
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 300
    :cond_b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto :goto_6

    :cond_d
    move v0, v2

    move v2, v3

    goto/16 :goto_5

    :cond_e
    move v0, v4

    goto/16 :goto_4

    :cond_f
    move v2, v3

    goto/16 :goto_5
.end method

.method public visit(Lcom/vladium/jcd/cls/IAttributeCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 696
    invoke-interface {p1, v0}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_0
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/IMethodCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v11

    .line 362
    invoke-interface/range {p1 .. p1}, Lcom/vladium/jcd/cls/IMethodCollection;->size()I

    move-result v12

    .line 363
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    .line 367
    add-int/lit8 v2, v12, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    .line 369
    if-eqz v13, :cond_0

    .line 372
    add-int/lit8 v2, v12, 0x1

    new-array v2, v2, [[[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockMetadata:[[[I

    .line 374
    new-array v2, v12, [Lcom/vladium/emma/data/MethodDescriptor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    .line 380
    :cond_0
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v12, :cond_d

    .line 382
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/vladium/jcd/cls/IMethodCollection;->get(I)Lcom/vladium/jcd/cls/Method_info;

    move-result-object v14

    .line 383
    invoke-virtual {v14, v10}, Lcom/vladium/jcd/cls/Method_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    .line 384
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "synthetic "

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "method #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_1
    const-string v2, "<clinit>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 390
    const/4 v2, 0x0

    .line 392
    if-nez v3, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_excludeSyntheticMethods:Z

    if-eqz v4, :cond_5

    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->isSynthetic()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    const/4 v2, 0x1

    .line 397
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "visit"

    const-string v6, "skipped synthetic method"

    invoke-virtual {v4, v5, v6}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_2
    :goto_2
    if-eqz v2, :cond_6

    .line 408
    if-eqz v13, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    new-instance v2, Lcom/vladium/emma/data/MethodDescriptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    invoke-virtual {v14, v10}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    const/4 v7, 0x0

    check-cast v7, [[I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vladium/emma/data/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V

    aput-object v2, v15, v9

    .line 380
    :cond_3
    :goto_3
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 384
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 399
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_excludeBridgeMethods:Z

    if-eqz v4, :cond_2

    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->isBridge()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    const/4 v2, 0x1

    .line 402
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "visit"

    const-string v6, "skipped bridge method"

    invoke-virtual {v4, v5, v6}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :cond_6
    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->getAccessFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    if-eqz v2, :cond_9

    .line 417
    if-eqz v13, :cond_7

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    new-instance v2, Lcom/vladium/emma/data/MethodDescriptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    invoke-virtual {v14, v10}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    const/4 v7, 0x0

    check-cast v7, [[I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vladium/emma/data/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V

    aput-object v2, v15, v9

    .line 422
    :cond_7
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipped "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "abstract"

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " method"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v2, "native"

    goto :goto_4

    .line 427
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    .line 430
    move-object/from16 v0, p0

    iput v9, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    .line 432
    if-eqz v3, :cond_a

    .line 435
    move-object/from16 v0, p0

    iput v9, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    .line 436
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    const-string v4, "<clinit> method delayed"

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 441
    :cond_a
    invoke-virtual {v14}, Lcom/vladium/jcd/cls/Method_info;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v3

    .line 442
    invoke-interface {v3}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v4

    .line 443
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_b

    .line 445
    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v5

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 449
    :cond_b
    if-eqz v13, :cond_3

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockMetadata:[[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    aget-object v7, v2, v3

    .line 455
    if-nez v7, :cond_c

    const/4 v5, 0x1

    .line 457
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    new-instance v2, Lcom/vladium/emma/data/MethodDescriptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodName:Ljava/lang/String;

    invoke-virtual {v14, v10}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    invoke-direct/range {v2 .. v8}, Lcom/vladium/emma/data/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V

    aput-object v2, v15, v9

    goto/16 :goto_3

    .line 455
    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 470
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    if-ltz v2, :cond_f

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/vladium/jcd/cls/IMethodCollection;->get(I)Lcom/vladium/jcd/cls/Method_info;

    move-result-object v2

    .line 477
    move-object/from16 v0, p0

    iput v12, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classInstrMethodCount:I

    move-object v9, v2

    .line 525
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    .line 526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    .line 528
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/vladium/jcd/cls/Method_info;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "synthetic "

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "method #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": [<clinit>]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_e
    invoke-virtual {v9}, Lcom/vladium/jcd/cls/Method_info;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v3

    .line 531
    invoke-interface {v3}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v4

    .line 532
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_12

    .line 534
    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v5

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 483
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    .line 485
    const-string v2, "Code"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v3

    .line 486
    const-string v2, "<clinit>"

    const/4 v4, 0x1

    invoke-virtual {v10, v2, v4}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v9

    .line 487
    const-string v2, "()V"

    const/4 v4, 0x1

    invoke-virtual {v10, v2, v4}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v14

    .line 492
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v15

    .line 496
    new-instance v2, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/16 v8, -0x4f

    aput-byte v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/vladium/jcd/cls/attribute/AttributeElementFactory;->newExceptionHandlerTable(I)Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;-><init>(III[BLcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;Lcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 502
    invoke-interface {v15, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 506
    new-instance v2, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    invoke-direct {v2, v3}, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;-><init>(I)V

    invoke-interface {v15, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 509
    new-instance v2, Lcom/vladium/jcd/cls/Method_info;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v9, v14, v15}, Lcom/vladium/jcd/cls/Method_info;-><init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 511
    invoke-virtual {v10, v2}, Lcom/vladium/jcd/cls/ClassDef;->addMethod(Lcom/vladium/jcd/cls/Method_info;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    .line 513
    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    const-string v5, "added synthetic <clinit> method"

    invoke-virtual {v3, v4, v5}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_10
    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classInstrMethodCount:I

    move-object v9, v2

    goto/16 :goto_7

    .line 528
    :cond_11
    const-string v2, ""

    goto/16 :goto_8

    .line 542
    :cond_12
    const-string v2, "Code"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v3

    .line 543
    const-string v2, "$VRi"

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v12

    .line 544
    const-string v2, "()[[Z"

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lcom/vladium/jcd/cls/ClassDef;->addCONSTANT_Utf8(Ljava/lang/String;Z)I

    move-result v14

    .line 549
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v15

    .line 553
    new-instance v16, Lcom/vladium/util/ByteArrayOStream;

    const/16 v2, 0x80

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    .line 556
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classInstrMethodCount:I

    .line 564
    move-object/from16 v0, v16

    invoke-static {v0, v10, v5}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 569
    const-string v2, "[[Z"

    invoke-virtual {v10, v2}, Lcom/vladium/jcd/cls/ClassDef;->addClassref(Ljava/lang/String;)I

    move-result v2

    .line 570
    const/16 v6, 0xc5

    ushr-int/lit8 v7, v2, 0x8

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v2, v8}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 578
    const/16 v2, 0x59

    const/16 v6, 0xb3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    ushr-int/lit8 v7, v7, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_coverageFieldrefIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6, v7, v8}, Lcom/vladium/util/ByteArrayOStream;->write4(IIII)V

    .line 589
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v5, :cond_14

    .line 591
    aget v6, v4, v2

    .line 592
    if-lez v6, :cond_13

    .line 595
    const/16 v7, 0x59

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 600
    move-object/from16 v0, v16

    invoke-static {v0, v10, v2}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 605
    move-object/from16 v0, v16

    invoke-static {v0, v10, v6}, Lcom/vladium/jcd/compiler/CodeGen;->push_int_value(Lcom/vladium/util/ByteArrayOStream;Lcom/vladium/jcd/cls/ClassDef;I)V

    .line 610
    const/16 v6, 0xbc

    const/4 v7, 0x4

    const/16 v8, 0x53

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v8}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    .line 589
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 624
    :cond_14
    const/16 v2, 0x59

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classNameConstantIndex:I

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/vladium/jcd/compiler/CodeGen;->push_constant_index(Lcom/vladium/util/ByteArrayOStream;I)V

    .line 632
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_stampIndex:I

    ushr-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_stampIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4, v5}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    .line 638
    const/16 v2, 0xb8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_registerMethodrefIndex:I

    ushr-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_registerMethodrefIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4, v5}, Lcom/vladium/util/ByteArrayOStream;->write3(III)V

    .line 646
    const/16 v2, 0xb0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/vladium/util/ByteArrayOStream;->write(I)V

    .line 651
    new-instance v2, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;

    const/4 v4, 0x5

    const/4 v5, 0x0

    sget-object v6, Lcom/vladium/emma/instr/InstrVisitor;->EMPTY_BYTE_ARRAY:[B

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/vladium/jcd/cls/attribute/AttributeElementFactory;->newExceptionHandlerTable(I)Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/vladium/jcd/cls/ElementFactory;->newAttributeCollection(I)Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;-><init>(III[BLcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;Lcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 657
    invoke-virtual/range {v16 .. v16}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->setCode([BI)V

    .line 659
    invoke-interface {v15, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 663
    new-instance v2, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_syntheticStringIndex:I

    invoke-direct {v2, v3}, Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;-><init>(I)V

    invoke-interface {v15, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->add(Lcom/vladium/jcd/cls/attribute/Attribute_info;)I

    .line 666
    new-instance v2, Lcom/vladium/jcd/cls/Method_info;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v12, v14, v15}, Lcom/vladium/jcd/cls/Method_info;-><init>(IIILcom/vladium/jcd/cls/IAttributeCollection;)V

    .line 667
    invoke-virtual {v10, v2}, Lcom/vladium/jcd/cls/ClassDef;->addMethod(Lcom/vladium/jcd/cls/Method_info;)I

    .line 669
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    const-string v4, "added synthetic pre-<clinit> method"

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_15
    if-eqz v13, :cond_16

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockMetadata:[[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    aget-object v7, v2, v3

    .line 679
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    if-nez v7, :cond_17

    const/4 v2, 0x1

    :goto_b
    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_16

    .line 684
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classMethodDescriptors:[Lcom/vladium/emma/data/MethodDescriptor;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    new-instance v2, Lcom/vladium/emma/data/MethodDescriptor;

    const-string v3, "<clinit>"

    invoke-virtual {v9, v10}, Lcom/vladium/jcd/cls/Method_info;->getDescriptor(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitStatus:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    invoke-direct/range {v2 .. v8}, Lcom/vladium/emma/data/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[[II)V

    aput-object v2, v11, v12

    .line 687
    :cond_16
    return-object p2

    .line 679
    :cond_17
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/BridgeAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1377
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v8

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE3()Z

    move-result v9

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->getCode()[B

    move-result-object v10

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->getCodeSize()I

    move-result v11

    .line 713
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code attribute for method #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    new-instance v12, Lcom/vladium/util/IntSet;

    invoke-direct {v12}, Lcom/vladium/util/IntSet;-><init>()V

    .line 719
    new-instance v13, Lcom/vladium/util/IntIntMap;

    invoke-direct {v13}, Lcom/vladium/util/IntIntMap;-><init>()V

    .line 722
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->getExceptionTable()Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v3

    .line 725
    invoke-interface {v3}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->size()I

    move-result v4

    .line 726
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 728
    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->get(I)Lcom/vladium/jcd/cls/attribute/Exception_info;

    move-result-object v5

    .line 729
    iget v5, v5, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_handler_pc:I

    invoke-virtual {v12, v5}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_1
    new-instance v14, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v14}, Lcom/vladium/util/IntObjectMap;-><init>()V

    .line 737
    const/4 v5, 0x0

    .line 738
    const/4 v4, 0x0

    .line 740
    const/4 v3, 0x0

    .line 741
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6}, Lcom/vladium/util/IntIntMap;->put(II)V

    .line 743
    const/4 v2, 0x0

    move v6, v3

    move v7, v4

    move/from16 v24, v2

    move v2, v5

    move/from16 v5, v24

    :goto_1
    if-ge v5, v11, :cond_9

    .line 745
    aget-byte v3, v10, v5

    and-int/lit16 v15, v3, 0xff

    .line 746
    const/4 v3, 0x0

    .line 755
    if-eqz v2, :cond_2

    .line 758
    invoke-virtual {v12, v5}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 759
    const/4 v2, 0x0

    .line 762
    :cond_2
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 928
    :goto_2
    if-nez v2, :cond_7

    .line 929
    if-eqz v7, :cond_6

    sget-object v2, Lcom/vladium/emma/instr/InstrVisitor;->WIDE_SIZE:[I

    :goto_3
    aget v2, v2, v15

    .line 933
    :goto_4
    add-int v4, v5, v2

    .line 934
    const/16 v2, 0xc4

    if-ne v15, v2, :cond_8

    const/4 v2, 0x1

    .line 936
    :goto_5
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v13, v4, v5}, Lcom/vladium/util/IntIntMap;->put(II)V

    move v6, v5

    move v7, v2

    move v5, v4

    move v2, v3

    .line 938
    goto :goto_1

    .line 782
    :pswitch_1
    add-int/lit8 v2, v5, 0x1

    .line 783
    aget-byte v4, v10, v2

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 785
    add-int/2addr v2, v5

    .line 786
    invoke-virtual {v12, v2}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 788
    new-instance v4, Lcom/vladium/emma/instr/InstrVisitor$IFJUMP2;

    invoke-direct {v4, v15, v2}, Lcom/vladium/emma/instr/InstrVisitor$IFJUMP2;-><init>(II)V

    invoke-virtual {v14, v5, v4}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    const/4 v2, 0x1

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 791
    goto :goto_2

    .line 798
    :pswitch_2
    add-int/lit8 v2, v5, 0x1

    .line 799
    aget-byte v4, v10, v2

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 801
    add-int/2addr v2, v5

    .line 802
    invoke-virtual {v12, v2}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 804
    new-instance v4, Lcom/vladium/emma/instr/InstrVisitor$JUMP2;

    invoke-direct {v4, v15, v2}, Lcom/vladium/emma/instr/InstrVisitor$JUMP2;-><init>(II)V

    invoke-virtual {v14, v5, v4}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 805
    const/4 v2, 0x1

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 807
    goto :goto_2

    .line 812
    :pswitch_3
    add-int/lit8 v2, v5, 0x4

    and-int/lit8 v3, v5, 0x3

    sub-int/2addr v2, v3

    .line 814
    aget-byte v3, v10, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v3

    .line 815
    add-int v3, v5, v4

    invoke-virtual {v12, v3}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 819
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v10, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v3, v3, v16

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v16, v16, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v10, v3

    and-int/lit16 v2, v2, 0xff

    or-int v16, v16, v2

    .line 821
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 822
    add-int/lit8 v2, v16, 0x1

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 823
    const/4 v2, 0x0

    add-int/2addr v4, v5

    aput v4, v18, v2

    .line 825
    const/4 v2, 0x0

    move v4, v3

    :goto_6
    move/from16 v0, v16

    if-ge v2, v0, :cond_3

    .line 829
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v10, v3

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v4, v4, v19

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v4, v4, v19

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v4, v4, v19

    .line 830
    aput v4, v17, v2

    .line 835
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v10, v3

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v4, v4, v19

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v4, v4, v19

    add-int/lit8 v3, v3, 0x1

    aget-byte v19, v10, v3

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v4, v4, v19

    .line 836
    add-int/lit8 v19, v2, 0x1

    add-int v20, v5, v4

    aput v20, v18, v19

    .line 837
    add-int/2addr v4, v5

    invoke-virtual {v12, v4}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 825
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_6

    .line 840
    :cond_3
    new-instance v2, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/vladium/emma/instr/InstrVisitor$LOOKUPSWITCH;-><init>([I[I)V

    invoke-virtual {v14, v5, v2}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 841
    const/4 v3, 0x1

    .line 843
    sub-int v2, v5, v4

    add-int/lit8 v2, v2, -0x1

    .line 845
    goto/16 :goto_2

    .line 850
    :pswitch_4
    add-int/lit8 v2, v5, 0x4

    and-int/lit8 v3, v5, 0x3

    sub-int/2addr v2, v3

    .line 852
    aget-byte v3, v10, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v3

    .line 853
    add-int v3, v5, v4

    invoke-virtual {v12, v3}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 856
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v10, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v3, v3, v16

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v3, v3, v16

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v3, v3, v16

    .line 859
    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v17, v10, v2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v2, v2, 0x1

    aget-byte v17, v10, v2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 v2, v2, 0x1

    aget-byte v17, v10, v2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    .line 861
    sub-int v17, v16, v3

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 862
    const/16 v18, 0x0

    add-int/2addr v4, v5

    aput v4, v17, v18

    move v4, v2

    move v2, v3

    .line 864
    :goto_7
    move/from16 v0, v16

    if-gt v2, v0, :cond_4

    .line 867
    add-int/lit8 v4, v4, 0x1

    aget-byte v18, v10, v4

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v4, v4, 0x1

    aget-byte v19, v10, v4

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v4, v4, 0x1

    aget-byte v19, v10, v4

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v4, v4, 0x1

    aget-byte v19, v10, v4

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    .line 868
    sub-int v19, v2, v3

    add-int/lit8 v19, v19, 0x1

    add-int v20, v5, v18

    aput v20, v17, v19

    .line 869
    add-int v18, v18, v5

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 873
    :cond_4
    new-instance v2, Lcom/vladium/emma/instr/InstrVisitor$TABLESWITCH;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v2, v3, v0, v1}, Lcom/vladium/emma/instr/InstrVisitor$TABLESWITCH;-><init>(II[I)V

    invoke-virtual {v14, v5, v2}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 874
    const/4 v3, 0x1

    .line 876
    sub-int v2, v5, v4

    add-int/lit8 v2, v2, -0x1

    .line 878
    goto/16 :goto_2

    .line 884
    :pswitch_5
    add-int/lit8 v2, v5, 0x1

    .line 886
    aget-byte v4, v10, v2

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v4, v4, v16

    add-int/lit8 v2, v2, 0x1

    aget-byte v16, v10, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v4, v4, v16

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 887
    add-int/2addr v2, v5

    .line 889
    invoke-virtual {v12, v2}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 891
    new-instance v4, Lcom/vladium/emma/instr/InstrVisitor$JUMP4;

    invoke-direct {v4, v15, v2}, Lcom/vladium/emma/instr/InstrVisitor$JUMP4;-><init>(II)V

    invoke-virtual {v14, v5, v4}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    const/4 v2, 0x1

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 894
    goto/16 :goto_2

    .line 899
    :pswitch_6
    add-int/lit8 v2, v5, 0x1

    .line 900
    if-eqz v7, :cond_5

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 902
    :goto_8
    new-instance v4, Lcom/vladium/emma/instr/InstrVisitor$RET;

    invoke-direct {v4, v15, v2}, Lcom/vladium/emma/instr/InstrVisitor$RET;-><init>(II)V

    invoke-virtual {v14, v5, v4}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 903
    const/4 v2, 0x1

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 905
    goto/16 :goto_2

    .line 900
    :cond_5
    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_8

    .line 916
    :pswitch_7
    new-instance v2, Lcom/vladium/emma/instr/InstrVisitor$TERMINATE;

    invoke-direct {v2, v15}, Lcom/vladium/emma/instr/InstrVisitor$TERMINATE;-><init>(I)V

    invoke-virtual {v14, v5, v2}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 917
    const/4 v2, 0x1

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    goto/16 :goto_2

    .line 929
    :cond_6
    sget-object v2, Lcom/vladium/emma/instr/InstrVisitor;->NARROW_SIZE:[I

    goto/16 :goto_3

    .line 931
    :cond_7
    neg-int v2, v2

    goto/16 :goto_4

    .line 934
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 943
    :cond_9
    invoke-virtual {v12}, Lcom/vladium/util/IntSet;->size()I

    move-result v15

    .line 944
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method contains "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " basic blocks"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_a
    new-instance v16, Lcom/vladium/emma/instr/InstrVisitor$BlockList;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/vladium/emma/instr/InstrVisitor$BlockList;-><init>(I)V

    .line 948
    add-int/lit8 v2, v15, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 949
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Lcom/vladium/util/IntSet;->values([II)V

    .line 950
    aput v11, v17, v15

    .line 952
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([I)V

    .line 954
    invoke-virtual {v14}, Lcom/vladium/util/IntObjectMap;->keys()[I

    move-result-object v12

    .line 955
    invoke-static {v12}, Ljava/util/Arrays;->sort([I)V

    .line 957
    new-instance v18, Lcom/vladium/util/IntIntMap;

    move-object/from16 v0, v17

    array-length v2, v0

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/vladium/util/IntIntMap;-><init>(I)V

    .line 959
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    if-eqz v2, :cond_b

    .line 963
    new-array v2, v15, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    .line 964
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockOffsets:[I

    .line 969
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/vladium/emma/instr/InstrVisitor;->consumeSignatureData(I[I)V

    .line 973
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 974
    const/4 v6, 0x0

    .line 976
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v7, v2

    :goto_9
    if-ge v7, v15, :cond_e

    .line 978
    new-instance v20, Lcom/vladium/emma/instr/InstrVisitor$Block;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/vladium/emma/instr/InstrVisitor$Block;-><init>(Lcom/vladium/emma/instr/InstrVisitor$1;)V

    .line 979
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    aget v21, v17, v7

    .line 983
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    .line 984
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/vladium/util/IntIntMap;->put(II)V

    .line 986
    add-int/lit8 v2, v7, 0x1

    aget v22, v17, v2

    .line 987
    const/4 v2, 0x0

    .line 991
    array-length v3, v12

    if-le v3, v4, :cond_24

    .line 993
    aget v23, v12, v4

    .line 994
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 996
    const/4 v3, 0x1

    .line 998
    sub-int v2, v23, v21

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_length:I

    .line 1003
    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/vladium/util/IntIntMap;->get(I[I)Z

    .line 1005
    const/4 v2, 0x0

    aget v2, v19, v2

    add-int/lit8 v5, v2, 0x1

    .line 1007
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vladium/emma/instr/InstrVisitor$Branch;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    .line 1008
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    iput v7, v2, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_parentBlockID:I

    .line 1010
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    .line 1014
    :goto_a
    if-nez v3, :cond_c

    .line 1016
    sub-int v2, v22, v21

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_length:I

    .line 1021
    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/vladium/util/IntIntMap;->get(I[I)Z

    .line 1023
    const/4 v2, 0x0

    aget v2, v19, v2

    .line 1026
    :cond_c
    sub-int v3, v2, v6

    move-object/from16 v0, v20

    iput v3, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_instrCount:I

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockSizes:[I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_instrCount:I

    aput v5, v3, v7

    .line 976
    :cond_d
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v6, v2

    goto/16 :goto_9

    .line 1034
    :cond_e
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_blocks:Ljava/util/List;

    new-array v3, v15, [Lcom/vladium/emma/instr/InstrVisitor$Block;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vladium/emma/instr/InstrVisitor$Block;

    check-cast v2, [Lcom/vladium/emma/instr/InstrVisitor$Block;

    .line 1036
    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v15, :cond_10

    .line 1038
    aget-object v3, v2, v4

    .line 1040
    iget-object v5, v3, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    if-eqz v5, :cond_f

    .line 1042
    iget-object v3, v3, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_branch:Lcom/vladium/emma/instr/InstrVisitor$Branch;

    iget-object v5, v3, Lcom/vladium/emma/instr/InstrVisitor$Branch;->m_targets:[I

    .line 1043
    if-eqz v5, :cond_f

    .line 1045
    const/4 v3, 0x0

    array-length v6, v5

    :goto_c
    if-ge v3, v6, :cond_f

    .line 1052
    aget v7, v5, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/vladium/util/IntIntMap;->get(I[I)Z

    .line 1054
    const/4 v7, 0x0

    aget v7, v19, v7

    aput v7, v5, v3

    .line 1045
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1036
    :cond_f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    .line 1062
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    aput v15, v3, v4

    .line 1066
    if-eqz v8, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    const-string v5, "instrumenting... "

    invoke-virtual {v3, v4, v5}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_11
    move-object/from16 v0, p1

    iget v6, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_locals:I

    .line 1071
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_clinitID:I

    if-ne v3, v4, :cond_12

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {v3}, Lcom/vladium/jcd/cls/ClassDef;->getConstants()Lcom/vladium/jcd/cls/IConstantCollection;

    move-result-object v3

    new-instance v4, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSignature:J

    invoke-direct {v4, v12, v13}, Lcom/vladium/jcd/cls/constant/CONSTANT_Long_info;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/vladium/jcd/cls/IConstantCollection;->add(Lcom/vladium/jcd/cls/constant/CONSTANT_info;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_stampIndex:I

    .line 1077
    new-instance v3, Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/vladium/emma/instr/InstrVisitor$clinitHeader;-><init>(Lcom/vladium/emma/instr/InstrVisitor;I)V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_header:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    .line 1082
    :goto_d
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_header:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    invoke-virtual {v3}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;->maxstack()I

    move-result v7

    .line 1083
    const/4 v4, 0x0

    .line 1085
    const/4 v3, 0x0

    move v5, v3

    :goto_e
    if-ge v5, v15, :cond_13

    .line 1087
    aget-object v3, v2, v5

    .line 1089
    new-instance v12, Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v5}, Lcom/vladium/emma/instr/InstrVisitor$BlockSegment;-><init>(Lcom/vladium/emma/instr/InstrVisitor;II)V

    .line 1090
    iput-object v12, v3, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_insertion:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    .line 1092
    invoke-virtual {v12}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;->maxstack()I

    move-result v3

    .line 1093
    if-le v3, v4, :cond_23

    .line 1085
    :goto_f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_e

    .line 1080
    :cond_12
    new-instance v3, Lcom/vladium/emma/instr/InstrVisitor$methodHeader;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/vladium/emma/instr/InstrVisitor$methodHeader;-><init>(Lcom/vladium/emma/instr/InstrVisitor;I)V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_header:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    goto :goto_d

    .line 1099
    :cond_13
    move-object/from16 v0, p1

    iget v3, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    .line 1101
    move-object/from16 v0, p1

    iget v5, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iput v4, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    .line 1103
    move-object/from16 v0, p1

    iget v4, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    if-le v7, v4, :cond_14

    .line 1104
    move-object/from16 v0, p1

    iput v7, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    .line 1106
    :cond_14
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "visit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "increasing maxstack by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->m_max_stack:I

    sub-int v3, v7, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/vladium/logging/Logger;->trace3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_15
    if-eqz v8, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    const-string v5, "assembling... "

    invoke-virtual {v3, v4, v5}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_16
    shl-int/lit8 v3, v11, 0x1

    .line 1117
    const/16 v4, 0x40

    if-ge v3, v4, :cond_17

    const/16 v3, 0x40

    .line 1119
    :cond_17
    new-instance v4, Lcom/vladium/util/ByteArrayOStream;

    invoke-direct {v4, v3}, Lcom/vladium/util/ByteArrayOStream;-><init>(I)V

    .line 1120
    new-instance v5, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v4}, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;-><init>(Lcom/vladium/emma/instr/InstrVisitor$BlockList;Lcom/vladium/util/ByteArrayOStream;)V

    .line 1123
    new-array v6, v15, [I

    .line 1124
    array-length v3, v6

    new-array v7, v3, [I

    .line 1130
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor$BlockList;->m_header:Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;

    invoke-virtual {v3, v5}, Lcom/vladium/emma/instr/InstrVisitor$CodeSegment;->emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;)V

    .line 1132
    const/4 v3, 0x0

    iget-object v11, v5, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v11}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v11

    aput v11, v7, v3

    .line 1135
    const/4 v3, 0x0

    :goto_10
    if-ge v3, v15, :cond_1a

    .line 1137
    aget-object v11, v2, v3

    .line 1139
    add-int/lit8 v12, v3, 0x1

    if-ge v12, v15, :cond_18

    .line 1141
    add-int/lit8 v12, v3, 0x1

    aget-object v13, v2, v3

    iget v13, v13, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    aget-object v14, v2, v3

    iget v14, v14, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_length:I

    add-int/2addr v13, v14

    aput v13, v6, v12

    .line 1144
    :cond_18
    invoke-virtual {v11, v5, v10}, Lcom/vladium/emma/instr/InstrVisitor$Block;->emit(Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;[B)V

    .line 1147
    add-int/lit8 v11, v3, 0x1

    if-ge v11, v15, :cond_19

    .line 1149
    add-int/lit8 v11, v3, 0x1

    iget-object v12, v5, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_out:Lcom/vladium/util/ByteArrayOStream;

    invoke-virtual {v12}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v12

    add-int/lit8 v13, v3, 0x1

    aget-object v13, v2, v13

    iget v13, v13, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    sub-int/2addr v12, v13

    aput v12, v7, v11

    .line 1135
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1153
    :cond_1a
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjOffsets:[I

    .line 1154
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjValues:[I

    .line 1156
    if-eqz v9, :cond_1d

    .line 1158
    new-instance v10, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jump adjustment map:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v11, Lcom/vladium/emma/instr/InstrVisitor;->EOL:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1159
    const/4 v3, 0x0

    :goto_11
    array-length v11, v6

    if-ge v3, v11, :cond_1c

    .line 1161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": +"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v7, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_1b

    sget-object v11, Lcom/vladium/emma/instr/InstrVisitor;->EOL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1159
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1165
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v11, "visit"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Lcom/vladium/logging/Logger;->trace3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_1d
    invoke-virtual {v4}, Lcom/vladium/util/ByteArrayOStream;->getByteArray()[B

    move-result-object v10

    .line 1169
    invoke-virtual {v4}, Lcom/vladium/util/ByteArrayOStream;->size()I

    move-result v11

    .line 1174
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v4, "visit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "backpatching "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v5, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_backpatchQueue:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " ip(s)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/vladium/logging/Logger;->trace3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_1e
    iget-object v3, v5, Lcom/vladium/emma/instr/InstrVisitor$EmitCtx;->m_backpatchQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1178
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    .line 1179
    const/4 v4, 0x1

    aget v4, v3, v4

    .line 1183
    const/4 v9, 0x3

    aget v9, v3, v9

    aget-object v9, v2, v9

    iget v9, v9, Lcom/vladium/emma/instr/InstrVisitor$Block;->m_first:I

    const/4 v12, 0x2

    aget v12, v3, v12

    sub-int/2addr v9, v12

    .line 1186
    const/4 v12, 0x0

    aget v3, v3, v12

    packed-switch v3, :pswitch_data_1

    :pswitch_8
    goto :goto_12

    :pswitch_9
    move v3, v4

    .line 1197
    :goto_13
    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 1198
    int-to-byte v3, v9

    aput-byte v3, v10, v4

    goto :goto_12

    .line 1190
    :pswitch_a
    add-int/lit8 v12, v4, 0x1

    ushr-int/lit8 v3, v9, 0x18

    int-to-byte v3, v3

    aput-byte v3, v10, v4

    .line 1191
    add-int/lit8 v3, v12, 0x1

    ushr-int/lit8 v4, v9, 0x10

    int-to-byte v4, v4

    aput-byte v4, v10, v12

    goto :goto_13

    .line 1203
    :cond_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->setCode([BI)V

    .line 1204
    if-eqz v8, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v3, "visit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method assembled into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->getExceptionTable()Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;

    move-result-object v3

    .line 1209
    const/4 v2, 0x0

    :goto_14
    invoke-interface {v3}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->size()I

    move-result v4

    if-ge v2, v4, :cond_21

    .line 1211
    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/attribute/IExceptionHandlerTable;->get(I)Lcom/vladium/jcd/cls/attribute/Exception_info;

    move-result-object v4

    .line 1213
    iget v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_start_pc:I

    invoke-static {v6, v5}, Lcom/vladium/emma/instr/InstrVisitor;->lowbound([II)I

    move-result v5

    .line 1214
    iget v8, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_start_pc:I

    aget v5, v7, v5

    add-int/2addr v5, v8

    iput v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_start_pc:I

    .line 1216
    iget v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_end_pc:I

    invoke-static {v6, v5}, Lcom/vladium/emma/instr/InstrVisitor;->lowbound([II)I

    move-result v5

    .line 1217
    iget v8, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_end_pc:I

    aget v5, v7, v5

    add-int/2addr v5, v8

    iput v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_end_pc:I

    .line 1219
    iget v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_handler_pc:I

    invoke-static {v6, v5}, Lcom/vladium/emma/instr/InstrVisitor;->lowbound([II)I

    move-result v5

    .line 1220
    iget v8, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_handler_pc:I

    aget v5, v7, v5

    add-int/2addr v5, v8

    iput v5, v4, Lcom/vladium/jcd/cls/attribute/Exception_info;->m_handler_pc:I

    .line 1209
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1225
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/jcd/cls/attribute/CodeAttribute_info;->getAttributes()Lcom/vladium/jcd/cls/IAttributeCollection;

    move-result-object v3

    .line 1226
    invoke-interface {v3}, Lcom/vladium/jcd/cls/IAttributeCollection;->size()I

    move-result v4

    .line 1227
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v4, :cond_22

    .line 1229
    invoke-interface {v3, v2}, Lcom/vladium/jcd/cls/IAttributeCollection;->get(I)Lcom/vladium/jcd/cls/attribute/Attribute_info;

    move-result-object v5

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/vladium/jcd/cls/attribute/Attribute_info;->accept(Lcom/vladium/jcd/cls/attribute/IAttributeVisitor;Ljava/lang/Object;)V

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1233
    :cond_22
    return-object p2

    :cond_23
    move v3, v4

    goto/16 :goto_f

    :cond_24
    move v3, v2

    move v2, v6

    goto/16 :goto_a

    .line 762
    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1186
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/ConstantValueAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1360
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/ExceptionsAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1355
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/GenericAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1387
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/InnerClassesAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1382
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v0

    .line 1240
    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v1}, Lcom/vladium/logging/Logger;->atTRACE3()Z

    move-result v4

    .line 1241
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v2, "visit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {p1, v5}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->getName(Lcom/vladium/jcd/cls/ClassDef;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->size()I

    move-result v5

    .line 1245
    iget-boolean v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_metadata:Z

    if-eqz v1, :cond_b

    .line 1247
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "visit"

    const-string v2, "processing line number table for metadata..."

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockCounts:[I

    iget v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    aget v6, v0, v1

    .line 1252
    new-array v7, v6, [[I

    .line 1257
    if-nez v5, :cond_2

    .line 1259
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_7

    .line 1260
    sget-object v1, Lcom/vladium/emma/instr/InstrVisitor;->EMPTY_INT_ARRAY:[I

    aput-object v1, v7, v0

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1266
    :cond_2
    invoke-virtual {p1}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->size()I

    move-result v0

    new-array v8, v0, [Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    .line 1268
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    .line 1270
    invoke-virtual {p1, v0}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->get(I)Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    move-result-object v1

    .line 1271
    aput-object v1, v8, v0

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1274
    :cond_3
    sget-object v0, Lcom/vladium/emma/instr/InstrVisitor;->LINE_NUMBER_COMPARATOR:Lcom/vladium/emma/instr/InstrVisitor$LineNumberComparator;

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1278
    iget-object v9, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodBlockOffsets:[I

    .line 1280
    const/4 v0, 0x0

    aget-object v3, v8, v0

    .line 1281
    const/4 v2, 0x0

    .line 1284
    iget v0, v3, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    iput v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodFirstLine:I

    .line 1286
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v13, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v13

    :goto_2
    if-ge v3, v6, :cond_7

    .line 1288
    new-instance v10, Lcom/vladium/util/IntSet;

    invoke-direct {v10}, Lcom/vladium/util/IntSet;-><init>()V

    .line 1290
    if-eqz v1, :cond_4

    iget v11, v2, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    aget v12, v9, v3

    if-le v11, v12, :cond_4

    .line 1292
    iget v11, v1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    invoke-virtual {v10, v11}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 1295
    :cond_4
    :goto_3
    iget v11, v2, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    add-int/lit8 v12, v3, 0x1

    aget v12, v9, v12

    if-ge v11, v12, :cond_5

    .line 1297
    iget v11, v2, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_line_number:I

    invoke-virtual {v10, v11}, Lcom/vladium/util/IntSet;->add(I)Z

    .line 1299
    add-int/lit8 v11, v5, -0x1

    if-ne v0, v11, :cond_6

    .line 1308
    :cond_5
    invoke-virtual {v10}, Lcom/vladium/util/IntSet;->values()[I

    move-result-object v10

    aput-object v10, v7, v3

    .line 1286
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1304
    :cond_6
    add-int/lit8 v0, v0, 0x1

    aget-object v1, v8, v0

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_3

    .line 1312
    :cond_7
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classBlockMetadata:[[[I

    iget v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    aput-object v7, v0, v1

    .line 1314
    if-eqz v4, :cond_b

    .line 1316
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block-line map for method #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1317
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v6, :cond_a

    .line 1319
    sget-object v0, Lcom/vladium/emma/instr/InstrVisitor;->EOL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    block "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1322
    aget-object v3, v7, v1

    .line 1323
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_9

    .line 1325
    if-eqz v0, :cond_8

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    :cond_8
    aget v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1317
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1330
    :cond_a
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_log:Lcom/vladium/logging/Logger;

    const-string v1, "visit"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vladium/logging/Logger;->trace3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_b
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v5, :cond_c

    .line 1336
    invoke-virtual {p1, v0}, Lcom/vladium/jcd/cls/attribute/LineNumberTableAttribute_info;->get(I)Lcom/vladium/jcd/cls/attribute/LineNumber_info;

    move-result-object v1

    .line 1341
    iget-object v2, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjOffsets:[I

    iget v3, v1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    invoke-static {v2, v3}, Lcom/vladium/emma/instr/InstrVisitor;->lowbound([II)I

    move-result v2

    .line 1342
    iget v3, v1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    iget-object v4, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_methodJumpAdjValues:[I

    aget v2, v4, v2

    add-int/2addr v2, v3

    iput v2, v1, Lcom/vladium/jcd/cls/attribute/LineNumber_info;->m_start_pc:I

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1345
    :cond_c
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/SourceFileAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_cls:Lcom/vladium/jcd/cls/ClassDef;

    invoke-virtual {p1, v0}, Lcom/vladium/jcd/cls/attribute/SourceFileAttribute_info;->getSourceFile(Lcom/vladium/jcd/cls/ClassDef;)Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;

    move-result-object v0

    iget-object v0, v0, Lcom/vladium/jcd/cls/constant/CONSTANT_Utf8_info;->m_value:Ljava/lang/String;

    iput-object v0, p0, Lcom/vladium/emma/instr/InstrVisitor;->m_classSrcFileName:Ljava/lang/String;

    .line 1367
    return-object p2
.end method

.method public visit(Lcom/vladium/jcd/cls/attribute/SyntheticAttribute_info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1372
    return-object p2
.end method
