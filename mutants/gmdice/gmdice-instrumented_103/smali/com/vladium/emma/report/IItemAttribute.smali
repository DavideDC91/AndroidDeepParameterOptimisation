.class public interface abstract Lcom/vladium/emma/report/IItemAttribute;
.super Ljava/lang/Object;
.source "IItemAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/IItemAttribute$1;,
        Lcom/vladium/emma/report/IItemAttribute$Factory;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_BLOCK_COVERAGE_ID:I = 0x3

.field public static final ATTRIBUTE_CLASS_COVERAGE_ID:I = 0x1

.field public static final ATTRIBUTE_LINE_COVERAGE_ID:I = 0x4

.field public static final ATTRIBUTE_METHOD_COVERAGE_ID:I = 0x2

.field public static final ATTRIBUTE_NAME_ID:I = 0x0

.field public static final UNITS_COUNT:I = 0x0

.field public static final UNITS_INSTR:I = 0x1


# virtual methods
.method public abstract comparator()Ljava/util/Comparator;
.end method

.method public abstract format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract passes(Lcom/vladium/emma/report/IItem;I)Z
.end method
