.class Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrActivityManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 22596
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "clearTraces"    # Z
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p5, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 22629
    .local p2, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInterestingPids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22622
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMonitorCpuUsage()Z
    .locals 1

    .prologue
    .line 22635
    const/4 v0, 0x1

    return v0
.end method

.method public getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "appPid"    # I
    .param p2, "parentPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22605
    .local p3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 22606
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 22607
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 22608
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 22609
    .local v1, "pid":I
    if-lez v1, :cond_0

    if-eq v1, p1, :cond_0

    if-eq v1, p2, :cond_0

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v3, :cond_0

    .line 22610
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_1

    .line 22611
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22605
    .end local v1    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 22613
    .restart local v1    # "pid":I
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 22618
    .end local v1    # "pid":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    return-void
.end method

.method public getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;
    .locals 1

    .prologue
    .line 22645
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method public getProcessRecordPid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22650
    if-eqz p1, :cond_0

    .line 22651
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 22653
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getShuttingDown()Z
    .locals 1

    .prologue
    .line 22599
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    return v0
.end method

.method public updateCpuStatsNow()V
    .locals 1

    .prologue
    .line 22640
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 22641
    return-void
.end method
