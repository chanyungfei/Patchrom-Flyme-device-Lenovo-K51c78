.class public Lcom/mediatek/mmsdk/CameraEffectImpl;
.super Lcom/mediatek/mmsdk/CameraEffect;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;,
        Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;,
        Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;,
        Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SUCCESS_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraEffectImpl"


# instance fields
.field private mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private mCaptureCallbackHolderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

.field private mCurrentStartId:J

.field private mEffectHalHandler:Landroid/os/Handler;

.field private mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

.field private mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

.field private mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

.field private mInError:Z

.field private final mInterfaceLock:Ljava/lang/Object;

.field private mSessionStateCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;


# direct methods
.method public constructor <init>(Lcom/mediatek/mmsdk/CameraEffect$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffect;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 647
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectImpl$2;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$2;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$3;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 682
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectImpl$4;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$4;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 702
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectImpl$5;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$5;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 761
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;

    .line 762
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    .line 45
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    .line 46
    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/CameraEffectStatus;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectStateCallback:Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mmsdk/CameraEffectImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/IEffectHalClient;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectStatus;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/mmsdk/CameraEffectImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mSessionStateCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;

    return-object v0
.end method

.method private checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 794
    if-nez p1, :cond_1

    .line 795
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 796
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .end local p1    # "handler":Landroid/os/Handler;
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 802
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p1    # "handler":Landroid/os/Handler;
    :cond_1
    return-object p1
.end method

.method private checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    .line 814
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    .line 816
    .end local p1    # "handler":Landroid/os/Handler;
    :cond_0
    return-object p1
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;

    const/16 v1, 0x67

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    if-nez v0, :cond_1

    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "effect hal client have closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    return-void
.end method

.method private unConfigureEffectHal()V
    .locals 3

    .prologue
    .line 731
    const-string v1, "CameraEffectImpl"

    const-string v2, "[unConfigureEffectHal]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->unconfigure()I

    .line 735
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during unconfigure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unInitEffectHal()V
    .locals 3

    .prologue
    .line 744
    const-string v1, "CameraEffectImpl"

    const-string v2, "[unInitEffectHal]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->uninit()I

    .line 748
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_UNINITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during uninit"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abortCapture(Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 3
    .param p1, "baseParameters"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 325
    :try_start_0
    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_RUNNING:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v1, v2}, Lcom/mediatek/mmsdk/IEffectHalClient;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    .line 327
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during abort"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOutputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "timestamp"    # J
    .param p5, "repeat"    # Z

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/mmsdk/IEffectHalClient;->addOutputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during addOutputParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 511
    const-string v0, "CameraEffectImpl"

    const-string v1, "[close]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    .line 517
    return-void
.end method

.method public closeEffect()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "CameraEffectImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeEffect] +++,mIEffectHalClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->abortCapture(Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 162
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->unConfigureEffectHal()V

    .line 163
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->unInitEffectHal()V

    .line 164
    const-string v0, "CameraEffectImpl"

    const-string v1, "[closeEffect] ---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public configureOutputs(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "surfaceParameters":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]++++,current status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v4}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .restart local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_0
    const/4 v1, 0x0

    .line 244
    .local v1, "success":Z
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->checkIfCameraClosedOrInError()V

    .line 247
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/mmsdk/IEffectHalClient;->setOutputSurfaces(Ljava/util/List;Ljava/util/List;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 260
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configureOutputs]----, success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v1

    .line 255
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "CameraEffectImpl"

    const-string v4, "RemoteException during setOutputSurfaces"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public createCaptureSession(Ljava/util/List;Ljava/util/List;Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;Landroid/os/Handler;)Lcom/mediatek/mmsdk/CameraEffectSession;
    .locals 8
    .param p3, "callback"    # Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;",
            "Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/mediatek/mmsdk/CameraEffectSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "surfaceParameters":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    const-string v1, "CameraEffectImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->checkIfCameraClosedOrInError()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "createEffectSession: the outputSurface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-direct {p0, p4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p4

    .line 73
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->replaceSessionClose()V

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 78
    .local v5, "configureSuccess":Z
    const/4 v7, 0x0

    .line 80
    .local v7, "pendingException":Lcom/mediatek/mmsdk/CameraEffectHalException;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->configureOutputs(Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/mediatek/mmsdk/CameraEffectHalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 89
    :goto_0
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;-><init>(Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectImpl;Landroid/os/Handler;Z)V

    .line 92
    .local v0, "newSessionImpl":Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    .line 94
    if-eqz v7, :cond_2

    .line 95
    throw v7

    .line 81
    .end local v0    # "newSessionImpl":Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    const/4 v5, 0x0

    .line 83
    move-object v7, v6

    .line 85
    const-string v1, "CameraEffectImpl"

    const-string v2, "createCaptureSession- failed with exception "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v6    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    .restart local v0    # "newSessionImpl":Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->getDeviceStateCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mSessionStateCallback:Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;

    .line 99
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentSession:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    return-object v1
.end method

.method public getCaputreRequirement(Lcom/mediatek/mmsdk/BaseParameters;)Ljava/util/List;
    .locals 7
    .param p1, "parameters"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v2, -0x1

    .line 133
    .local v2, "getRequirementValue":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v3, "requireParameters":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v4}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v0

    .line 136
    .local v0, "currentStatus":Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
    const-string v4, "CameraEffectImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCaputreRequirement] currentStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    sget-object v4, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    if-eq v4, v0, :cond_0

    .line 140
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v4}, Lcom/mediatek/mmsdk/IEffectHalClient;->configure()I

    .line 141
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v5, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v4, v5}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v4, p1, v3}, Lcom/mediatek/mmsdk/IEffectHalClient;->getCaptureRequirement(Lcom/mediatek/mmsdk/BaseParameters;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    :goto_0
    const-string v4, "CameraEffectImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCaputreRequirement] return value from native : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",parameters = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v3

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CameraEffectImpl"

    const-string v5, "RemoteException during getCaptureRequirement"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEffectHalListener()Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V

    return-object v0
.end method

.method public getFrameSyncMode(ZI)Z
    .locals 5
    .param p1, "isInput"    # Z
    .param p2, "index"    # I

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, "value":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p2}, Lcom/mediatek/mmsdk/IEffectHalClient;->getInputsyncMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 557
    :goto_0
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getInputsyncMode] value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputSurface()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getInputSurface],current status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v4}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "surface":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2}, Lcom/mediatek/mmsdk/IEffectHalClient;->configure()I

    .line 120
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2}, Lcom/mediatek/mmsdk/IEffectHalClient;->prepare()I

    .line 121
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->getInputSurfaces(Ljava/util/List;)I

    .line 122
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v3, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v2, v3}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CameraEffectImpl"

    const-string v3, "RemoteException during configure or prepare or getInputSurfaces"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getOutputsyncMode(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 565
    .local v1, "value":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p1}, Lcom/mediatek/mmsdk/IEffectHalClient;->getOutputsyncMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :goto_0
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOutputsyncMode] value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFrameParameters(ZILcom/mediatek/mmsdk/BaseParameters;JZ)V
    .locals 8
    .param p1, "isInput"    # Z
    .param p2, "index"    # I
    .param p3, "baseParameters"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p4, "timestamp"    # J
    .param p6, "repeating"    # Z

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/mmsdk/IEffectHalClient;->addInputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/mmsdk/IEffectHalClient;->addOutputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during addInputParameter or addOutputParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFrameSyncMode(ZIZ)I
    .locals 5
    .param p1, "isInput"    # Z
    .param p2, "index"    # I
    .param p3, "sync"    # Z

    .prologue
    .line 520
    const/4 v1, -0x1

    .line 522
    .local v1, "status_t":I
    if-eqz p1, :cond_0

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p2, p3}, Lcom/mediatek/mmsdk/IEffectHalClient;->setInputsyncMode(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 531
    :goto_0
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setFrameSyncMode] status_t = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isInput = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v1

    .line 525
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p2, p3}, Lcom/mediatek/mmsdk/IEffectHalClient;->setOutputsyncMode(IZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutputsyncMode(IZ)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 537
    const/4 v1, -0x1

    .line 539
    .local v1, "status_t":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/mmsdk/IEffectHalClient;->setOutputsyncMode(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 544
    :goto_0
    const-string v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setOutputsyncMode] status_t = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return v1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameters(Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 3
    .param p1, "baseParameters"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1, p1}, Lcom/mediatek/mmsdk/IEffectHalClient;->setParameters(Lcom/mediatek/mmsdk/BaseParameters;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during setParamters [BaseParameters]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteCameraEffect(Lcom/mediatek/mmsdk/IEffectHalClient;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/mmsdk/IEffectHalClient;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    if-eqz v0, :cond_0

    .line 174
    monitor-exit v1

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    .line 177
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v0, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 178
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRemoteCameraEffectFail(Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;)V
    .locals 7
    .param p1, "exception"    # Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;

    .prologue
    .line 184
    const/4 v1, 0x4

    .line 185
    .local v1, "failureCode":I
    const/4 v2, 0x1

    .line 186
    .local v2, "failureIsError":Z
    invoke-virtual {p1}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->getReason()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 208
    :pswitch_0
    const-string v4, "CameraEffectImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown failure in opening camera device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    move v0, v1

    .line 213
    .local v0, "code":I
    move v3, v2

    .line 214
    .local v3, "isError":Z
    iget-object v5, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 215
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mInError:Z

    .line 216
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v6, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v4, v6}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 217
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    new-instance v6, Lcom/mediatek/mmsdk/CameraEffectImpl$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$1;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;ZI)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    monitor-exit v5

    .line 230
    return-void

    .line 188
    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 189
    goto :goto_0

    .line 192
    :pswitch_2
    const/4 v1, 0x3

    .line 193
    goto :goto_0

    .line 196
    :pswitch_3
    const/4 v2, 0x0

    .line 197
    goto :goto_0

    .line 200
    :pswitch_4
    const/4 v1, 0x4

    .line 201
    goto :goto_0

    .line 204
    :pswitch_5
    const/4 v1, 0x6

    .line 205
    goto :goto_0

    .line 228
    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public startEffectHal(Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    .prologue
    const/4 v4, 0x2

    .line 269
    const-string v1, "CameraEffectImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]++++,status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v3}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p1

    .line 277
    :try_start_0
    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    invoke-virtual {v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->getEffectHalStatus()Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->configure()I

    .line 279
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->prepare()I

    .line 282
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mIEffectHalClient:Lcom/mediatek/mmsdk/IEffectHalClient;

    invoke-interface {v1}, Lcom/mediatek/mmsdk/IEffectHalClient;->start()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    .line 283
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalStatus:Lcom/mediatek/mmsdk/CameraEffectStatus;

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_RUNNING:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;

    iget-wide v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    long-to-int v2, v2

    new-instance v3, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    invoke-direct {v3, p0, p2, p1}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mEffectHalHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    const-string v1, "CameraEffectImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]----, mCurrentStartId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",get the map\'s callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCaptureCallbackHolderMap:Landroid/util/SparseArray;

    iget-wide v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl;->mCurrentStartId:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraEffectImpl"

    const-string v2, "RemoteException during prepare or start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
