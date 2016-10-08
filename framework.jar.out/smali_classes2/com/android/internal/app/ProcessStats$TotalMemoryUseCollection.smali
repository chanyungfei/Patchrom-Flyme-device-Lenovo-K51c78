.class public Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field final memStates:[I

.field public processStatePss:[J

.field public processStateSamples:[I

.field public processStateTime:[J

.field public processStateWeight:[D

.field final screenStates:[I

.field public sysMemCachedWeight:D

.field public sysMemFreeWeight:D

.field public sysMemKernelWeight:D

.field public sysMemNativeWeight:D

.field public sysMemSamples:I

.field public sysMemUsage:[J

.field public sysMemZRamWeight:D

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I)V
    .locals 2
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I

    .prologue
    const/16 v1, 0xe

    .line 3846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3852
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 3853
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 3854
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 3855
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 3856
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 3847
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 3848
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    .line 3849
    return-void
.end method
