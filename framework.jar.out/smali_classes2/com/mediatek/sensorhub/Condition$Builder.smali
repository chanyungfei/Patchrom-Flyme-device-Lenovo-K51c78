.class public Lcom/mediatek/sensorhub/Condition$Builder;
.super Ljava/lang/Object;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combineWithAnd(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Condition;)Lcom/mediatek/sensorhub/Condition;
    .locals 6
    .param p1, "c1"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "c2"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    const/4 v0, 0x0

    .line 465
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 466
    :cond_0
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineWithAnd: null condition! c1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", c2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p2, v0

    .line 483
    .end local p2    # "c2":Lcom/mediatek/sensorhub/Condition;
    :cond_2
    :goto_0
    return-object p2

    .line 469
    .restart local p2    # "c2":Lcom/mediatek/sensorhub/Condition;
    :cond_3
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 470
    .local v1, "size1":I
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 471
    .local v2, "size2":I
    if-eqz v1, :cond_2

    .line 473
    if-nez v2, :cond_4

    move-object p2, p1

    .line 474
    goto :goto_0

    .line 475
    :cond_4
    add-int v3, v1, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_6

    .line 476
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineWithAnd: itemSize > 4! size1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object p2, v0

    .line 477
    goto :goto_0

    .line 479
    :cond_6
    new-instance v0, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 480
    .local v0, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 481
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/sensorhub/ConditionItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/sensorhub/ConditionItem;->setCombine(I)V

    move-object p2, v0

    .line 483
    goto :goto_0
.end method

.method public combineWithBracket(Lcom/mediatek/sensorhub/Condition;)Lcom/mediatek/sensorhub/Condition;
    .locals 6
    .param p1, "c"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    const/4 v0, 0x0

    .line 524
    if-nez p1, :cond_2

    .line 525
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Condition"

    const-string v4, "combineWithBracket: null conditon!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p1, v0

    .line 545
    .end local p1    # "c":Lcom/mediatek/sensorhub/Condition;
    :cond_1
    :goto_0
    return-object p1

    .line 528
    .restart local p1    # "c":Lcom/mediatek/sensorhub/Condition;
    :cond_2
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 529
    .local v2, "size":I
    if-nez v2, :cond_3

    .line 530
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Condition"

    const-string v4, "combineWithBracket: empty condition!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 534
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/sensorhub/ConditionItem;

    invoke-virtual {v3}, Lcom/mediatek/sensorhub/ConditionItem;->isBracketLeft()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 535
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineWithBracket: do not support nest bracket. item["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object p1, v0

    .line 537
    goto :goto_0

    .line 533
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    :cond_6
    new-instance v0, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 542
    .local v0, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/sensorhub/ConditionItem;

    invoke-virtual {v3}, Lcom/mediatek/sensorhub/ConditionItem;->setBracketLeft()V

    .line 544
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/sensorhub/ConditionItem;

    invoke-virtual {v3}, Lcom/mediatek/sensorhub/ConditionItem;->setBracketRight()V

    move-object p1, v0

    .line 545
    goto/16 :goto_0
.end method

.method public combineWithOr(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Condition;)Lcom/mediatek/sensorhub/Condition;
    .locals 6
    .param p1, "c1"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "c2"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    const/4 v0, 0x0

    .line 495
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 496
    :cond_0
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineWithOr: null condition! c1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", c2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p2, v0

    .line 513
    .end local p2    # "c2":Lcom/mediatek/sensorhub/Condition;
    :cond_2
    :goto_0
    return-object p2

    .line 499
    .restart local p2    # "c2":Lcom/mediatek/sensorhub/Condition;
    :cond_3
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 500
    .local v1, "size1":I
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 501
    .local v2, "size2":I
    if-eqz v1, :cond_2

    .line 503
    if-nez v2, :cond_4

    move-object p2, p1

    .line 504
    goto :goto_0

    .line 505
    :cond_4
    add-int v3, v1, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_6

    .line 506
    # getter for: Lcom/mediatek/sensorhub/Condition;->LOG:Z
    invoke-static {}, Lcom/mediatek/sensorhub/Condition;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineWithOr: itemSize > 4! size1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object p2, v0

    .line 507
    goto :goto_0

    .line 509
    :cond_6
    new-instance v0, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 510
    .local v0, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 511
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 512
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/sensorhub/ConditionItem;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/mediatek/sensorhub/ConditionItem;->setCombine(I)V

    move-object p2, v0

    .line 513
    goto :goto_0
.end method

.method public createCompareCondition(III)Lcom/mediatek/sensorhub/Condition;
    .locals 6
    .param p1, "index1"    # I
    .param p2, "operation"    # I
    .param p3, "index2"    # I

    .prologue
    const/4 v2, 0x0

    .line 246
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/sensorhub/Condition$Builder;->createCompareCondition(IZIIZ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createCompareCondition(IZIIZ)Lcom/mediatek/sensorhub/Condition;
    .locals 7
    .param p1, "index1"    # I
    .param p2, "isPrevious1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isPrevious2"    # Z

    .prologue
    .line 384
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIIZ)V

    .line 385
    .local v0, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v6, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v6}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 386
    .local v6, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v6}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-object v6
.end method

.method public createCondition(IIF)Lcom/mediatek/sensorhub/Condition;
    .locals 1
    .param p1, "index"    # I
    .param p2, "operation"    # I
    .param p3, "value"    # F

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIF)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createCondition(III)Lcom/mediatek/sensorhub/Condition;
    .locals 1
    .param p1, "index"    # I
    .param p2, "operation"    # I
    .param p3, "value"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZII)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createCondition(IIJ)Lcom/mediatek/sensorhub/Condition;
    .locals 7
    .param p1, "index"    # I
    .param p2, "operation"    # I
    .param p3, "value"    # J

    .prologue
    .line 228
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createCondition(IZIF)Lcom/mediatek/sensorhub/Condition;
    .locals 11
    .param p1, "index"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # F

    .prologue
    .line 350
    invoke-static {p1}, Lcom/mediatek/sensorhub/ContextInfo;->getDataType(I)I

    move-result v9

    .line 351
    .local v9, "dataType":I
    const/4 v0, 0x1

    if-ne v0, v9, :cond_0

    .line 352
    const-string v0, "Condition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCondition: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be int instead of float!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    float-to-int v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZII)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    .line 366
    :goto_0
    return-object v8

    .line 354
    :cond_0
    const/4 v0, 0x2

    if-ne v0, v9, :cond_2

    .line 355
    const-string v0, "Condition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCondition: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be long instead of float!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v0, 0x22

    if-ne v0, p1, :cond_1

    .line 357
    const/16 v1, 0xc

    const/16 v4, 0x21

    float-to-long v6, p4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 360
    :cond_1
    float-to-long v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 363
    :cond_2
    new-instance v10, Lcom/mediatek/sensorhub/ConditionItem;

    invoke-direct {v10, p1, p2, p3, p4}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIF)V

    .line 364
    .local v10, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v8, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v8}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 365
    .local v8, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v8}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCondition(IZII)Lcom/mediatek/sensorhub/Condition;
    .locals 11
    .param p1, "index"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # I

    .prologue
    .line 290
    invoke-static {p1}, Lcom/mediatek/sensorhub/ContextInfo;->getDataType(I)I

    move-result v9

    .line 291
    .local v9, "dataType":I
    const/4 v0, 0x3

    if-ne v0, v9, :cond_0

    .line 292
    const-string v0, "Condition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCondition: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be float instead of int!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    int-to-float v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIF)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    .line 307
    :goto_0
    return-object v8

    .line 294
    :cond_0
    const/4 v0, 0x2

    if-ne v0, v9, :cond_2

    .line 295
    const-string v0, "Condition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCondition: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be long instead of int!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v0, 0x22

    if-ne v0, p1, :cond_1

    .line 297
    const/16 v1, 0xc

    const/16 v4, 0x21

    int-to-long v6, p4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 300
    :cond_1
    int-to-long v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 304
    :cond_2
    new-instance v10, Lcom/mediatek/sensorhub/ConditionItem;

    invoke-direct {v10, p1, p2, p3, p4}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZII)V

    .line 305
    .local v10, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v8, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v8}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 306
    .local v8, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v8}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCondition(IZIJ)Lcom/mediatek/sensorhub/Condition;
    .locals 10
    .param p1, "index"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # J

    .prologue
    .line 321
    invoke-static {p1}, Lcom/mediatek/sensorhub/ContextInfo;->getDataType(I)I

    move-result v9

    .line 322
    .local v9, "dataType":I
    const/4 v1, 0x3

    if-ne v1, v9, :cond_0

    .line 323
    const-string v1, "Condition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCondition: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be float instead of long!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    long-to-float v1, p4

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZIF)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    .line 336
    :goto_0
    return-object v8

    .line 325
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v9, :cond_1

    .line 326
    const-string v1, "Condition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCondition: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be int instead of long!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    long-to-int v1, p4

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/sensorhub/Condition$Builder;->createCondition(IZII)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 329
    :cond_1
    const/16 v1, 0x22

    if-ne v1, p1, :cond_2

    .line 330
    const/16 v1, 0xc

    const/16 v4, 0x21

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v8

    goto :goto_0

    .line 333
    :cond_2
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIJ)V

    .line 334
    .local v0, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v8, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v8}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 335
    .local v8, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v8}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createDiffCondition(IIIF)Lcom/mediatek/sensorhub/Condition;
    .locals 7
    .param p1, "index1"    # I
    .param p2, "operation"    # I
    .param p3, "index2"    # I
    .param p4, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 276
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZF)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createDiffCondition(IIII)Lcom/mediatek/sensorhub/Condition;
    .locals 7
    .param p1, "index1"    # I
    .param p2, "operation"    # I
    .param p3, "index2"    # I
    .param p4, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 256
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZI)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createDiffCondition(IIIJ)Lcom/mediatek/sensorhub/Condition;
    .locals 8
    .param p1, "index1"    # I
    .param p2, "operation"    # I
    .param p3, "index2"    # I
    .param p4, "value"    # J

    .prologue
    const/4 v2, 0x0

    .line 266
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/sensorhub/Condition$Builder;->createDiffCondition(IZIIZJ)Lcom/mediatek/sensorhub/Condition;

    move-result-object v0

    return-object v0
.end method

.method public createDiffCondition(IZIIZF)Lcom/mediatek/sensorhub/Condition;
    .locals 8
    .param p1, "index1"    # I
    .param p2, "isPrevious1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isPrevious2"    # Z
    .param p6, "value"    # F

    .prologue
    .line 450
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIIZF)V

    .line 451
    .local v0, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v7, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v7}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 452
    .local v7, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    return-object v7
.end method

.method public createDiffCondition(IZIIZI)Lcom/mediatek/sensorhub/Condition;
    .locals 8
    .param p1, "index1"    # I
    .param p2, "isPrevious1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isPrevious2"    # Z
    .param p6, "value"    # I

    .prologue
    .line 406
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIIZI)V

    .line 407
    .local v0, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v7, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v7}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 408
    .local v7, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-object v7
.end method

.method public createDiffCondition(IZIIZJ)Lcom/mediatek/sensorhub/Condition;
    .locals 10
    .param p1, "index1"    # I
    .param p2, "isPrevious1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isPrevious2"    # Z
    .param p6, "value"    # J

    .prologue
    .line 428
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/sensorhub/ConditionItem;-><init>(IZIIZJ)V

    .line 429
    .local v0, "item":Lcom/mediatek/sensorhub/ConditionItem;
    new-instance v8, Lcom/mediatek/sensorhub/Condition;

    invoke-direct {v8}, Lcom/mediatek/sensorhub/Condition;-><init>()V

    .line 430
    .local v8, "condition":Lcom/mediatek/sensorhub/Condition;
    # getter for: Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v8}, Lcom/mediatek/sensorhub/Condition;->access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    return-object v8
.end method
