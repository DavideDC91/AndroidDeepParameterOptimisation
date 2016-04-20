.class public interface abstract Lcom/vladium/emma/report/IItem;
.super Ljava/lang/Object;
.source "IItem.java"


# static fields
.field public static final COVERAGE_BLOCK_COUNT:I = 0x0

.field public static final COVERAGE_BLOCK_INSTR:I = 0x2

.field public static final COVERAGE_CLASS_COUNT:I = 0x5

.field public static final COVERAGE_LINE_COUNT:I = 0x1

.field public static final COVERAGE_LINE_INSTR:I = 0x3

.field public static final COVERAGE_METHOD_COUNT:I = 0x4

.field public static final NUM_OF_AGGREGATES:I = 0xd

.field public static final PRECISION:I = 0x64

.field public static final TOTAL_BLOCK_COUNT:I = 0x6

.field public static final TOTAL_BLOCK_INSTR:I = 0x8

.field public static final TOTAL_CLASS_COUNT:I = 0xb

.field public static final TOTAL_LINE_COUNT:I = 0x7

.field public static final TOTAL_METHOD_COUNT:I = 0xa

.field public static final TOTAL_SRCFILE_COUNT:I = 0xc


# virtual methods
.method public abstract accept(Lcom/vladium/emma/report/IItemVisitor;Ljava/lang/Object;)V
.end method

.method public abstract getAggregate(I)I
.end method

.method public abstract getAttribute(II)Lcom/vladium/emma/report/IItemAttribute;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildren()Ljava/util/Iterator;
.end method

.method public abstract getChildren(Lcom/vladium/emma/report/ItemComparator;)Ljava/util/Iterator;
.end method

.method public abstract getMetadata()Lcom/vladium/emma/report/IItemMetadata;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParent()Lcom/vladium/emma/report/IItem;
.end method
