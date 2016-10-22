.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final CHECK_INTEGRITY:Z = true

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static final sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

.field private static final sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private volatile mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/view/accessibility/AccessibilityCache;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityCache;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 139
    return-void
.end method

.method private checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 780
    .local v13, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 781
    .local v11, "infoCount":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_4

    .line 782
    move v12, v10

    .local v12, "j":I
    :goto_2
    if-ge v12, v11, :cond_2

    .line 783
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 784
    .local v2, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v16

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_3

    .line 785
    move-object v13, v2

    .line 781
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 782
    .restart local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 790
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "j":I
    :cond_4
    if-nez v13, :cond_5

    .line 791
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "No root."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_5
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 795
    .local v14, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 796
    .local v9, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v9, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_6
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    .line 798
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 799
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 800
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "Duplicate node."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 804
    .local v4, "childCount":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_6

    .line 805
    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 806
    .local v6, "childId":J
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_4
    if-ge v12, v11, :cond_9

    .line 807
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 808
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    cmp-long v15, v16, v6

    if-nez v15, :cond_8

    .line 809
    invoke-interface {v9, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 804
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 814
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v16

    sub-int v8, v15, v16

    .line 815
    .local v8, "disconnectedCount":I
    if-lez v8, :cond_0

    .line 816
    const-string v15, "AccessibilityInteractionClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Disconnected nodes."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private clearResultLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 649
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 650
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 652
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 698
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 699
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 701
    :cond_0
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    .locals 3
    .param p2, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 712
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 713
    .local v2, "infosCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 714
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 715
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "infosCount":I
    :cond_0
    return-void
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "interactionId"    # I

    .prologue
    .line 545
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 546
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 547
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 548
    .local v0, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 549
    monitor-exit v3

    return-object v0

    .line 547
    .end local v0    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .locals 4
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 577
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 578
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_1

    .line 579
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 583
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 584
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 585
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 587
    :cond_0
    monitor-exit v3

    return-object v0

    .line 581
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 588
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 115
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 4
    .param p0, "threadId"    # J

    .prologue
    .line 127
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 129
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    .line 131
    .restart local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 133
    :cond_0
    monitor-exit v2

    return-object v0

    .line 134
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPerformAccessibilityActionResultAndClear(I)Z
    .locals 4
    .param p1, "interactionId"    # I

    .prologue
    .line 623
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 624
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 625
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 626
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 627
    monitor-exit v3

    return v0

    .line 625
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .locals 3

    .prologue
    .line 727
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 729
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 730
    monitor-exit v2

    return-object v0

    .line 731
    .end local v0    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 10
    .param p1, "interactionId"    # I

    .prologue
    const/4 v3, 0x0

    .line 661
    const-wide/16 v6, 0x1388

    .line 662
    .local v6, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 665
    .local v4, "startTimeMillis":J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v2

    .line 666
    .local v2, "sameProcessMessage":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 670
    :cond_0
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v8, p1, :cond_2

    .line 671
    const/4 v3, 0x1

    .line 679
    :cond_1
    return v3

    .line 673
    :cond_2
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-gt v8, p1, :cond_1

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 677
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v8, 0x1388

    sub-long v6, v8, v0

    .line 678
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 681
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    .end local v0    # "elapsedTimeMillis":J
    .end local v2    # "sameProcessMessage":Landroid/os/Message;
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .prologue
    .line 753
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 754
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    monitor-exit v1

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 531
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 532
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I

    .prologue
    .line 264
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_0

    and-int/lit8 v4, p6, 0x1

    if-nez v4, :cond_0

    .line 266
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "FLAG_PREFETCH_SIBLINGS requires FLAG_PREFETCH_PREDECESSORS"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v3

    .line 271
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v3, :cond_5

    .line 272
    if-nez p5, :cond_2

    .line 273
    sget-object v4, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 275
    .local v12, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v12, :cond_1

    .line 277
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Node cache hit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v12    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    return-object v12

    .line 282
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v12    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Node cache miss"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v12    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 286
    .local v7, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v8, p0

    move/from16 v9, p6

    invoke-interface/range {v3 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v15

    .line 290
    .local v15, "success":Z
    const-string v4, "AccessibilityInteractionClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v15, :cond_4

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v13

    .line 296
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V

    .line 297
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 298
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v12, v4

    goto :goto_0

    .line 301
    :cond_3
    const-string v4, "AccessibilityInteractionClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "infos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", infos.isEmpty() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v15    # "success":Z
    :cond_4
    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 307
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_5
    const-string v4, "AccessibilityInteractionClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No connection for connection id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 310
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v14

    .line 311
    .local v14, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 383
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 385
    .local v5, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 388
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 389
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v9

    .line 391
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v9, :cond_1

    .line 392
    invoke-direct {p0, v9, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V

    .line 405
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "interactionId":I
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "success":Z
    :goto_0
    return-object v9

    .line 398
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_0
    const-string v1, "AccessibilityInteractionClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection for connection id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 401
    :catch_0
    move-exception v10

    .line 402
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 337
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 339
    .local v5, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 342
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 343
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v9

    .line 345
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v9, :cond_1

    .line 346
    invoke-direct {p0, v9, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V

    .line 359
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "interactionId":I
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "success":Z
    :goto_0
    return-object v9

    .line 352
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_0
    const-string v1, "AccessibilityInteractionClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection for connection id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 355
    :catch_0
    move-exception v10

    .line 356
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    .prologue
    .line 427
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 428
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 429
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 430
    .local v5, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 433
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 434
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 436
    .local v9, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v9, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 447
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "interactionId":I
    .end local v9    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "success":Z
    :goto_0
    return-object v9

    .line 441
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_0
    const-string v1, "AccessibilityInteractionClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection for connection id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v10

    .line 445
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findFocus"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    .prologue
    .line 469
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 470
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 472
    .local v5, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 475
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 476
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 478
    .local v9, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v9, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 489
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "interactionId":I
    .end local v9    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "success":Z
    :goto_0
    return-object v9

    .line 483
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_0
    const-string v1, "AccessibilityInteractionClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection for connection id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v10

    .line 487
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 741
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 742
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v1

    return-object v0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "connectionId"    # I

    .prologue
    .line 161
    const v3, 0x7fffffff

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 178
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_2

    .line 179
    sget-object v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 181
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_0

    .line 183
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Window cache hit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_0
    return-object v2

    .line 188
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Window cache miss"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1

    .line 192
    sget-object v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Error while calling remote getWindow"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2
    :try_start_1
    const-string v3, "AccessibilityInteractionClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No connection for connection id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getWindows(I)Ljava/util/List;
    .locals 9
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 215
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_2

    .line 216
    sget-object v6, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityCache;->getWindows()Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v5, :cond_1

    .line 219
    const-string v6, "AccessibilityInteractionClient"

    const-string v7, "Windows cache hit"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 224
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v5    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_1
    const-string v6, "AccessibilityInteractionClient"

    const-string v7, "Windows cache miss"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Ljava/util/List;

    move-result-object v5

    .line 227
    if-eqz v5, :cond_3

    .line 228
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 229
    .local v4, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 230
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 231
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    sget-object v6, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v1    # "i":I
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowCount":I
    .end local v5    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_2
    const-string v6, "AccessibilityInteractionClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No connection for connection id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "AccessibilityInteractionClient"

    const-string v7, "Error while calling remote getWindows"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 535
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 536
    return-void
.end method

.method public performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .locals 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 510
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 511
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 513
    .local v6, "interactionId":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v7, p0

    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 516
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 517
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z

    move-result v1

    .line 527
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v11    # "success":Z
    :goto_0
    return v1

    .line 521
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_0
    const-string v1, "AccessibilityInteractionClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection for connection id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v10

    .line 525
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeConnection(I)V
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 764
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 765
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .prologue
    .line 558
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 560
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 561
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 4
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 597
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 598
    if-eqz p1, :cond_3

    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    .line 602
    .local v0, "isIpcCall":Z
    :goto_0
    if-nez v0, :cond_2

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 610
    .end local v0    # "isIpcCall":Z
    :goto_1
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 613
    monitor-exit v2

    .line 614
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 605
    .restart local v0    # "isIpcCall":Z
    :cond_2
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_1

    .line 613
    .end local v0    # "isIpcCall":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 608
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 2
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .prologue
    .line 635
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 637
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 638
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 640
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 641
    monitor-exit v1

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 148
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 150
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
