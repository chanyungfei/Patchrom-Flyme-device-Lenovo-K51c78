.class public interface abstract Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAnrActivityManagerService"
.end annotation


# virtual methods
.method public abstract dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;
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
.end method

.method public abstract getInterestingPids()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitorCpuUsage()Z
.end method

.method public abstract getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V
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
.end method

.method public abstract getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;
.end method

.method public abstract getProcessRecordPid(Ljava/lang/Object;)I
.end method

.method public abstract getShuttingDown()Z
.end method

.method public abstract updateCpuStatsNow()V
.end method
