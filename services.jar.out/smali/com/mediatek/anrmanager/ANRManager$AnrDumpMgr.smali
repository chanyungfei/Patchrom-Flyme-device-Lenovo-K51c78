.class public Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field final synthetic k:Lcom/mediatek/anrmanager/ANRManager;

.field public mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;)V
    .locals 1

    .prologue
    .line 802
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z
    .locals 3

    .prologue
    .line 850
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 851
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->b(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x1

    monitor-exit v1

    .line 855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDump(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 806
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    .line 812
    if-eqz v0, :cond_2

    .line 813
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    .line 815
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpAnrDebugInfo(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return-void

    .line 865
    :cond_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_1
    iget-boolean v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppCrashing:Z

    if-eqz v0, :cond_2

    .line 874
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 877
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V

    .line 882
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected dumpAnrDebugInfoLocked(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 886
    monitor-enter p1

    .line 887
    :try_start_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfoLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    monitor-exit p1

    .line 1063
    :goto_0
    return-void

    .line 892
    :cond_0
    iget v6, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    .line 893
    iget v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v4, Landroid/util/SparseArray;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 898
    const/4 v0, 0x0

    .line 899
    if-eq v6, v10, :cond_15

    .line 900
    invoke-static {v6, v6}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    .line 905
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    if-lez v1, :cond_14

    move v3, v1

    .line 909
    :goto_2
    if-eq v3, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 912
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_2
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0, v6, v3, v2, v4}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 933
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 934
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 935
    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 937
    if-eq v0, v6, :cond_3

    if-eq v0, v3, :cond_3

    iget-object v8, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v8}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v8

    if-eq v0, v8, :cond_3

    .line 938
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 939
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 948
    :cond_4
    if-eq v6, v10, :cond_5

    .line 949
    :try_start_1
    invoke-static {v6, v2, v4}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 958
    :cond_5
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 960
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    if-lez v1, :cond_13

    .line 966
    :goto_4
    if-eq v1, v6, :cond_6

    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 967
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 972
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 973
    if-eqz v0, :cond_7

    .line 974
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 975
    if-eq v0, v6, :cond_7

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v1}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 976
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 979
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_7
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 989
    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 990
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 991
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 992
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 997
    :cond_9
    iget-object v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 1000
    iget-object v7, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1002
    const-string v1, "ANR in "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget-object v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1004
    const-string v1, " ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_a
    const-string v1, ", time="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1007
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    if-eqz v0, :cond_b

    .line 1009
    const-string v1, "Reason: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_b
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    if-eq v0, v10, :cond_c

    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    iget v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    if-eq v0, v1, :cond_c

    .line 1012
    const-string v0, "Parent: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :cond_c
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1018
    monitor-exit p1

    goto/16 :goto_0

    .line 1023
    :cond_d
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->c()[Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1025
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1026
    monitor-exit p1

    goto/16 :goto_0

    .line 1030
    :cond_e
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getMonitorCpuUsage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1032
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v4}, Lcom/mediatek/anrmanager/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v4

    iget-wide v8, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 1037
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1038
    :try_start_3
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->updateCpuStatsNow()V

    .line 1039
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_f
    const-string v1, "ANRManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->a(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1047
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1037
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1049
    :cond_10
    if-nez v0, :cond_11

    .line 1052
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0, v6}, Lcom/mediatek/anrmanager/ANRManager;->isProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1053
    const/4 v0, 0x3

    invoke-static {v6, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1057
    :cond_11
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1061
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 1062
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_13
    move v1, v3

    goto/16 :goto_4

    :cond_14
    move v3, v6

    goto/16 :goto_2

    :cond_15
    move-object v5, v0

    goto/16 :goto_1
.end method

.method public removeDumpRecord(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 819
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    .line 825
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAsyncDump(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 8

    .prologue
    .line 829
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    .line 837
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 838
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    monitor-exit v1

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 842
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v0, v0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 845
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->k:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v2, v2, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 846
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
