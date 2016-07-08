.class public abstract Lcom/vladium/emma/data/DataFactory;
.super Ljava/lang/Object;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;,
        Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;,
        Lcom/vladium/emma/data/DataFactory$UCFileOutputStream;,
        Lcom/vladium/emma/data/DataFactory$UCFileInputStream;
    }
.end annotation


# static fields
.field private static final DO_FSYNC:Z = true

.field private static final ENTRY_HEADER_LENGTH:I = 0x9

.field private static final FILE_HEADER_LENGTH:I = 0x18

.field private static final IO_BUF_SIZE:I = 0x8000

.field private static final MAGIC:I = 0x454d4d41

.field private static final NULL_ARRAY_LENGTH:I = -0x1

.field public static final TYPE_COVERAGEDATA:B = 0x1t

.field public static final TYPE_METADATA:B

.field private static final UNKNOWN:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;)[Lcom/vladium/emma/data/IMergeable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/vladium/emma/data/DataFactory;->mergeload(Ljava/io/File;)[Lcom/vladium/emma/data/IMergeable;

    move-result-object v0

    return-object v0
.end method

.method private static makeAppVersion(III)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x2e

    .line 791
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 793
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 795
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 797
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 799
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mergeload(Ljava/io/File;)[Lcom/vladium/emma/data/IMergeable;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v12

    .line 397
    invoke-virtual {v12}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v13

    .line 398
    invoke-virtual {v12}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v14

    .line 399
    const-string v4, "mergeload"

    .line 401
    const-wide/16 v4, 0x0

    .line 403
    if-eqz v13, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 405
    :cond_0
    const/4 v6, 0x2

    new-array v15, v6, [Lcom/vladium/emma/data/IMergeable;

    .line 407
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 409
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input file does not exist: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 413
    :cond_1
    const/4 v7, 0x0

    .line 416
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    .line 420
    if-eqz v13, :cond_2

    const-string v7, "mergeload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: file length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_2
    const-wide/16 v8, 0x18

    cmp-long v7, v16, v8

    if-gez v7, :cond_4

    .line 424
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] is corrupt or was not created by "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "EMMA"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :catchall_0
    move-exception v4

    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    :cond_3
    :goto_1
    throw v4

    .line 430
    :cond_4
    const-wide/16 v8, 0x18

    cmp-long v7, v16, v8

    if-lez v7, :cond_6

    .line 432
    const-wide/16 v8, 0x18

    :try_start_3
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 438
    const-wide/16 v10, 0x18

    .line 441
    const-wide/16 v8, 0x0

    .line 445
    :goto_2
    if-eqz v14, :cond_5

    const-string v7, "mergeload"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: position "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    :cond_5
    cmp-long v7, v10, v16

    if-ltz v7, :cond_9

    .line 483
    :cond_6
    if-eqz v6, :cond_7

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 488
    :cond_7
    :goto_3
    if-eqz v13, :cond_8

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 492
    const-string v8, "mergeload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: file processed in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v4, v6, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_8
    return-object v15

    .line 448
    :cond_9
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v18

    .line 450
    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-lez v7, :cond_6

    add-long v20, v10, v18

    const-wide/16 v22, 0x9

    add-long v20, v20, v22

    cmp-long v7, v20, v16

    if-gtz v7, :cond_6

    .line 454
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    .line 455
    if-ltz v7, :cond_6

    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 458
    if-eqz v14, :cond_a

    const-string v20, "mergeload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]: found valid entry of size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " and type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_a
    if-eqz v14, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 461
    :cond_b
    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Lcom/vladium/emma/data/DataFactory;->readEntry(Ljava/io/RandomAccessFile;BJ)Lcom/vladium/emma/data/IMergeable;

    move-result-object v20

    .line 462
    if-eqz v14, :cond_c

    const-string v21, "mergeload"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "entry read in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_c
    aget-object v21, v15, v7

    .line 466
    if-nez v21, :cond_d

    .line 467
    aput-object v20, v15, v7

    .line 472
    :goto_4
    const-wide/16 v20, 0x9

    add-long v18, v18, v20

    add-long v10, v10, v18

    .line 475
    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_2

    .line 469
    :cond_d
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/vladium/emma/data/IMergeable;->merge(Lcom/vladium/emma/data/IMergeable;)Lcom/vladium/emma/data/IMergeable;

    move-result-object v20

    aput-object v20, v15, v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 483
    :catch_0
    move-exception v6

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    move-object v5, v7

    goto/16 :goto_0
.end method

.method public static newCoverageData()Lcom/vladium/emma/data/ICoverageData;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/vladium/emma/data/CoverageData;

    invoke-direct {v0}, Lcom/vladium/emma/data/CoverageData;-><init>()V

    return-object v0
.end method

.method public static newMetaData(Lcom/vladium/emma/data/CoverageOptions;)Lcom/vladium/emma/data/IMetaData;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/vladium/emma/data/MetaData;

    invoke-direct {v0, p0}, Lcom/vladium/emma/data/MetaData;-><init>(Lcom/vladium/emma/data/CoverageOptions;)V

    return-object v0
.end method

.method public static persist(Lcom/vladium/emma/data/ICoverageData;Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not delete file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMergeable;BLjava/io/File;)V

    .line 87
    return-void
.end method

.method private static persist(Lcom/vladium/emma/data/IMergeable;BLjava/io/File;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Lcom/vladium/logging/Logger;->getLogger()Lcom/vladium/logging/Logger;

    move-result-object v2

    .line 506
    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE1()Z

    move-result v12

    .line 507
    invoke-virtual {v2}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v6

    .line 508
    const-string v3, "persist"

    .line 510
    const-wide/16 v4, 0x0

    .line 512
    if-eqz v12, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v8, v4

    .line 519
    :goto_0
    const/4 v4, 0x0

    .line 522
    const/4 v11, 0x0

    .line 523
    const/4 v10, 0x0

    .line 525
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 529
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can persist in normal files only: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 678
    :cond_0
    :goto_2
    throw v2

    .line 531
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    .line 535
    if-eqz v12, :cond_2

    const-string v4, "persist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]: existing file length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_2
    const-wide/16 v4, 0x4

    cmp-long v4, v14, v4

    if-gez v4, :cond_8

    .line 540
    const/4 v5, 0x1

    .line 541
    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-lez v4, :cond_7

    const/4 v4, 0x1

    .line 662
    :goto_3
    if-eqz v5, :cond_4

    .line 668
    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 669
    :cond_3
    invoke-static {v3}, Lcom/vladium/emma/data/DataFactory;->writeFileHeader(Ljava/io/DataOutput;)V

    .line 672
    const-wide/16 v4, 0x18

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/vladium/emma/data/DataFactory;->writeEntry(Lcom/vladium/logging/Logger;Ljava/io/RandomAccessFile;JLcom/vladium/emma/data/IMergeable;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 677
    :cond_4
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 681
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 685
    const-string v3, "persist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: file processed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_6
    return-void

    .line 541
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 548
    :cond_8
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 549
    const v5, 0x454d4d41

    if-eq v4, v5, :cond_9

    .line 550
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot overwrite ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: not created by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EMMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 552
    :cond_9
    const-wide/16 v4, 0x18

    cmp-long v4, v14, v4

    if-gez v4, :cond_a

    .line 555
    const/4 v5, 0x1

    .line 556
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 572
    :cond_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v4

    .line 574
    const-wide/16 v16, 0x20

    cmp-long v4, v4, v16

    if-eqz v4, :cond_c

    .line 578
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 579
    const/4 v5, 0x0

    .line 582
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 583
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 584
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    .line 586
    const/4 v5, 0x1

    move/from16 v22, v5

    move v5, v2

    move/from16 v2, v22

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .line 591
    :goto_5
    if-eqz v2, :cond_b

    .line 593
    :try_start_7
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot merge new data into ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: created by another "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EMMA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " version ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6, v5, v4}, Lcom/vladium/emma/data/DataFactory;->makeAppVersion(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 588
    :catch_0
    move-exception v7

    move/from16 v22, v5

    move v5, v2

    move/from16 v2, v22

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto :goto_5

    .line 597
    :cond_b
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot merge new data into ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: created by another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EMMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 604
    :cond_c
    const-wide/16 v4, 0x18

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 606
    const-wide/16 v4, 0x18

    cmp-long v4, v14, v4

    if-nez v4, :cond_d

    .line 610
    const-wide/16 v4, 0x18

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/vladium/emma/data/DataFactory;->writeEntry(Lcom/vladium/logging/Logger;Ljava/io/RandomAccessFile;JLcom/vladium/emma/data/IMergeable;B)V

    move v4, v10

    move v5, v11

    goto/16 :goto_3

    .line 618
    :cond_d
    const-wide/16 v4, 0x18

    .line 623
    :goto_6
    if-eqz v6, :cond_e

    const-string v7, "persist"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "]: position "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v7, v13}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_e
    cmp-long v7, v4, v14

    if-ltz v7, :cond_11

    .line 639
    :cond_f
    if-eqz v6, :cond_10

    const-string v6, "persist"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "]: adding entry at position "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 640
    invoke-static/range {v2 .. v7}, Lcom/vladium/emma/data/DataFactory;->writeEntry(Lcom/vladium/logging/Logger;Ljava/io/RandomAccessFile;JLcom/vladium/emma/data/IMergeable;B)V

    move v4, v10

    move v5, v11

    goto/16 :goto_3

    .line 626
    :cond_11
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v16

    .line 628
    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-lez v7, :cond_f

    add-long v18, v4, v16

    const-wide/16 v20, 0x9

    add-long v18, v18, v20

    cmp-long v7, v18, v14

    if-gtz v7, :cond_f

    .line 632
    if-eqz v6, :cond_12

    const-string v7, "persist"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "["

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, "]: found valid entry of size "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v7, v13}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_12
    const-wide/16 v18, 0x9

    add-long v16, v16, v18

    add-long v4, v4, v16

    .line 635
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_6

    .line 651
    :cond_13
    if-eqz v12, :cond_14

    :try_start_8
    const-string v3, "persist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: creating a new file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/vladium/logging/Logger;->trace1(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 654
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 656
    :cond_15
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 658
    const/4 v5, 0x1

    move v4, v10

    goto/16 :goto_3

    .line 677
    :catch_1
    move-exception v3

    goto/16 :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_2

    :cond_16
    move-wide v8, v4

    goto/16 :goto_0
.end method

.method public static persist(Lcom/vladium/emma/data/IMetaData;Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not delete file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMergeable;BLjava/io/File;)V

    .line 72
    return-void
.end method

.method public static persist(Lcom/vladium/emma/data/ISessionData;Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input: file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not delete file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    invoke-interface {p0}, Lcom/vladium/emma/data/ISessionData;->getMetaData()Lcom/vladium/emma/data/IMetaData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMergeable;BLjava/io/File;)V

    .line 102
    invoke-interface {p0}, Lcom/vladium/emma/data/ISessionData;->getCoverageData()Lcom/vladium/emma/data/ICoverageData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/vladium/emma/data/DataFactory;->persist(Lcom/vladium/emma/data/IMergeable;BLjava/io/File;)V

    .line 103
    return-void
.end method

.method public static readBooleanArray(Ljava/io/DataInput;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 210
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 222
    :cond_0
    return-object v0

    .line 214
    :cond_1
    new-array v0, v1, [Z

    .line 217
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 219
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static readCoverageData(Ljava/net/URL;)Lcom/vladium/emma/data/ICoverageData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    const v4, 0x8000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/ICoverageData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static readEntry(Ljava/io/RandomAccessFile;BJ)Lcom/vladium/emma/data/IMergeable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    new-instance v0, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/vladium/emma/data/DataFactory$RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 767
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 768
    packed-switch p1, :pswitch_data_0

    .line 773
    invoke-static {v1}, Lcom/vladium/emma/data/CoverageData;->readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/CoverageData;

    move-result-object v0

    .line 781
    :goto_0
    check-cast v0, Lcom/vladium/emma/data/IMergeable;

    return-object v0

    .line 770
    :pswitch_0
    invoke-static {v1}, Lcom/vladium/emma/data/MetaData;->readExternal(Ljava/io/DataInput;)Lcom/vladium/emma/data/MetaData;

    move-result-object v0

    goto :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static readIntArray(Ljava/io/DataInput;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 190
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 202
    :cond_0
    return-object v0

    .line 194
    :cond_1
    new-array v0, v1, [I

    .line 197
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 199
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static readMetaData(Ljava/net/URL;)Lcom/vladium/emma/data/IMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    const v4, 0x8000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vladium/emma/data/IMetaData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static writeBooleanArray([ZLjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    if-nez p0, :cond_1

    .line 248
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 260
    :cond_0
    return-void

    .line 251
    :cond_1
    array-length v0, p0

    .line 252
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 255
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 257
    aget-boolean v1, p0, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    goto :goto_0
.end method

.method public static writeCoverageData(Lcom/vladium/emma/data/ICoverageData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private static writeEntry(Lcom/vladium/logging/Logger;Ljava/io/RandomAccessFile;JLcom/vladium/emma/data/IMergeable;B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {p1, p5}, Lcom/vladium/emma/data/DataFactory;->writeEntryHeader(Ljava/io/DataOutput;B)V

    .line 715
    new-instance v1, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;

    const v0, 0x8000

    invoke-direct {v1, p1, v0}, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 723
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 724
    packed-switch p5, :pswitch_data_0

    move-object v0, p4

    .line 729
    check-cast v0, Lcom/vladium/emma/data/CoverageData;

    invoke-static {v0, v2}, Lcom/vladium/emma/data/CoverageData;->writeExternal(Lcom/vladium/emma/data/CoverageData;Ljava/io/DataOutput;)V

    .line 733
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 737
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 741
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 742
    invoke-virtual {v1}, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 743
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 745
    invoke-virtual {p0}, Lcom/vladium/logging/Logger;->atTRACE2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "writeEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vladium/emma/data/DataFactory$RandomAccessFileOutputStream;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vladium/logging/Logger;->trace2(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_0
    return-void

    :pswitch_0
    move-object v0, p4

    .line 726
    check-cast v0, Lcom/vladium/emma/data/MetaData;

    invoke-static {v0, v2}, Lcom/vladium/emma/data/MetaData;->writeExternal(Lcom/vladium/emma/data/MetaData;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static writeEntryHeader(Ljava/io/DataOutput;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 705
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 706
    return-void
.end method

.method private static writeFileHeader(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 692
    const v0, 0x454d4d41

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 694
    const-wide/16 v0, 0x20

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 696
    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 697
    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 698
    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 699
    return-void
.end method

.method public static writeIntArray([ILjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p0, :cond_1

    .line 230
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 242
    :cond_0
    return-void

    .line 233
    :cond_1
    array-length v0, p0

    .line 234
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 237
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 239
    aget v1, p0, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeMetaData(Lcom/vladium/emma/data/IMetaData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public static writeMetaData(Lcom/vladium/emma/data/IMetaData;Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 146
    const/4 v1, 0x0

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 151
    invoke-static {p0, v1}, Lcom/vladium/emma/data/DataFactory;->writeMetaData(Lcom/vladium/emma/data/IMetaData;Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
