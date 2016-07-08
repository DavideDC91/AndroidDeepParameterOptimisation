.class public final Lcom/vladium/emma/report/html/ReportGenerator;
.super Lcom/vladium/emma/report/AbstractReportGenerator;
.source "ReportGenerator.java"

# interfaces
.implements Lcom/vladium/emma/IAppErrorCodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_SETS:[J

.field private static final CSS:Ljava/lang/String; = " TABLE,TD,TH {border-style:solid; border-color:black;} TD,TH {background:white;margin:0;line-height:100%;padding-left:0.5em;padding-right:0.5em;} TD {border-width:0 1px 0 0;} TH {border-width:1px 1px 1px 0;} TR TD.h {color:red;} TABLE {border-spacing:0; border-collapse:collapse;border-width:0 0 1px 1px;} P,H1,H2,H3,TH {font-family:verdana,arial,sans-serif;font-size:10pt;} TD {font-family:courier,monospace;font-size:10pt;} TABLE.hdft {border-spacing:0;border-collapse:collapse;border-style:none;} TABLE.hdft TH,TABLE.hdft TD {border-style:none;line-height:normal;} TABLE.hdft TH.tl,TABLE.hdft TD.tl {background:#6699CC;color:white;} TABLE.hdft TD.nv {background:#6633DD;color:white;} .nv A:link {color:white;} .nv A:visited {color:white;} .nv A:active {color:yellow;} TABLE.hdft A:link {color:white;} TABLE.hdft A:visited {color:white;} TABLE.hdft A:active {color:yellow;} .in {color:#356085;} TABLE.s TD {padding-left:0.25em;padding-right:0.25em;} TABLE.s TD.l {padding-left:0.25em;padding-right:0.25em;text-align:right;background:#F0F0F0;} TABLE.s TR.z TD {background:#FF9999;} TABLE.s TR.p TD {background:#FFFF88;} TABLE.s TR.c TD {background:#CCFFCC;} A:link {color:#0000EE;text-decoration:none;} A:visited {color:#0000EE;text-decoration:none;} A:hover {color:#0000EE;text-decoration:underline;} TABLE.cn {border-width:0 0 1px 0;} TABLE.s {border-width:1px 0 1px 1px;} TD.h {color:red;border-width:0 1px 0 0;} TD.f {border-width:0 1px 0 1px;} TD.hf {color:red;border-width:0 1px 0 1px;} TH.f {border-width:1px 1px 1px 1px;} TR.cis TD {background:#F0F0F0;} TR.cis TD {border-width:1px 1px 1px 0;} TR.cis TD.h {color:red;border-width:1px 1px 1px 0;} TR.cis TD.f {border-width:1px 1px 1px 1px;} TR.cis TD.hf {color:red;border-width:1px 1px 1px 1px;} TD.b {border-style:none;background:transparent;line-height:50%;}  TD.bt {border-width:1px 0 0 0;background:transparent;line-height:50%;} TR.o TD {background:#F0F0F0;}TABLE.it {border-style:none;}TABLE.it TD,TABLE.it TH {border-style:none;}"

.field private static final CSS_BLANK:Ljava/lang/String; = "b"

.field private static final CSS_BOTTOM:Ljava/lang/String; = "bt"

.field private static final CSS_CLASS_ITEM_SPECIAL:Ljava/lang/String; = "cis"

.field private static final CSS_CLS_NOLEFT:Ljava/lang/String; = "cn"

.field private static final CSS_COVERAGE_COMPLETE:Ljava/lang/String; = "c"

.field private static final CSS_COVERAGE_PARTIAL:Ljava/lang/String; = "p"

.field private static final CSS_COVERAGE_ZERO:Ljava/lang/String; = "z"

.field private static final CSS_DATA:Ljava/lang/String; = ""

.field private static final CSS_DATA_FIRST:Ljava/lang/String; = "f"

.field private static final CSS_DATA_HIGHLIGHT:Ljava/lang/String; = "h"

.field private static final CSS_DATA_HIGHLIGHT_FIRST:Ljava/lang/String; = "hf"

.field private static final CSS_HEADER:Ljava/lang/String; = ""

.field private static final CSS_HEADER_FIRST:Ljava/lang/String; = "f"

.field private static final CSS_HEADER_FOOTER:Ljava/lang/String; = "hdft"

.field private static final CSS_INVISIBLE_TABLE:Ljava/lang/String; = "it"

.field private static final CSS_ITEM_NAME:Ljava/lang/String; = "in"

.field private static final CSS_LINENUM:Ljava/lang/String; = "l"

.field private static final CSS_NAV:Ljava/lang/String; = "nv"

.field private static final CSS_ODDROW:Ljava/lang/String; = "o"

.field private static final CSS_SOURCE:Ljava/lang/String; = "s"

.field private static final CSS_TITLE:Ljava/lang/String; = "tl"

.field private static final DARKER_BACKGROUND:Ljava/lang/String; = "#F0F0F0"

.field private static final FILE_EXTENSION:Ljava/lang/String; = ".html"

.field private static final IO_BUF_SIZE:I = 0x8000

.field private static final LEFT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

.field private static final MAX_DISPLAY_NAME_LENGTH:I = 0x50

.field private static final NAV_BACKGROUND:Ljava/lang/String; = "#6633DD"

.field private static final NESTED_ITEMS_PARENT_DIR:Ljava/io/File;

.field private static final NESTED_ITEMS_PARENT_DIRNAME:Ljava/lang/String; = "_files"

.field private static final NESTING:[[I

.field private static final REPORT_HEADER_TITLE:Ljava/lang/String; = "EMMA Coverage Report"

.field private static final RIGHT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

.field private static final SRC_LINE_OFFSET:I = 0x4

.field private static final TITLE_BACKGROUND:Ljava/lang/String; = "#6699CC"

.field private static final TYPE:Ljava/lang/String; = "html"

.field private static final USE_LINE_COVERAGE_TOOLTIPS:Z = true


# instance fields
.field private final m_fieldPosition:Ljava/text/FieldPosition;

.field private m_footerBottom:Lcom/vladium/emma/report/html/doc/IContent;

.field private final m_format:Ljava/text/DecimalFormat;

.field private m_pageTitle:Lcom/vladium/emma/report/html/doc/IContent;

.field private m_queue:Ljava/util/LinkedList;

.field private m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 1491
    new-instance v1, Lcom/vladium/emma/report/html/doc/Text;

    const-string v2, "["

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->LEFT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1492
    new-instance v1, Lcom/vladium/emma/report/html/doc/Text;

    const-string v2, "]"

    invoke-direct {v1, v2, v0}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->RIGHT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1604
    new-instance v1, Ljava/io/File;

    const-string v2, "_files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTED_ITEMS_PARENT_DIR:Ljava/io/File;

    .line 1614
    invoke-static {}, Lcom/vladium/emma/report/IItemMetadata$Factory;->getAllTypes()[Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    .line 1616
    array-length v2, v1

    new-array v2, v2, [J

    sput-object v2, Lcom/vladium/emma/report/html/ReportGenerator;->ATTRIBUTE_SETS:[J

    .line 1617
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1619
    sget-object v2, Lcom/vladium/emma/report/html/ReportGenerator;->ATTRIBUTE_SETS:[J

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v3

    aget-object v4, v1, v0

    invoke-interface {v4}, Lcom/vladium/emma/report/IItemMetadata;->getAttributeIDs()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1622
    :cond_0
    filled-new-array {v8, v8}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    .line 1624
    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    .line 1625
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v1, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v2

    aput v7, v1, v2

    .line 1626
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v1, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v2

    aput v7, v1, v2

    .line 1627
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v0, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aput v7, v0, v1

    .line 1629
    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    .line 1630
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v0, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aput v6, v0, v1

    .line 1632
    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    .line 1633
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v0, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aput v6, v0, v1

    .line 1635
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    .line 1636
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    aget-object v0, v1, v0

    invoke-static {}, Lcom/vladium/emma/report/AllItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aput v6, v0, v1

    .line 1637
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;-><init>()V

    .line 67
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_format:Ljava/text/DecimalFormat;

    .line 68
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_fieldPosition:Ljava/text/FieldPosition;

    .line 70
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_format:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 71
    return-void
.end method

.method private addClassItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1033
    invoke-virtual {p3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 1034
    if-eqz p2, :cond_0

    const-string v0, "o"

    invoke-interface {v4, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1036
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 1038
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_5

    .line 1040
    aget v2, p4, v0

    .line 1041
    iget-object v6, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-interface {p1, v2, v6}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v6

    .line 1043
    if-eqz v6, :cond_4

    .line 1045
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v7

    .line 1048
    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    .line 1050
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1051
    invoke-interface {v6, p1, v5}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 1053
    invoke-static {v5}, Lcom/vladium/emma/report/html/ReportGenerator;->trimForDisplay(Ljava/lang/StringBuffer;)V

    .line 1055
    if-eqz p6, :cond_1

    const-string v2, "#"

    invoke-virtual {v2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1057
    :goto_1
    new-instance v6, Lcom/vladium/emma/report/html/doc/HyperRef;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v2, v8, v3}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    move v2, v1

    .line 1071
    :goto_2
    invoke-static {v0, v2}, Lcom/vladium/emma/report/html/ReportGenerator;->dataCellStyle(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1038
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, p5

    .line 1055
    goto :goto_1

    .line 1061
    :cond_2
    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v8, v8, v2

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v2, v8, v2

    invoke-interface {v6, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 1063
    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1064
    invoke-interface {v6, p1, v5}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 1066
    invoke-static {v5}, Lcom/vladium/emma/report/html/ReportGenerator;->trimForDisplay(Ljava/lang/StringBuffer;)V

    .line 1068
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    goto :goto_2

    :cond_3
    move v2, v1

    .line 1061
    goto :goto_4

    .line 1077
    :cond_4
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    .line 1078
    const-string v6, " "

    invoke-interface {v2, v6, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 1079
    invoke-static {v0, v1}, Lcom/vladium/emma/report/html/ReportGenerator;->dataCellStyle(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    goto :goto_3

    .line 1082
    :cond_5
    return-void
.end method

.method private addClassRow(Lcom/vladium/emma/report/ClassItem;ILcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V
    .locals 10

    .prologue
    .line 967
    invoke-virtual {p3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v3

    .line 969
    invoke-virtual {p3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 970
    const-string v0, "cis"

    invoke-interface {v4, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 972
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 974
    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_6

    .line 976
    aget v6, p4, v0

    .line 977
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v1

    invoke-virtual {p1, v6, v1}, Lcom/vladium/emma/report/ClassItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v7

    .line 979
    if-eqz v7, :cond_5

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 982
    invoke-interface {v7, p1, v5}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 984
    invoke-interface {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    .line 985
    if-nez p2, :cond_0

    const-string v1, "b"

    :goto_1
    invoke-interface {v2, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 986
    const-string v1, " "

    const/4 v8, 0x1

    invoke-interface {v2, v1, v8}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 988
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v8

    .line 990
    const/4 v2, 0x0

    .line 991
    if-nez v6, :cond_3

    .line 993
    if-eqz p5, :cond_2

    .line 995
    if-eqz p6, :cond_1

    const-string v1, "#"

    invoke-virtual {v1, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    :goto_2
    new-instance v6, Lcom/vladium/emma/report/html/doc/Text;

    const-string v7, "class "

    const/4 v9, 0x1

    invoke-direct {v6, v7, v9}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v8, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 998
    new-instance v6, Lcom/vladium/emma/report/html/doc/HyperRef;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-direct {v6, v1, v7, v9}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    move v1, v2

    .line 1012
    :goto_3
    invoke-static {v0, v1}, Lcom/vladium/emma/report/html/ReportGenerator;->dataCellStyle(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 974
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :cond_0
    const-string v1, "bt"

    goto :goto_1

    :cond_1
    move-object v1, p5

    .line 995
    goto :goto_2

    .line 1002
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-interface {v8, v1, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    move v1, v2

    goto :goto_3

    .line 1007
    :cond_3
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v1, v1, v6

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v1, v1, v6

    invoke-interface {v7, p1, v1}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 1009
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v8, v2, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    goto :goto_3

    .line 1007
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 1016
    :cond_5
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    .line 1017
    const-string v2, " "

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 1018
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vladium/emma/report/html/ReportGenerator;->dataCellStyle(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    goto :goto_4

    .line 1021
    :cond_6
    return-void
.end method

.method private addHeaderRow(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/html/doc/HTMLTable;[I)[I
    .locals 7

    .prologue
    .line 872
    invoke-virtual {p2}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 875
    new-instance v2, Lcom/vladium/util/IntVector;

    array-length v0, p3

    invoke-direct {v2, v0}, Lcom/vladium/util/IntVector;-><init>(I)V

    .line 877
    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 879
    aget v3, p3, v0

    .line 880
    iget-object v4, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v4

    .line 882
    if-eqz v4, :cond_0

    .line 884
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v5

    .line 886
    invoke-interface {v4}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 887
    invoke-static {v0}, Lcom/vladium/emma/report/html/ReportGenerator;->headerCellStyle(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 888
    invoke-virtual {v2, v3}, Lcom/vladium/util/IntVector;->add(I)V

    .line 877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {v2}, Lcom/vladium/util/IntVector;->values()[I

    move-result-object v0

    return-object v0
.end method

.method private addItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 909
    invoke-virtual {p3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 910
    if-eqz p2, :cond_0

    const-string v0, "o"

    invoke-interface {v4, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 912
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 914
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_6

    .line 916
    aget v2, p4, v0

    .line 917
    iget-object v6, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-interface {p1, v2, v6}, Lcom/vladium/emma/report/IItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v6

    .line 919
    if-eqz v6, :cond_5

    .line 921
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v7

    .line 923
    if-eqz p5, :cond_3

    if-nez v2, :cond_3

    .line 925
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 926
    invoke-interface {v6, p1, v5}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 928
    invoke-static {v5}, Lcom/vladium/emma/report/html/ReportGenerator;->trimForDisplay(Ljava/lang/StringBuffer;)V

    .line 930
    if-eqz p6, :cond_2

    const-string v2, "#"

    invoke-virtual {v2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 932
    :goto_1
    new-instance v6, Lcom/vladium/emma/report/html/doc/HyperRef;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v2, v8, v3}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 914
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p5

    .line 930
    goto :goto_1

    .line 936
    :cond_3
    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v8, v8, v2

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v2, v8, v2

    invoke-interface {v6, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 938
    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 939
    invoke-interface {v6, p1, v5}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 941
    invoke-static {v5}, Lcom/vladium/emma/report/html/ReportGenerator;->trimForDisplay(Ljava/lang/StringBuffer;)V

    .line 943
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 944
    if-eqz v2, :cond_1

    const-string v2, "h"

    invoke-interface {v7, v2}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    goto :goto_2

    :cond_4
    move v2, v1

    .line 936
    goto :goto_3

    .line 951
    :cond_5
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    .line 952
    const-string v6, " "

    invoke-interface {v2, v6, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    goto :goto_2

    .line 955
    :cond_6
    return-void
.end method

.method private static addLineAnchorID(ILjava/lang/String;Lcom/vladium/util/IntObjectMap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    if-lez p0, :cond_1

    .line 1291
    invoke-virtual {p2, p0}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1292
    if-eqz v0, :cond_0

    .line 1302
    :goto_0
    return-object v0

    .line 1296
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/vladium/util/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 1298
    goto :goto_0

    .line 1302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addPageFooter(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 819
    new-instance v2, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const-string v1, "0"

    invoke-direct {v2, v0, v3, v3, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "hdft"

    invoke-virtual {v2, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 824
    invoke-virtual {v2}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v0

    .line 826
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v3

    .line 827
    const-string v0, "nv"

    invoke-interface {v3, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 829
    array-length v0, p3

    if-le v0, v7, :cond_0

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 830
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 832
    sget-object v4, Lcom/vladium/emma/report/html/ReportGenerator;->LEFT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 834
    aget-object v4, p3, v1

    invoke-interface {v4}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 835
    aget-object v5, p3, v1

    invoke-direct {p0, p2, v5}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemHREF(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v5

    .line 836
    new-instance v6, Lcom/vladium/emma/report/html/doc/HyperRef;

    invoke-direct {v6, v5, v4, v7}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 838
    sget-object v4, Lcom/vladium/emma/report/html/ReportGenerator;->RIGHT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 829
    :cond_0
    array-length v0, p3

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {v2}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v0

    .line 847
    const-string v1, "tl"

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 849
    invoke-direct {p0}, Lcom/vladium/emma/report/html/ReportGenerator;->getFooterBottom()Lcom/vladium/emma/report/html/doc/IContent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 852
    new-instance v0, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v0}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 854
    sget-object v1, Lcom/vladium/emma/report/html/doc/Tag;->P:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v1}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/html/doc/ElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 855
    invoke-virtual {v0, v2}, Lcom/vladium/emma/report/html/doc/ElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 857
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->setFooter(Lcom/vladium/emma/report/html/doc/IContent;)V

    .line 859
    return-object v2
.end method

.method private addPageHeader(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 781
    new-instance v2, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const-string v1, "0"

    invoke-direct {v2, v0, v3, v3, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "hdft"

    invoke-virtual {v2, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 785
    invoke-direct {p0, v2}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageHeaderTitleRow(Lcom/vladium/emma/report/html/doc/HTMLTable;)V

    .line 789
    invoke-virtual {v2}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v3

    .line 792
    const-string v0, "nv"

    invoke-interface {v3, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 794
    array-length v0, p3

    if-le v0, v7, :cond_0

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 795
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 797
    sget-object v4, Lcom/vladium/emma/report/html/ReportGenerator;->LEFT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 799
    aget-object v4, p3, v1

    invoke-interface {v4}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 800
    aget-object v5, p3, v1

    invoke-direct {p0, p2, v5}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemHREF(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v5

    .line 801
    new-instance v6, Lcom/vladium/emma/report/html/doc/HyperRef;

    invoke-direct {v6, v5, v4, v7}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 803
    sget-object v4, Lcom/vladium/emma/report/html/ReportGenerator;->RIGHT_BRACKET:Lcom/vladium/emma/report/html/doc/IContent;

    invoke-interface {v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 794
    :cond_0
    array-length v0, p3

    goto :goto_0

    .line 807
    :cond_1
    invoke-virtual {p1, v2}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->setHeader(Lcom/vladium/emma/report/html/doc/IContent;)V

    .line 809
    return-object v2
.end method

.method private addPageHeaderTitleRow(Lcom/vladium/emma/report/html/doc/HTMLTable;)V
    .locals 2

    .prologue
    .line 1396
    invoke-virtual {p1}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v0

    .line 1398
    invoke-interface {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v0

    .line 1399
    const-string v1, "tl"

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1400
    invoke-direct {p0}, Lcom/vladium/emma/report/html/ReportGenerator;->getPageTitle()Lcom/vladium/emma/report/html/doc/IContent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1401
    return-void
.end method

.method private createPage(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/HTMLDocument;
    .locals 2

    .prologue
    .line 766
    new-instance v0, Lcom/vladium/emma/report/html/doc/HTMLDocument;

    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/vladium/emma/report/html/doc/HTMLDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v1, " TABLE,TD,TH {border-style:solid; border-color:black;} TD,TH {background:white;margin:0;line-height:100%;padding-left:0.5em;padding-right:0.5em;} TD {border-width:0 1px 0 0;} TH {border-width:1px 1px 1px 0;} TR TD.h {color:red;} TABLE {border-spacing:0; border-collapse:collapse;border-width:0 0 1px 1px;} P,H1,H2,H3,TH {font-family:verdana,arial,sans-serif;font-size:10pt;} TD {font-family:courier,monospace;font-size:10pt;} TABLE.hdft {border-spacing:0;border-collapse:collapse;border-style:none;} TABLE.hdft TH,TABLE.hdft TD {border-style:none;line-height:normal;} TABLE.hdft TH.tl,TABLE.hdft TD.tl {background:#6699CC;color:white;} TABLE.hdft TD.nv {background:#6633DD;color:white;} .nv A:link {color:white;} .nv A:visited {color:white;} .nv A:active {color:yellow;} TABLE.hdft A:link {color:white;} TABLE.hdft A:visited {color:white;} TABLE.hdft A:active {color:yellow;} .in {color:#356085;} TABLE.s TD {padding-left:0.25em;padding-right:0.25em;} TABLE.s TD.l {padding-left:0.25em;padding-right:0.25em;text-align:right;background:#F0F0F0;} TABLE.s TR.z TD {background:#FF9999;} TABLE.s TR.p TD {background:#FFFF88;} TABLE.s TR.c TD {background:#CCFFCC;} A:link {color:#0000EE;text-decoration:none;} A:visited {color:#0000EE;text-decoration:none;} A:hover {color:#0000EE;text-decoration:underline;} TABLE.cn {border-width:0 0 1px 0;} TABLE.s {border-width:1px 0 1px 1px;} TD.h {color:red;border-width:0 1px 0 0;} TD.f {border-width:0 1px 0 1px;} TD.hf {color:red;border-width:0 1px 0 1px;} TH.f {border-width:1px 1px 1px 1px;} TR.cis TD {background:#F0F0F0;} TR.cis TD {border-width:1px 1px 1px 0;} TR.cis TD.h {color:red;border-width:1px 1px 1px 0;} TR.cis TD.f {border-width:1px 1px 1px 1px;} TR.cis TD.hf {color:red;border-width:1px 1px 1px 1px;} TD.b {border-style:none;background:transparent;line-height:50%;}  TD.bt {border-width:1px 0 0 0;background:transparent;line-height:50%;} TR.o TD {background:#F0F0F0;}TABLE.it {border-style:none;}TABLE.it TD,TABLE.it TH {border-style:none;}"

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addStyle(Ljava/lang/String;)V

    .line 769
    return-object v0
.end method

.method private static dataCellStyle(IZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    if-nez p0, :cond_1

    .line 1468
    if-eqz p1, :cond_0

    const-string v0, "hf"

    .line 1470
    :goto_0
    return-object v0

    .line 1468
    :cond_0
    const-string v0, "f"

    goto :goto_0

    .line 1470
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "h"

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private embedSrcFile(Lcom/vladium/emma/report/SrcFileItem;Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/util/IntObjectMap;Lcom/vladium/emma/report/SourcePathCache;)V
    .locals 22

    .prologue
    .line 1125
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/emma/report/SrcFileItem;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1129
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/emma/report/SrcFileItem;->getParent()Lcom/vladium/emma/report/IItem;

    move-result-object v4

    check-cast v4, Lcom/vladium/emma/report/PackageItem;

    invoke-virtual {v4}, Lcom/vladium/emma/report/PackageItem;->getVMName()Ljava/lang/String;

    move-result-object v11

    .line 1131
    const/4 v4, 0x0

    .line 1133
    new-instance v12, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v5, "100%"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "0"

    invoke-direct {v12, v5, v6, v7, v8}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    if-eqz p4, :cond_4

    .line 1137
    const-string v5, "s"

    invoke-virtual {v12, v5}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1138
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v10}, Lcom/vladium/emma/report/SourcePathCache;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1140
    if-eqz v6, :cond_4

    .line 1142
    const/4 v5, 0x0

    .line 1145
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const v6, 0x8000

    invoke-direct {v7, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1147
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_hasLineNumberInfo:Z

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v14

    .line 1150
    const/4 v5, 0x0

    .line 1151
    const/4 v4, 0x0

    .line 1154
    if-eqz v13, :cond_a

    .line 1156
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/emma/report/SrcFileItem;->getLineCoverage()Lcom/vladium/util/IntObjectMap;

    move-result-object v5

    .line 1157
    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    const-string v6, "null: lineCoverageMap"

    invoke-static {v4, v6}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 1159
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v5

    move-object v5, v4

    .line 1162
    :goto_1
    const/4 v9, 0x1

    .line 1163
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1165
    invoke-virtual {v12}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v15

    .line 1166
    invoke-interface {v15}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v16

    .line 1167
    const-string v4, "l"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1169
    if-eqz p3, :cond_6

    .line 1171
    const/4 v4, 0x4

    if-ge v9, v4, :cond_2

    move v4, v9

    .line 1173
    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1174
    if-eqz v4, :cond_3

    .line 1176
    sget-object v17, Lcom/vladium/emma/report/html/doc/Tag;->A:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static/range {v17 .. v17}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v17

    .line 1178
    invoke-interface/range {v17 .. v17}, Lcom/vladium/emma/report/html/doc/IElement;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v18

    sget-object v19, Lcom/vladium/emma/report/html/doc/Attribute;->NAME:Lcom/vladium/emma/report/html/doc/Attribute;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 1180
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 1182
    invoke-interface/range {v16 .. v17}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1194
    :goto_4
    invoke-interface {v15}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v17

    .line 1195
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    move-object v4, v8

    :goto_5
    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v8}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 1197
    if-eqz v13, :cond_0

    .line 1199
    invoke-virtual {v6, v9}, Lcom/vladium/util/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;

    .line 1201
    if-eqz v4, :cond_0

    .line 1203
    iget v8, v4, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageStatus:I

    packed-switch v8, :pswitch_data_0

    .line 1252
    const/4 v8, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid line coverage status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v4, v4, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageStatus:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/vladium/util/asserts/$assert;->ASSERT(ZLjava/lang/String;)V

    .line 1163
    :cond_0
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1157
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1171
    :cond_2
    add-int/lit8 v4, v9, 0x4

    goto :goto_3

    .line 1186
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v4, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1261
    :catch_0
    move-exception v4

    move-object v5, v7

    .line 1263
    :goto_7
    :try_start_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1264
    const/4 v4, 0x0

    .line 1268
    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1274
    :cond_4
    :goto_8
    if-nez v4, :cond_5

    .line 1276
    const-string v4, "it"

    invoke-virtual {v12, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1278
    invoke-virtual {v12}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 1279
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[source file \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11, v10}, Lcom/vladium/util/Descriptors;->combineVMName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not found in sourcepath]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 1282
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1283
    return-void

    .line 1191
    :cond_6
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v4, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 1268
    :catchall_0
    move-exception v4

    :goto_9
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1269
    :cond_7
    :goto_a
    throw v4

    .line 1195
    :cond_8
    :try_start_6
    const-string v4, " "

    goto/16 :goto_5

    .line 1206
    :pswitch_0
    const-string v4, "z"

    invoke-interface {v15, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    goto :goto_6

    .line 1211
    :pswitch_1
    const-string v8, "p"

    invoke-interface {v15, v8}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 1215
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1217
    iget-object v4, v4, Lcom/vladium/emma/report/SrcFileItem$LineCoverageData;->m_coverageRatio:[[I

    aget-object v4, v4, v14

    .line 1219
    const/4 v8, 0x0

    aget v8, v4, v8

    .line 1220
    const/4 v15, 0x1

    aget v4, v4, v15

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_format:Ljava/text/DecimalFormat;

    int-to-double v0, v4

    move-wide/from16 v18, v0

    int-to-double v0, v8

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_fieldPosition:Ljava/text/FieldPosition;

    move-object/from16 v20, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v5, v2}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1224
    const-string v15, " line coverage ("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1225
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1226
    const-string v4, " out of "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1227
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1229
    packed-switch v14, :pswitch_data_1

    .line 1242
    :goto_b
    invoke-interface/range {v16 .. v16}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v4

    sget-object v8, Lcom/vladium/emma/report/html/doc/Attribute;->TITLE:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v8, v15}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    .line 1243
    invoke-interface/range {v17 .. v17}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->getAttributes()Lcom/vladium/emma/report/html/doc/AttributeSet;

    move-result-object v4

    sget-object v8, Lcom/vladium/emma/report/html/doc/Attribute;->TITLE:Lcom/vladium/emma/report/html/doc/Attribute;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v8, v15}, Lcom/vladium/emma/report/html/doc/AttributeSet;->set(Lcom/vladium/emma/report/html/doc/Attribute;Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/AttributeSet;

    goto/16 :goto_6

    .line 1232
    :pswitch_2
    const-string v4, " basic blocks)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 1236
    :pswitch_3
    const-string v4, " instructions)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 1249
    :pswitch_4
    const-string v4, "c"

    invoke-interface {v15, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 1259
    :cond_9
    const/4 v4, 0x1

    .line 1268
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v5

    goto/16 :goto_8

    :catch_2
    move-exception v5

    goto/16 :goto_8

    :catch_3
    move-exception v5

    goto/16 :goto_a

    :catchall_1
    move-exception v4

    move-object v7, v5

    goto/16 :goto_9

    :catchall_2
    move-exception v4

    move-object v7, v5

    goto/16 :goto_9

    .line 1261
    :catch_4
    move-exception v4

    goto/16 :goto_7

    :cond_a
    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_1

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1229
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFooterBottom()Lcom/vladium/emma/report/html/doc/IContent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1380
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_footerBottom:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1381
    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v0}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 1385
    new-instance v1, Lcom/vladium/emma/report/html/doc/HyperRef;

    const-string v2, "this private build is unsupported"

    const-string v3, "EMMA 0.0.0 (unsupported private build)"

    invoke-direct {v1, v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1386
    new-instance v1, Lcom/vladium/emma/report/html/doc/Text;

    const-string v2, " (C) Vladimir Roubtsov"

    invoke-direct {v1, v2, v4}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1388
    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_footerBottom:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1391
    :cond_0
    return-object v0
.end method

.method private static getItemFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1417
    if-nez p0, :cond_0

    .line 1418
    new-instance v0, Ljava/io/File;

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getItemHREF(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/IItem;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1333
    instance-of v0, p2, Lcom/vladium/emma/report/AllItem;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1340
    :goto_0
    if-nez p1, :cond_2

    .line 1353
    :cond_0
    :goto_1
    return-object v0

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-static {p2}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1344
    :cond_2
    sget-object v1, Lcom/vladium/emma/report/html/ReportGenerator;->NESTING:[[I

    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p2}, Lcom/vladium/emma/report/IItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v2

    aget v1, v1, v2

    .line 1345
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1346
    const-string v1, "_files"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1347
    :cond_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1348
    const-string v1, "../"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1425
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1427
    :goto_0
    if-eqz p0, :cond_0

    .line 1429
    invoke-interface {p0}, Lcom/vladium/emma/report/IItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1430
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1427
    invoke-interface {p0}, Lcom/vladium/emma/report/IItem;->getParent()Lcom/vladium/emma/report/IItem;

    move-result-object p0

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPageTitle()Lcom/vladium/emma/report/html/doc/IContent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1359
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_pageTitle:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1360
    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v0}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 1364
    new-instance v1, Lcom/vladium/emma/report/html/doc/HyperRef;

    const-string v2, "this private build is unsupported"

    const-string v3, "EMMA"

    invoke-direct {v1, v2, v3, v6}, Lcom/vladium/emma/report/html/doc/HyperRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1366
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " Coverage Report (generated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1367
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1368
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1370
    new-instance v2, Lcom/vladium/emma/report/html/doc/Text;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 1372
    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_pageTitle:Lcom/vladium/emma/report/html/doc/IContent;

    .line 1375
    :cond_0
    return-object v0
.end method

.method private getParentPath(Lcom/vladium/emma/report/IItem;)[Lcom/vladium/emma/report/IItem;
    .locals 4

    .prologue
    .line 1310
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1312
    :goto_0
    if-eqz p1, :cond_0

    .line 1314
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-interface {p1}, Lcom/vladium/emma/report/IItem;->getParent()Lcom/vladium/emma/report/IItem;

    move-result-object p1

    goto :goto_0

    .line 1317
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/vladium/emma/report/IItem;

    .line 1318
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 1319
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    aput-object v0, v2, v1

    .line 1319
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1324
    :cond_1
    return-object v2
.end method

.method private static headerCellStyle(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1475
    if-nez p0, :cond_0

    const-string v0, "f"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static openOutFile(Ljava/io/File;Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/HTMLWriter;
    .locals 3

    .prologue
    .line 1441
    if-eqz p2, :cond_0

    .line 1443
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1444
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1447
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1462
    new-instance v1, Lcom/vladium/emma/report/html/doc/HTMLWriter;

    invoke-direct {v1, v0}, Lcom/vladium/emma/report/html/doc/HTMLWriter;-><init>(Ljava/io/Writer;)V

    return-object v1

    .line 1449
    :catch_0
    move-exception v0

    .line 1452
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1456
    :catch_1
    move-exception v0

    .line 1459
    new-instance v1, Lcom/vladium/emma/EMMARuntimeException;

    invoke-direct {v1, v0}, Lcom/vladium/emma/EMMARuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private srcFileAvailable(Lcom/vladium/emma/report/SrcFileItem;Lcom/vladium/emma/report/SourcePathCache;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1087
    if-nez p2, :cond_0

    .line 1097
    :goto_0
    return v1

    .line 1091
    :cond_0
    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {p1}, Lcom/vladium/emma/report/SrcFileItem;->getParent()Lcom/vladium/emma/report/IItem;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/PackageItem;

    invoke-virtual {v0}, Lcom/vladium/emma/report/PackageItem;->getVMName()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {p2, v0, v2}, Lcom/vladium/emma/report/SourcePathCache;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static trimForDisplay(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 1407
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1408
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1410
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 127
    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    .line 129
    invoke-super {p0}, Lcom/vladium/emma/report/AbstractReportGenerator;->cleanup()V

    .line 130
    return-void
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "html"

    return-object v0
.end method

.method public process(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vladium/emma/EMMARuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vladium/emma/report/html/ReportGenerator;->initialize(Lcom/vladium/emma/data/IMetaData;Lcom/vladium/emma/data/ICoverageData;Lcom/vladium/emma/report/SourcePathCache;Lcom/vladium/util/IProperties;)V

    .line 87
    iput-object v5, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_pageTitle:Lcom/vladium/emma/report/html/doc/IContent;

    .line 88
    iput-object v5, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_footerBottom:Lcom/vladium/emma/report/html/doc/IContent;

    .line 90
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "user.dir"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/vladium/util/Property;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "coverage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v1, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutDir(Ljava/io/File;)V

    .line 97
    :cond_1
    const-wide/16 v0, 0x0

    .line 98
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v4

    .line 100
    if-eqz v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 103
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    .line 104
    new-instance v0, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-interface {p1}, Lcom/vladium/emma/data/IMetaData;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    .line 106
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_view:Lcom/vladium/emma/report/IReportDataView;

    invoke-interface {v1}, Lcom/vladium/emma/report/IReportDataView;->getRoot()Lcom/vladium/emma/report/IItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/report/IItem;

    .line 110
    invoke-interface {v0, p0, v5}, Lcom/vladium/emma/report/IItem;->accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_2
    iput-object v5, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    .line 116
    if-eqz v4, :cond_3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iget-object v4, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    const-string v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vladium/emma/report/html/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] report generated in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    return-void

    :cond_4
    move-wide v2, v0

    goto :goto_0
.end method

.method public visit(Lcom/vladium/emma/report/AllItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutFile()Ljava/io/File;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v2, "index"

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2, v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->setOutFile(Ljava/io/File;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vladium/emma/report/html/ReportGenerator;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] report to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/logging/Logger;->info(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/vladium/emma/report/html/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/HTMLWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v9

    .line 154
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "EMMA Coverage Report"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, " (generated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/vladium/emma/EMMAProperties;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 162
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->createPage(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/HTMLDocument;

    move-result-object v10

    .line 169
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getParentPath(Lcom/vladium/emma/report/IItem;)[Lcom/vladium/emma/report/IItem;

    move-result-object v0

    .line 171
    invoke-direct {p0, v10, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageHeader(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 172
    invoke-direct {p0, v10, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageFooter(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 177
    const/4 v0, 0x1

    const-string v1, "OVERALL COVERAGE SUMMARY"

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 184
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v5

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v9

    if-ge v1, v0, :cond_3

    .line 188
    aget v0, v9, v1

    .line 189
    iget-object v6, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Lcom/vladium/emma/report/AllItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v6

    .line 191
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v8

    .line 192
    invoke-interface {v6}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 194
    if-eqz v6, :cond_1

    .line 196
    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v8, v8, v0

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v0, v8, v0

    invoke-interface {v6, p1, v0}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 198
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 199
    invoke-interface {v6, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 201
    invoke-interface {v5}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v6

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    invoke-interface {v6, v8, v11}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 203
    if-eqz v0, :cond_1

    const-string v0, "h"

    invoke-interface {v6, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 186
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v10, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 211
    const/4 v0, 0x2

    const-string v1, "OVERALL STATS SUMMARY"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "it"

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 216
    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    const-string v3, "total packages:"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 218
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vladium/emma/report/AllItem;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 220
    iget-boolean v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_srcView:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_hasSrcFileInfo:Z

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    const-string v3, "total executable files:"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 224
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 227
    :cond_4
    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 228
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    const-string v3, "total classes:"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 229
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 230
    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    const-string v3, "total methods:"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 232
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 234
    iget-boolean v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_srcView:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_hasSrcFileInfo:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_hasLineNumberInfo:Z

    if-eqz v1, :cond_5

    .line 236
    invoke-virtual {v0}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v1

    .line 237
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v2

    const-string v3, "total executable lines:"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 238
    invoke-interface {v1}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/vladium/emma/report/AllItem;->getAggregate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 270
    :cond_5
    invoke-virtual {v10, v0}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 272
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/vladium/emma/report/AllItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    move v8, v0

    .line 276
    :goto_2
    const/4 v0, 0x2

    const-string v1, "COVERAGE BREAKDOWN BY PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "0"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v4, 0x0

    .line 282
    const/4 v2, 0x1

    .line 283
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/PackageItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 284
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/AllItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 286
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/IItem;

    .line 288
    if-nez v4, :cond_6

    .line 291
    invoke-direct {p0, v1, v3, v9}, Lcom/vladium/emma/report/html/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/html/doc/HTMLTable;[I)[I

    move-result-object v4

    .line 295
    :cond_6
    const/4 v5, 0x0

    .line 296
    if-eqz v8, :cond_7

    .line 298
    invoke-direct {p0, p1, v1}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemHREF(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v5

    .line 300
    :cond_7
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vladium/emma/report/html/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V

    .line 302
    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 284
    :cond_8
    if-nez v2, :cond_a

    const/4 v0, 0x1

    :goto_4
    move v2, v0

    goto :goto_3

    .line 272
    :cond_9
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    .line 284
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 305
    :cond_b
    invoke-virtual {v10, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 308
    invoke-virtual {v10, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 309
    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 317
    :cond_c
    return-object p2

    .line 313
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 314
    :cond_d
    throw v0

    .line 313
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_5
.end method

.method public visit(Lcom/vladium/emma/report/ClassItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 619
    :try_start_0
    sget-object v0, Lcom/vladium/emma/report/html/ReportGenerator;->NESTED_ITEMS_PARENT_DIR:Ljava/io/File;

    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-static {p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 622
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/vladium/emma/report/html/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/HTMLWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 624
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v8

    .line 625
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 628
    const-string v0, "EMMA Coverage Report"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->createPage(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/HTMLDocument;

    move-result-object v9

    .line 630
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getParentPath(Lcom/vladium/emma/report/IItem;)[Lcom/vladium/emma/report/IItem;

    move-result-object v0

    .line 632
    invoke-direct {p0, v9, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageHeader(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 633
    invoke-direct {p0, v9, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageFooter(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 640
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->SPAN:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 641
    invoke-virtual {p1}, Lcom/vladium/emma/report/ClassItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 642
    const-string v1, "in"

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/IElement;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 644
    new-instance v1, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v1}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 645
    new-instance v3, Lcom/vladium/emma/report/html/doc/Text;

    const-string v4, "COVERAGE SUMMARY FOR CLASS ["

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 646
    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 647
    new-instance v0, Lcom/vladium/emma/report/html/doc/Text;

    const-string v3, "]"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 649
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILcom/vladium/emma/report/html/doc/IContent;Ljava/lang/String;)V

    .line 652
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 657
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v5

    .line 659
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v8

    if-ge v1, v0, :cond_2

    .line 661
    aget v0, v8, v1

    .line 662
    iget-object v6, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Lcom/vladium/emma/report/ClassItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v6

    .line 664
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v10

    .line 665
    invoke-interface {v6}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 667
    if-eqz v6, :cond_0

    .line 669
    iget-object v10, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v10, v10, v0

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v0, v10, v0

    invoke-interface {v6, p1, v0}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 671
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 672
    invoke-interface {v6, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 674
    invoke-interface {v5}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v6

    .line 675
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 676
    if-eqz v0, :cond_0

    const-string v0, "h"

    invoke-interface {v6, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 659
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 680
    :cond_2
    invoke-virtual {v9, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 685
    const/4 v0, 0x2

    const-string v1, "COVERAGE BREAKDOWN BY METHOD"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "0"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v4, 0x0

    .line 691
    const/4 v2, 0x1

    .line 692
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    aget-object v0, v0, v1

    .line 693
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/ClassItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 695
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/MethodItem;

    .line 697
    if-nez v4, :cond_3

    .line 700
    invoke-direct {p0, v1, v3, v8}, Lcom/vladium/emma/report/html/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/html/doc/HTMLTable;[I)[I

    move-result-object v4

    .line 703
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vladium/emma/report/html/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V

    .line 693
    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 706
    :cond_5
    invoke-virtual {v9, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 709
    invoke-virtual {v9, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 710
    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 714
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 718
    :cond_6
    return-object p2

    .line 714
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 715
    :cond_7
    throw v0

    .line 714
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_4
.end method

.method public visit(Lcom/vladium/emma/report/PackageItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_log:Lcom/vladium/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  report: processing package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vladium/logging/Logger;->verbose(Ljava/lang/String;)V

    .line 327
    :cond_0
    sget-object v0, Lcom/vladium/emma/report/html/ReportGenerator;->NESTED_ITEMS_PARENT_DIR:Ljava/io/File;

    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-static {p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 329
    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v2}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/vladium/emma/report/html/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/HTMLWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v9

    .line 332
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    const-string v0, "EMMA Coverage Report"

    invoke-direct {p0, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->createPage(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/HTMLDocument;

    move-result-object v10

    .line 337
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getParentPath(Lcom/vladium/emma/report/IItem;)[Lcom/vladium/emma/report/IItem;

    move-result-object v0

    .line 339
    invoke-direct {p0, v10, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageHeader(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 340
    invoke-direct {p0, v10, p1, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageFooter(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 346
    sget-object v0, Lcom/vladium/emma/report/html/doc/Tag;->SPAN:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v0}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 348
    const-string v1, "in"

    invoke-interface {v0, v1}, Lcom/vladium/emma/report/html/doc/IElement;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 350
    new-instance v1, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v1}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 351
    new-instance v3, Lcom/vladium/emma/report/html/doc/Text;

    const-string v4, "COVERAGE SUMMARY FOR PACKAGE ["

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 352
    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 353
    new-instance v0, Lcom/vladium/emma/report/html/doc/Text;

    const-string v3, "]"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 355
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILcom/vladium/emma/report/html/doc/IContent;Ljava/lang/String;)V

    .line 358
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v4

    .line 363
    invoke-virtual {v3}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v5

    .line 365
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v9

    if-ge v1, v0, :cond_3

    .line 367
    aget v0, v9, v1

    .line 368
    iget-object v6, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Lcom/vladium/emma/report/PackageItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v6

    .line 370
    invoke-interface {v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v8

    .line 371
    invoke-interface {v6}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 373
    if-eqz v6, :cond_1

    .line 375
    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v8, v8, v0

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v0, v8, v0

    invoke-interface {v6, p1, v0}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 377
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 378
    invoke-interface {v6, p1, v2}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 380
    invoke-interface {v5}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v6

    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    invoke-interface {v6, v8, v11}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 382
    if-eqz v0, :cond_1

    const-string v0, "h"

    invoke-interface {v6, v0}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 365
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 386
    :cond_3
    invoke-virtual {v10, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 388
    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v0}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/vladium/emma/report/PackageItem;->getMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v1

    invoke-interface {v1}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    move v8, v0

    .line 392
    :goto_2
    iget-boolean v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_8

    const-string v0, "COVERAGE BREAKDOWN BY SOURCE FILE"

    .line 393
    :goto_3
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v0, v2}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v3, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v0, "100%"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "0"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v4, 0x0

    .line 399
    const/4 v2, 0x1

    .line 400
    iget-object v1, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    iget-boolean v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_srcView:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/vladium/emma/report/SrcFileItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    :goto_4
    aget-object v0, v1, v0

    .line 401
    invoke-virtual {p1, v0}, Lcom/vladium/emma/report/PackageItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vladium/emma/report/IItem;

    .line 405
    if-nez v4, :cond_4

    .line 408
    invoke-direct {p0, v1, v3, v9}, Lcom/vladium/emma/report/html/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/html/doc/HTMLTable;[I)[I

    move-result-object v4

    .line 412
    :cond_4
    const/4 v5, 0x0

    .line 413
    if-eqz v8, :cond_5

    .line 415
    invoke-direct {p0, p1, v1}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemHREF(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v5

    .line 417
    :cond_5
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vladium/emma/report/html/ReportGenerator;->addItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V

    .line 419
    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/vladium/emma/report/html/ReportGenerator;->m_queue:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 401
    :cond_6
    if-nez v2, :cond_a

    const/4 v0, 0x1

    :goto_6
    move v2, v0

    goto :goto_5

    .line 388
    :cond_7
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    .line 392
    :cond_8
    const-string v0, "COVERAGE BREAKDOWN BY CLASS"

    goto :goto_3

    .line 400
    :cond_9
    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v0

    goto :goto_4

    .line 401
    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    .line 422
    :cond_b
    invoke-virtual {v10, v3}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 425
    invoke-virtual {v10, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 426
    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 434
    :cond_c
    return-object p2

    .line 430
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 431
    :cond_d
    throw v0

    .line 430
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_7
.end method

.method public visit(Lcom/vladium/emma/report/SrcFileItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .prologue
    .line 441
    const/4 v5, 0x0

    .line 444
    :try_start_0
    sget-object v4, Lcom/vladium/emma/report/html/ReportGenerator;->NESTED_ITEMS_PARENT_DIR:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_reportIDNamespace:Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-static/range {p1 .. p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/vladium/util/Files;->newFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v6}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getOutEncoding()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/vladium/emma/report/html/ReportGenerator;->openOutFile(Ljava/io/File;Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/HTMLWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 448
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getColumnOrder()[I

    move-result-object v22

    .line 449
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 452
    const-string v4, "EMMA Coverage Report"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vladium/emma/report/html/ReportGenerator;->createPage(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/HTMLDocument;

    move-result-object v23

    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/vladium/emma/report/html/ReportGenerator;->getParentPath(Lcom/vladium/emma/report/IItem;)[Lcom/vladium/emma/report/IItem;

    move-result-object v4

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageHeader(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/vladium/emma/report/html/ReportGenerator;->addPageFooter(Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/emma/report/IItem;[Lcom/vladium/emma/report/IItem;)Lcom/vladium/emma/report/html/doc/IElement;

    .line 463
    sget-object v4, Lcom/vladium/emma/report/html/doc/Tag;->SPAN:Lcom/vladium/emma/report/html/doc/Tag;

    invoke-static {v4}, Lcom/vladium/emma/report/html/doc/IElement$Factory;->create(Lcom/vladium/emma/report/html/doc/Tag;)Lcom/vladium/emma/report/html/doc/IElement;

    move-result-object v4

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/vladium/emma/report/SrcFileItem;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7}, Lcom/vladium/emma/report/html/doc/IElement;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 465
    const-string v5, "in"

    invoke-interface {v4, v5}, Lcom/vladium/emma/report/html/doc/IElement;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 467
    new-instance v5, Lcom/vladium/emma/report/html/doc/ElementList;

    invoke-direct {v5}, Lcom/vladium/emma/report/html/doc/ElementList;-><init>()V

    .line 468
    new-instance v7, Lcom/vladium/emma/report/html/doc/Text;

    const-string v8, "COVERAGE SUMMARY FOR SOURCE FILE ["

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v5, v7}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 469
    invoke-interface {v5, v4}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 470
    new-instance v4, Lcom/vladium/emma/report/html/doc/Text;

    const-string v7, "]"

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Lcom/vladium/emma/report/html/doc/Text;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v5, v4}, Lcom/vladium/emma/report/html/doc/IElementList;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 472
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILcom/vladium/emma/report/html/doc/IContent;Ljava/lang/String;)V

    .line 475
    new-instance v7, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v4, "100%"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v9, "0"

    invoke-direct {v7, v4, v5, v8, v9}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newTitleRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v8

    .line 480
    invoke-virtual {v7}, Lcom/vladium/emma/report/html/doc/HTMLTable;->newRow()Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;

    move-result-object v9

    .line 482
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    move-object/from16 v0, v22

    array-length v4, v0

    if-ge v5, v4, :cond_2

    .line 484
    aget v4, v22, v5

    .line 485
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v10}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getUnitsType()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10}, Lcom/vladium/emma/report/SrcFileItem;->getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;

    move-result-object v10

    .line 487
    invoke-interface {v8}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v11

    .line 488
    invoke-interface {v10}, Lcom/vladium/emma/report/IItemAttribute;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 490
    if-eqz v10, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v11, v11, v4

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_metrics:[I

    aget v4, v11, v4

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v4}, Lcom/vladium/emma/report/IItemAttribute;->passes(Lcom/vladium/emma/report/IItem;I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 494
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 495
    move-object/from16 v0, p1

    invoke-interface {v10, v0, v6}, Lcom/vladium/emma/report/IItemAttribute;->format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V

    .line 497
    invoke-interface {v9}, Lcom/vladium/emma/report/html/doc/HTMLTable$IRow;->newCell()Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;

    move-result-object v10

    .line 498
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setText(Ljava/lang/String;Z)Lcom/vladium/emma/report/html/doc/IElement;

    .line 499
    if-eqz v4, :cond_0

    const-string v4, "h"

    invoke-interface {v10, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable$ICell;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 482
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 492
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 503
    :cond_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_settings:Lcom/vladium/emma/report/ReportProperties$ParsedProperties;

    invoke-virtual {v4}, Lcom/vladium/emma/report/ReportProperties$ParsedProperties;->getDepth()I

    move-result v4

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v5

    invoke-interface {v5}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v5

    if-le v4, v5, :cond_6

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 506
    :goto_2
    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/vladium/emma/report/html/ReportGenerator;->srcFileAvailable(Lcom/vladium/emma/report/SrcFileItem;Lcom/vladium/emma/report/SourcePathCache;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    .line 507
    :goto_3
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_hasLineNumberInfo:Z

    if-eqz v4, :cond_8

    const/4 v10, 0x1

    .line 509
    :goto_4
    if-eqz v10, :cond_9

    new-instance v4, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;

    invoke-direct {v4}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;-><init>()V

    move-object/from16 v20, v4

    .line 513
    :goto_5
    const/4 v4, 0x2

    const-string v6, "COVERAGE BREAKDOWN BY CLASS AND METHOD"

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addH(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    if-eqz v5, :cond_a

    new-instance v4, Lcom/vladium/util/IntObjectMap;

    invoke-direct {v4}, Lcom/vladium/util/IntObjectMap;-><init>()V

    move-object/from16 v19, v4

    .line 516
    :goto_6
    new-instance v7, Lcom/vladium/emma/report/html/doc/HTMLTable;

    const-string v4, "100%"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "0"

    invoke-direct {v7, v4, v5, v6, v8}, Lcom/vladium/emma/report/html/doc/HTMLTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v4, "cn"

    invoke-virtual {v7, v4}, Lcom/vladium/emma/report/html/doc/HTMLTable;->setClass(Ljava/lang/String;)Lcom/vladium/emma/report/html/doc/ISimpleElement;

    .line 521
    const/4 v8, 0x0

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/ClassItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v5

    invoke-interface {v5}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v5

    aget-object v4, v4, v5

    .line 524
    const/4 v6, 0x0

    .line 525
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/vladium/emma/report/SrcFileItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 527
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vladium/emma/report/ClassItem;

    .line 529
    if-nez v8, :cond_3

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v7, v1}, Lcom/vladium/emma/report/html/ReportGenerator;->addHeaderRow(Lcom/vladium/emma/report/IItem;Lcom/vladium/emma/report/html/doc/HTMLTable;[I)[I

    move-result-object v8

    .line 535
    :cond_3
    const/4 v9, 0x0

    .line 538
    if-eqz v10, :cond_4

    .line 546
    invoke-static {v5}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-virtual {v5}, Lcom/vladium/emma/report/ClassItem;->getFirstLine()I

    move-result v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v9, v4, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addLineAnchorID(ILjava/lang/String;Lcom/vladium/util/IntObjectMap;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    move-object/from16 v4, p0

    .line 551
    invoke-direct/range {v4 .. v10}, Lcom/vladium/emma/report/html/ReportGenerator;->addClassRow(Lcom/vladium/emma/report/ClassItem;ILcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V

    .line 559
    const/4 v13, 0x0

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_typeSortComparators:[Lcom/vladium/emma/report/ItemComparator;

    invoke-static {}, Lcom/vladium/emma/report/MethodItem;->getTypeMetadata()Lcom/vladium/emma/report/IItemMetadata;

    move-result-object v9

    invoke-interface {v9}, Lcom/vladium/emma/report/IItemMetadata;->getTypeID()I

    move-result v9

    aget-object v4, v4, v9

    .line 561
    invoke-virtual {v5, v4}, Lcom/vladium/emma/report/ClassItem;->getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 563
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vladium/emma/report/MethodItem;

    .line 565
    const/16 v16, 0x0

    .line 567
    if-eqz v10, :cond_5

    .line 575
    invoke-static {v12}, Lcom/vladium/emma/report/html/ReportGenerator;->getItemKey(Lcom/vladium/emma/report/IItem;)Ljava/lang/String;

    move-result-object v4

    .line 577
    invoke-virtual {v12}, Lcom/vladium/emma/report/MethodItem;->getFirstLine()I

    move-result v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/vladium/emma/report/html/ReportGenerator$IDGenerator;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v9, v4, v0}, Lcom/vladium/emma/report/html/ReportGenerator;->addLineAnchorID(ILjava/lang/String;Lcom/vladium/util/IntObjectMap;)Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v11, p0

    move-object v14, v7

    move-object v15, v8

    move/from16 v17, v10

    .line 580
    invoke-direct/range {v11 .. v17}, Lcom/vladium/emma/report/html/ReportGenerator;->addClassItemRow(Lcom/vladium/emma/report/IItem;ZLcom/vladium/emma/report/html/doc/HTMLTable;[ILjava/lang/String;Z)V

    .line 561
    if-nez v13, :cond_b

    const/4 v4, 0x1

    :goto_9
    move v13, v4

    goto :goto_8

    .line 505
    :cond_6
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_2

    .line 506
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    .line 507
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 509
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 515
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v19, v4

    goto/16 :goto_6

    .line 561
    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    .line 525
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 584
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->add(Lcom/vladium/emma/report/html/doc/IContent;)Lcom/vladium/emma/report/html/doc/IElementList;

    .line 589
    if-eqz v21, :cond_e

    .line 592
    invoke-virtual/range {v23 .. v23}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->addEmptyP()V

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vladium/emma/report/html/ReportGenerator;->m_cache:Lcom/vladium/emma/report/SourcePathCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vladium/emma/report/html/ReportGenerator;->embedSrcFile(Lcom/vladium/emma/report/SrcFileItem;Lcom/vladium/emma/report/html/doc/HTMLDocument;Lcom/vladium/util/IntObjectMap;Lcom/vladium/emma/report/SourcePathCache;)V

    .line 600
    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vladium/emma/report/html/doc/HTMLDocument;->emit(Lcom/vladium/emma/report/html/doc/HTMLWriter;)V

    .line 601
    invoke-virtual/range {v18 .. v18}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 605
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 609
    :cond_f
    return-object p2

    .line 605
    :catchall_0
    move-exception v4

    :goto_a
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/vladium/emma/report/html/doc/HTMLWriter;->close()V

    .line 606
    :cond_10
    throw v4

    .line 605
    :catchall_1
    move-exception v4

    move-object/from16 v5, v18

    goto :goto_a
.end method
