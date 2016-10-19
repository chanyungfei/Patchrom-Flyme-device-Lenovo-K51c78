.class Landroid/app/LoaderManagerImpl;
.super Landroid/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "started"    # Z

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 539
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 540
    iput-object p2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    .line 541
    iput-boolean p3, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 542
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 559
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 560
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 561
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object v0

    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 550
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 551
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 552
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 553
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 728
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 729
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_0
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 734
    .local v0, "idx":I
    if-ltz v0, :cond_2

    .line 735
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 736
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 737
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 739
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 740
    if-ltz v0, :cond_3

    .line 741
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 742
    .restart local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 743
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 745
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_4

    .line 746
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 748
    :cond_4
    return-void
.end method

.method doDestroy()V
    .locals 4

    .prologue
    .line 843
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_2

    .line 844
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Active in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 846
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 845
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 848
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 851
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Inactive in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_3
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 853
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 852
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 855
    :cond_4
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 856
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .prologue
    .line 831
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 832
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 831
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 834
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .prologue
    .line 837
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 838
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 837
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 840
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 5

    .prologue
    .line 804
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_2

    .line 806
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 808
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doRetain when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 812
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 813
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 814
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 815
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 814
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStart()V
    .locals 5

    .prologue
    .line 771
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_2

    .line 773
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 775
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStart when already started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 779
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 783
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 784
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStop()V
    .locals 5

    .prologue
    .line 789
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 791
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 793
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStop when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 798
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 797
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 800
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 871
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 872
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 875
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 876
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 877
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 882
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 885
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 886
    .restart local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 887
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 4

    .prologue
    .line 820
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 821
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished Retaining in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 824
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 825
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 824
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 828
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 756
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 757
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 761
    .local v0, "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_2

    .line 762
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 767
    :goto_0
    return-object v1

    .line 765
    :cond_1
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    goto :goto_0

    .line 767
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 5

    .prologue
    .line 894
    const/4 v3, 0x0

    .line 895
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 896
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 897
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 898
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 900
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 605
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 610
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    if-nez v0, :cond_4

    .line 614
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 615
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 626
    :cond_3
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 617
    :cond_4
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_5
    iput-object p3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    goto :goto_0
.end method

.method installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/LoaderManagerImpl$LoaderInfo;

    .prologue
    .line 569
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 576
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    const/4 v6, 0x0

    .line 654
    iget-boolean v3, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v3, :cond_0

    .line 655
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Called while creating a loader"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 658
    :cond_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 659
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restartLoader in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": args="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_1
    if-eqz v1, :cond_3

    .line 661
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 662
    .local v0, "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_b

    .line 663
    iget-boolean v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_4

    .line 668
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Removing last inactive loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 670
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 671
    iget-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v3}, Landroid/content/Loader;->abandon()V

    .line 672
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 716
    .end local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    .line 717
    iget-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    :goto_1
    return-object v3

    .line 676
    .restart local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_4
    iget-boolean v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v3, :cond_6

    .line 680
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "LoaderManager"

    const-string v4, "  Current loader is stopped; replacing"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_5
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 687
    :cond_6
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "LoaderManager"

    const-string v4, "  Current loader is running; attempting to cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_7
    iget-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v3, :cond_9

    .line 692
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Removing pending loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_8
    iget-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 694
    iput-object v6, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 696
    :cond_9
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "LoaderManager"

    const-string v4, "  Enqueuing as new pending loader"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v3

    iput-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 700
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 701
    .local v2, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->cancel()V

    .line 703
    iget-object v3, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    goto :goto_1

    .line 710
    .end local v2    # "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_b
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Making last loader inactive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_c
    iget-object v3, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v3}, Landroid/content/Loader;->abandon()V

    .line 712
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 861
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 865
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 545
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    .line 546
    return-void
.end method
