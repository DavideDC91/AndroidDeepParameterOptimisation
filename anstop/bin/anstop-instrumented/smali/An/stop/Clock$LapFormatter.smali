.class public LAn/stop/Clock$LapFormatter;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAn/stop/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LapFormatter"
.end annotation


# static fields
.field private static final $VRc:[[Z = null

.field private static final serialVersionUID:J = -0x3250b3d949556f73L


# instance fields
.field public lapFormatFlags:I

.field private lapFormatTimeOfDay:Ljava/text/DateFormat;

.field public nf:Ljava/text/NumberFormat;


# direct methods
.method private static $VRi()[[Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    const-class v1, [Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, LAn/stop/Clock$LapFormatter;->$VRc:[[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    aput-object v2, v0, v1

    new-array v1, v4, [Z

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x15

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    aput-object v1, v0, v4

    const-string v1, "An/stop/Clock$LapFormatter"

    const-wide v2, -0x3d6835473a24a5b1L    # -6.539862701782577E12

    invoke-static {v0, v1, v2, v3}, Lcom/vladium/emma/rt/RT;->r([[ZLjava/lang/String;J)V

    return-object v0
.end method

.method private static constructor <clinit>()V
    .locals 3

    invoke-static {}, LAn/stop/Clock$LapFormatter;->$VRi()[[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LAn/stop/Clock$LapFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$LapFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v2

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput v3, p0, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    .line 1148
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    .line 1149
    iget-object v1, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1150
    iget-object v1, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1151
    aput-boolean v3, v0, v2

    return-void
.end method


# virtual methods
.method public formatTimeAllLaps(Ljava/lang/StringBuilder;I[J[J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-object v2, LAn/stop/Clock$LapFormatter;->$VRc:[[Z

    if-nez v2, :cond_0

    invoke-static {}, LAn/stop/Clock$LapFormatter;->$VRi()[[Z

    move-result-object v2

    :cond_0
    const/4 v3, 0x3

    aget-object v15, v2, v3

    .line 1272
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    if-nez p1, :cond_1

    .line 1273
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    throw v2

    .line 1275
    :cond_1
    const/4 v9, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    move/from16 v0, p2

    if-ge v9, v0, :cond_3

    .line 1277
    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    if-le v9, v2, :cond_2

    .line 1278
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    .line 1279
    :cond_2
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v2, v9, -0x1

    aget-wide v10, p3, v2

    add-int/lit8 v2, v9, -0x1

    aget-wide v12, p4, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v2 .. v14}, LAn/stop/Clock$LapFormatter;->formatTimeLap(Ljava/lang/StringBuilder;ZIIIIIJJ[J)V

    .line 1275
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_0

    .line 1282
    :cond_3
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    return-void
.end method

.method public formatTimeLap(Ljava/lang/StringBuilder;ZIIIIIJJ[J)V
    .locals 12

    .prologue
    sget-object v2, LAn/stop/Clock$LapFormatter;->$VRc:[[Z

    if-nez v2, :cond_0

    invoke-static {}, LAn/stop/Clock$LapFormatter;->$VRi()[[Z

    move-result-object v2

    :cond_0
    const/4 v3, 0x2

    aget-object v3, v2, v3

    .line 1191
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    if-nez p1, :cond_1

    const/4 v2, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 1257
    :goto_0
    return-void

    .line 1194
    :cond_1
    const/4 v2, 0x0

    .line 1196
    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    if-eqz p2, :cond_2

    .line 1198
    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1199
    const-string v4, ". "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1201
    :cond_2
    iget v4, p0, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v4, :cond_4

    .line 1203
    const/4 v2, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    if-ne p3, v2, :cond_3

    .line 1205
    const-wide/16 v4, 0x64

    div-long v4, p8, v4

    .line 1206
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v0, v6

    move/from16 p6, v0

    .line 1207
    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    .line 1208
    const-wide/16 v6, 0x3c

    rem-long v6, v4, v6

    long-to-int v0, v6

    move/from16 p5, v0

    .line 1209
    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 1210
    const-wide/16 v6, 0x3c

    rem-long v6, v4, v6

    long-to-int v0, v6

    move/from16 p4, v0

    .line 1211
    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 1212
    long-to-int p3, v4

    const/4 v2, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 1214
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1215
    const-string v2, "h "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    iget-object v2, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    move/from16 v0, p4

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1218
    iget-object v2, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    move/from16 v0, p5

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1220
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    const/4 v2, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1224
    :cond_4
    iget v4, p0, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    and-int/lit8 v4, v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v4, :cond_6

    .line 1226
    const/4 v4, 0x1

    const/16 v5, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    move/from16 v0, p7

    if-le v0, v4, :cond_9

    add-int/lit8 v4, p7, -0x2

    aget-wide v4, p12, v4

    const/16 v6, 0xa

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 1227
    :goto_1
    sub-long v4, p8, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 1228
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v6, v6

    .line 1229
    const-wide/16 v8, 0xa

    div-long/2addr v4, v8

    .line 1230
    const-wide/16 v8, 0x3c

    rem-long v8, v4, v8

    long-to-int v7, v8

    .line 1231
    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    .line 1232
    const-wide/16 v8, 0x3c

    rem-long v8, v4, v8

    long-to-int v8, v8

    .line 1233
    const-wide/16 v10, 0x3c

    div-long/2addr v4, v10

    .line 1235
    const/16 v9, 0xc

    const/4 v10, 0x1

    aput-boolean v10, v3, v9

    if-eqz v2, :cond_5

    .line 1236
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v3, v2

    .line 1237
    :cond_5
    const-string v2, "(+"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1239
    const-string v2, "h "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    iget-object v2, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    int-to-long v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v2, p0, LAn/stop/Clock$LapFormatter;->nf:Ljava/text/NumberFormat;

    int-to-long v4, v7

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1245
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1246
    const/4 v2, 0x1

    const/16 v4, 0xe

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1249
    :cond_6
    iget v4, p0, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    and-int/lit8 v4, v4, 0x4

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v4, :cond_8

    iget-object v4, p0, LAn/stop/Clock$LapFormatter;->lapFormatTimeOfDay:Ljava/text/DateFormat;

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    if-eqz v4, :cond_8

    .line 1252
    const/16 v4, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    if-eqz v2, :cond_7

    .line 1253
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 1254
    :cond_7
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    iget-object v2, p0, LAn/stop/Clock$LapFormatter;->lapFormatTimeOfDay:Ljava/text/DateFormat;

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 1257
    :cond_8
    const/16 v2, 0x14

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    goto/16 :goto_0

    .line 1226
    :cond_9
    const-wide/16 v4, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    goto/16 :goto_1
.end method

.method public setLapFormat(ILjava/text/DateFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sget-object v0, LAn/stop/Clock$LapFormatter;->$VRc:[[Z

    if-nez v0, :cond_0

    invoke-static {}, LAn/stop/Clock$LapFormatter;->$VRi()[[Z

    move-result-object v0

    :cond_0
    aget-object v0, v0, v3

    .line 1165
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    if-lez p1, :cond_1

    aput-boolean v3, v0, v3

    if-nez p2, :cond_2

    .line 1166
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 1167
    :cond_2
    iput p1, p0, LAn/stop/Clock$LapFormatter;->lapFormatFlags:I

    .line 1168
    iput-object p2, p0, LAn/stop/Clock$LapFormatter;->lapFormatTimeOfDay:Ljava/text/DateFormat;

    .line 1169
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method
