.class final Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;
.super Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;
.source "IItemAttribute.java"

# interfaces
.implements Lcom/vladium/emma/report/IItemAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/emma/report/IItemAttribute$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FractionAttribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;
    }
.end annotation


# instance fields
.field private final m_comparator:Ljava/util/Comparator;

.field final m_denominatorAggregateID:I

.field private final m_fieldPosition:Ljava/text/FieldPosition;

.field private final m_format:Ljava/text/DecimalFormat;

.field private final m_nFormat:Ljava/text/DecimalFormat;

.field final m_numeratorAggregateID:I

.field private final m_scale:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/vladium/emma/report/IItemAttribute$Factory$Attribute;-><init>(Ljava/lang/String;)V

    .line 200
    iput p2, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_numeratorAggregateID:I

    .line 201
    iput p3, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_denominatorAggregateID:I

    .line 202
    iput p4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_scale:I

    .line 204
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_format:Ljava/text/DecimalFormat;

    .line 205
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_fieldPosition:Ljava/text/FieldPosition;

    .line 209
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_format:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 212
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_nFormat:Ljava/text/DecimalFormat;

    .line 213
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_nFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 214
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_nFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 216
    new-instance v0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute$FractionComparator;-><init>(Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;Lcom/vladium/emma/report/IItemAttribute$1;)V

    iput-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_comparator:Ljava/util/Comparator;

    .line 217
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public format(Lcom/vladium/emma/report/IItem;Ljava/lang/StringBuffer;)V
    .locals 8

    .prologue
    .line 140
    iget v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_numeratorAggregateID:I

    invoke-interface {p1, v0}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v0

    .line 141
    int-to-double v0, v0

    iget v2, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_scale:I

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 142
    iget v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_denominatorAggregateID:I

    invoke-interface {p1, v0}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v1

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 149
    if-nez v1, :cond_0

    .line 150
    iget-object v4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_format:Ljava/text/DecimalFormat;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v5, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_fieldPosition:Ljava/text/FieldPosition;

    invoke-virtual {v4, v6, v7, p2, v5}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 154
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 155
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_format:Ljava/text/DecimalFormat;

    int-to-double v6, v1

    div-double v6, v2, v6

    iget-object v5, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_fieldPosition:Ljava/text/FieldPosition;

    invoke-virtual {v4, v6, v7, p2, v5}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 157
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    iget-object v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_nFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_fieldPosition:Ljava/text/FieldPosition;

    invoke-virtual {v0, v2, v3, p2, v4}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 159
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 161
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    return-void
.end method

.method public passes(Lcom/vladium/emma/report/IItem;I)Z
    .locals 6

    .prologue
    .line 166
    iget v0, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_numeratorAggregateID:I

    invoke-interface {p1, v0}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v0

    .line 167
    iget v1, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_denominatorAggregateID:I

    invoke-interface {p1, v1}, Lcom/vladium/emma/report/IItem;->getAggregate(I)I

    move-result v1

    .line 169
    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    int-to-double v0, v1

    iget v4, p0, Lcom/vladium/emma/report/IItemAttribute$Factory$FractionAttribute;->m_scale:I

    int-to-double v4, v4

    mul-double/2addr v0, v4

    int-to-double v4, p2

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
