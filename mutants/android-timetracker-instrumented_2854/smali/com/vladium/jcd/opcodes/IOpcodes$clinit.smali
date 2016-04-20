.class public final Lcom/vladium/jcd/opcodes/IOpcodes$clinit;
.super Ljava/lang/Object;
.source "IOpcodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vladium/jcd/opcodes/IOpcodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "clinit"
.end annotation


# static fields
.field static final _BRANCHES:[Z

.field static final _COMPOUND_CONDITIONAL_BRANCHES:[Z

.field static final _CONDITIONAL_BRANCHES:[Z

.field static final _NARROW_SIZE:[I

.field static final _UNCONDITIONAL_BRANCHES:[Z

.field static final _WIDE_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 456
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->MNEMONICS:[Ljava/lang/String;

    array-length v2, v0

    .line 458
    new-array v0, v2, [Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    .line 460
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x99

    aput-boolean v5, v0, v3

    .line 461
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9b

    aput-boolean v5, v0, v3

    .line 462
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9e

    aput-boolean v5, v0, v3

    .line 463
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9a

    aput-boolean v5, v0, v3

    .line 464
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9d

    aput-boolean v5, v0, v3

    .line 465
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9c

    aput-boolean v5, v0, v3

    .line 466
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xc6

    aput-boolean v5, v0, v3

    .line 467
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xc7

    aput-boolean v5, v0, v3

    .line 468
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0x9f

    aput-boolean v5, v0, v3

    .line 469
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa0

    aput-boolean v5, v0, v3

    .line 470
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa1

    aput-boolean v5, v0, v3

    .line 471
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa3

    aput-boolean v5, v0, v3

    .line 472
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa4

    aput-boolean v5, v0, v3

    .line 473
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa2

    aput-boolean v5, v0, v3

    .line 474
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa5

    aput-boolean v5, v0, v3

    .line 475
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa6

    aput-boolean v5, v0, v3

    .line 478
    new-array v0, v2, [Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_COMPOUND_CONDITIONAL_BRANCHES:[Z

    .line 480
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_COMPOUND_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xaa

    aput-boolean v5, v0, v3

    .line 481
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_COMPOUND_CONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xab

    aput-boolean v5, v0, v3

    .line 484
    new-array v0, v2, [Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    .line 486
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa7

    aput-boolean v5, v0, v3

    .line 487
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xc8

    aput-boolean v5, v0, v3

    .line 488
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa8

    aput-boolean v5, v0, v3

    .line 489
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xc9

    aput-boolean v5, v0, v3

    .line 490
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xa9

    aput-boolean v5, v0, v3

    .line 492
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xac

    aput-boolean v5, v0, v3

    .line 493
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xad

    aput-boolean v5, v0, v3

    .line 494
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xae

    aput-boolean v5, v0, v3

    .line 495
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xaf

    aput-boolean v5, v0, v3

    .line 496
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xb0

    aput-boolean v5, v0, v3

    .line 497
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xb1

    aput-boolean v5, v0, v3

    .line 499
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    const/16 v3, 0xbf

    aput-boolean v5, v0, v3

    .line 502
    new-array v0, v2, [Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_BRANCHES:[Z

    move v0, v1

    .line 504
    :goto_0
    if-ge v0, v2, :cond_1

    .line 505
    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_BRANCHES:[Z

    aput-boolean v5, v3, v0

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 507
    :goto_1
    if-ge v0, v2, :cond_3

    .line 508
    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_COMPOUND_CONDITIONAL_BRANCHES:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_BRANCHES:[Z

    aput-boolean v5, v3, v0

    .line 507
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 510
    :goto_2
    if-ge v0, v2, :cond_5

    .line 511
    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_BRANCHES:[Z

    aput-boolean v5, v3, v0

    .line 510
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    :cond_5
    new-array v0, v2, [I

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    move v0, v1

    .line 516
    :goto_3
    if-ge v0, v2, :cond_6

    sget-object v3, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    :cond_6
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 519
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x11

    aput v4, v0, v2

    .line 521
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x12

    aput v6, v0, v2

    .line 522
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x13

    aput v4, v0, v2

    .line 523
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x14

    aput v4, v0, v2

    .line 525
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x15

    aput v6, v0, v2

    .line 526
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x16

    aput v6, v0, v2

    .line 527
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x17

    aput v6, v0, v2

    .line 528
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x18

    aput v6, v0, v2

    .line 529
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x19

    aput v6, v0, v2

    .line 530
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x36

    aput v6, v0, v2

    .line 531
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x37

    aput v6, v0, v2

    .line 532
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x38

    aput v6, v0, v2

    .line 533
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x39

    aput v6, v0, v2

    .line 534
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x3a

    aput v6, v0, v2

    .line 536
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x84

    aput v4, v0, v2

    .line 538
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x99

    aput v4, v0, v2

    .line 539
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9a

    aput v4, v0, v2

    .line 540
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9b

    aput v4, v0, v2

    .line 541
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9c

    aput v4, v0, v2

    .line 542
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9d

    aput v4, v0, v2

    .line 543
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9e

    aput v4, v0, v2

    .line 544
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0x9f

    aput v4, v0, v2

    .line 545
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa0

    aput v4, v0, v2

    .line 546
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa1

    aput v4, v0, v2

    .line 547
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa2

    aput v4, v0, v2

    .line 548
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa3

    aput v4, v0, v2

    .line 549
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa4

    aput v4, v0, v2

    .line 550
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa5

    aput v4, v0, v2

    .line 551
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa6

    aput v4, v0, v2

    .line 552
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa7

    aput v4, v0, v2

    .line 553
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa8

    aput v4, v0, v2

    .line 554
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xc6

    aput v4, v0, v2

    .line 555
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xc7

    aput v4, v0, v2

    .line 557
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xa9

    aput v6, v0, v2

    .line 559
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xab

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 560
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v2, 0xaa

    aput v1, v0, v2

    .line 562
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb2

    aput v4, v0, v1

    .line 563
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb3

    aput v4, v0, v1

    .line 564
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb4

    aput v4, v0, v1

    .line 565
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb5

    aput v4, v0, v1

    .line 567
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb6

    aput v4, v0, v1

    .line 568
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb7

    aput v4, v0, v1

    .line 569
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb8

    aput v4, v0, v1

    .line 571
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xb9

    aput v7, v0, v1

    .line 573
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xbb

    aput v4, v0, v1

    .line 574
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xc0

    aput v4, v0, v1

    .line 575
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xc1

    aput v4, v0, v1

    .line 577
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xbc

    aput v6, v0, v1

    .line 578
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xbd

    aput v4, v0, v1

    .line 579
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xc5

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 581
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xc8

    aput v7, v0, v1

    .line 582
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    const/16 v1, 0xc9

    aput v7, v0, v1

    .line 585
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    .line 587
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x15

    aput v4, v0, v1

    .line 588
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 589
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    .line 590
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x18

    aput v4, v0, v1

    .line 591
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    .line 592
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x36

    aput v4, v0, v1

    .line 593
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x37

    aput v4, v0, v1

    .line 594
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x38

    aput v4, v0, v1

    .line 595
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x39

    aput v4, v0, v1

    .line 596
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x3a

    aput v4, v0, v1

    .line 598
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0x84

    aput v7, v0, v1

    .line 600
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    const/16 v1, 0xa9

    aput v4, v0, v1

    .line 601
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
