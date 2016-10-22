.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 190
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 643
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 644
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 645
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 647
    .local v5, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "clientLen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 649
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 650
    .local v4, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 644
    .end local v4    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "clientLen":I
    .end local v2    # "j":I
    .end local v5    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 634
    .local v0, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 636
    .end local v0    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public clearAllRanges()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "IntRangeManager"

    const-string v1, "clear all the ranges"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 663
    return-void
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 19
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 449
    .local v9, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_12

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 451
    .local v14, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 452
    const/16 v17, 0x0

    .line 585
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_1
    monitor-exit p0

    return v17

    .line 453
    .restart local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    :try_start_1
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_11

    .line 456
    iget-object v2, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 459
    .local v2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 460
    .local v5, "crLength":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 461
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 462
    .local v3, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 467
    const/16 v17, 0x1

    goto :goto_1

    .line 470
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    const/16 v17, 0x0

    goto :goto_1

    .line 474
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 484
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v8, -0x80000000

    .line 485
    .local v8, "largestEndId":I
    const/16 v16, 0x0

    .line 488
    .local v16, "updateStarted":Z
    const/4 v4, 0x0

    .local v4, "crIndex":I
    :goto_2
    if-ge v4, v5, :cond_11

    .line 489
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 490
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_f

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 492
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 493
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_4

    .line 496
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 497
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 500
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 501
    iput v8, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 503
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 505
    :cond_5
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 507
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 515
    :cond_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 517
    .local v15, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v4, :cond_8

    .line 523
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 524
    .local v13, "nextStartId":I
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 525
    const/16 v16, 0x1

    .line 526
    iput v13, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 529
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 536
    .end local v13    # "nextStartId":I
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v10, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v6, v15

    .line 539
    .local v6, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v12, v4, 0x1

    .local v12, "nextIndex":I
    :goto_3
    if-ge v12, v5, :cond_c

    .line 540
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 541
    .local v11, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 542
    const/16 v16, 0x1

    .line 543
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 544
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 552
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_9

    .line 553
    iget v8, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 539
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 547
    :cond_a
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 548
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 550
    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 447
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7    # "i":I
    .end local v8    # "largestEndId":I
    .end local v9    # "len":I
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v11    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v12    # "nextIndex":I
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v16    # "updateStarted":Z
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 558
    .restart local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v4    # "crIndex":I
    .restart local v5    # "crLength":I
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v7    # "i":I
    .restart local v8    # "largestEndId":I
    .restart local v9    # "len":I
    .restart local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v12    # "nextIndex":I
    .restart local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v16    # "updateStarted":Z
    :cond_c
    move/from16 v0, p2

    if-ge v8, v0, :cond_d

    .line 559
    const/16 v16, 0x1

    .line 560
    :try_start_2
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 562
    :cond_d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 567
    if-eqz v16, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-nez v17, :cond_e

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 571
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 574
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 577
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v12    # "nextIndex":I
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_f
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_10

    .line 578
    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 449
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v8    # "largestEndId":I
    .end local v16    # "updateStarted":Z
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 585
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 206
    .local v10, "len":I
    if-nez v10, :cond_1

    .line 207
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/16 v17, 0x1

    .line 432
    :goto_0
    monitor-exit p0

    return v17

    .line 211
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 215
    :cond_1
    const/4 v14, 0x0

    .local v14, "startIndex":I
    :goto_1
    if-ge v14, v10, :cond_21

    .line 216
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 217
    .local v13, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 222
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 223
    const/16 v17, 0x1

    goto :goto_0

    .line 224
    :cond_2
    add-int/lit8 v17, p1, -0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 227
    move/from16 v11, p2

    .line 228
    .local v11, "newRangeEndId":I
    const/4 v12, 0x0

    .line 229
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 231
    .restart local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_6

    .line 233
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 235
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 242
    :cond_3
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 243
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 244
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 247
    if-eqz v12, :cond_5

    .line 248
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 250
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 252
    :cond_4
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 239
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 257
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 259
    .end local v11    # "newRangeEndId":I
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 263
    add-int/lit8 v17, p2, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 266
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 270
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 272
    :cond_a
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 275
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 276
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 277
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 278
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 280
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 284
    :cond_c
    add-int/lit8 v5, v14, 0x1

    .local v5, "endIndex":I
    :goto_3
    if-ge v5, v10, :cond_13

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 286
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    .line 289
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 290
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 291
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 293
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    add-int/lit8 v8, v14, 0x1

    .line 300
    .local v8, "joinIndex":I
    move v7, v8

    .local v7, "i":I
    :goto_4
    if-ge v7, v5, :cond_d

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 303
    .local v9, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 306
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 308
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 310
    :cond_f
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    .line 314
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 315
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 316
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 318
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    add-int/lit8 v8, v14, 0x1

    .line 325
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_5
    if-gt v7, v5, :cond_10

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 327
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 330
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 332
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 284
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 339
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 340
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 341
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 343
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 349
    add-int/lit8 v8, v14, 0x1

    .line 350
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v10, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 353
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 356
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 358
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 361
    .end local v5    # "endIndex":I
    :cond_16
    add-int/lit8 v17, p1, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_20

    .line 363
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    .line 366
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 367
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 371
    :cond_17
    move v5, v14

    .line 372
    .restart local v5    # "endIndex":I
    add-int/lit8 v15, v14, 0x1

    .local v15, "testIndex":I
    :goto_7
    if-ge v15, v10, :cond_18

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 374
    .local v16, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 381
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    if-ne v5, v14, :cond_1b

    .line 385
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 386
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 387
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 388
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 377
    .restart local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    move v5, v15

    .line 372
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 390
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 394
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 399
    .restart local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 402
    .restart local v11    # "newRangeEndId":I
    :goto_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 403
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d

    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 404
    :goto_9
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 406
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 412
    add-int/lit8 v8, v14, 0x1

    .line 413
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_a
    if-gt v7, v5, :cond_1e

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 415
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    :cond_1c
    move/from16 v11, p2

    .line 399
    goto :goto_8

    .restart local v11    # "newRangeEndId":I
    :cond_1d
    move/from16 v11, p2

    .line 403
    goto :goto_9

    .line 418
    .restart local v7    # "i":I
    .restart local v8    # "joinIndex":I
    :cond_1e
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 420
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 215
    .end local v5    # "endIndex":I
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    .end local v15    # "testIndex":I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 428
    .end local v13    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_21
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 432
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 203
    .end local v10    # "len":I
    .end local v14    # "startIndex":I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 613
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 597
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
