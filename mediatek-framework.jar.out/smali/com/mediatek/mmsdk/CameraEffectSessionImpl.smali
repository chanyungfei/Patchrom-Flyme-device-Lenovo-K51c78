.class public Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
.super Lcom/mediatek/mmsdk/CameraEffectSession;
.source "CameraEffectSessionImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEffectSessionImpl"

.field private static final VERBOSE:Z = true


# instance fields
.field private volatile mAborting:Z

.field private mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

.field private mClosed:Z

.field private final mConfiguredFailRunnable:Ljava/lang/Runnable;

.field private final mConfiguredRunnable:Ljava/lang/Runnable;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mStateCallback:Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;

.field private final mStateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectImpl;Landroid/os/Handler;Z)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    .param p2, "effectStateHandler"    # Landroid/os/Handler;
    .param p3, "effectImpl"    # Lcom/mediatek/mmsdk/CameraEffectImpl;
    .param p4, "deviceStateHandler"    # Landroid/os/Handler;
    .param p5, "configureSuccess"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectSession;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mClosed:Z

    .line 321
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;-><init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mConfiguredRunnable:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;

    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;-><init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mConfiguredFailRunnable:Ljava/lang/Runnable;

    .line 36
    const-string v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraEffectHalSessionImpl]++++ configureSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateCallback:Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;

    .line 43
    invoke-static {p2}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateHandler:Landroid/os/Handler;

    .line 44
    const-string v0, "deviceStateHandler must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 46
    const-string v0, "deviceImpl must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectImpl;

    iput-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    .line 48
    if-eqz p5, :cond_1

    .line 49
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mConfiguredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mConfiguredFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mAborting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mAborting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mStateCallback:Lcom/mediatek/mmsdk/CameraEffectSession$SessionStateCallback;

    return-object v0
.end method

.method private static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 169
    if-nez p0, :cond_1

    .line 170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 171
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    new-instance p0, Landroid/os/Handler;

    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p0    # "handler":Landroid/os/Handler;
    :cond_1
    return-object p0
.end method

.method private static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
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
    .line 154
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 155
    invoke-static {p0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    .line 157
    .end local p0    # "handler":Landroid/os/Handler;
    :cond_0
    return-object p0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mClosed:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session has been closed; further changes are illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method private createCaptureCallback(Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;)Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .prologue
    .line 266
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$2;-><init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;)V

    .line 318
    .local v0, "loCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mClosed:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "CameraEffectSessionImpl"

    const-string v1, "[close],current session is closed,so return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "CameraEffectSessionImpl"

    const-string v1, "[close] on going"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mClosed:Z

    goto :goto_0
.end method

.method public closeSession()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->abortCapture(Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 112
    return-void
.end method

.method getDeviceStateCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .line 186
    .local v0, "session":Lcom/mediatek/mmsdk/CameraEffectSession;
    new-instance v1, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$1;-><init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Lcom/mediatek/mmsdk/CameraEffectSession;)V

    return-object v1
.end method

.method public getFrameSyncMode(ZI)Z
    .locals 4
    .param p1, "isInputSync"    # Z
    .param p2, "index"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->getFrameSyncMode(ZI)Z

    move-result v0

    .line 95
    .local v0, "value":Z
    const-string v1, "CameraEffectSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInputsyncMode] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0
.end method

.method replaceSessionClose()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "CameraEffectSessionImpl"

    const-string v1, "[replaceSessionClose]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->close()V

    .line 138
    return-void
.end method

.method public setFrameParameters(ZILcom/mediatek/mmsdk/BaseParameters;JZ)V
    .locals 8
    .param p1, "isInput"    # Z
    .param p2, "index"    # I
    .param p3, "baseParameters"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p4, "timestamp"    # J
    .param p6, "repeating"    # Z

    .prologue
    .line 75
    if-nez p3, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[addInputFrameParameter] parameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/mmsdk/CameraEffectImpl;->setFrameParameters(ZILcom/mediatek/mmsdk/BaseParameters;JZ)V

    .line 80
    return-void
.end method

.method public setFrameSyncMode(ZIZ)I
    .locals 4
    .param p1, "isInput"    # Z
    .param p2, "index"    # I
    .param p3, "sync"    # Z

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->setFrameSyncMode(ZIZ)I

    move-result v0

    .line 86
    .local v0, "status_t":I
    const-string v1, "CameraEffectSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setInputsyncMode] status_t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0
.end method

.method public startCapture(Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x2

    .line 58
    const-string v1, "CameraEffectSessionImpl"

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

    const-string v3, "]++++ callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->checkNotClosed()V

    .line 63
    invoke-static {p2, p1}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p2

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->createCaptureCallback(Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;)Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    move-result-object v0

    .line 65
    .local v0, "cb":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl;->startEffectHal(Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;)V

    .line 68
    const-string v1, "CameraEffectSessionImpl"

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

    const-string v3, "]----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public stopCapture(Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 3
    .param p1, "baseParameters"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 104
    const-string v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[abort]baseParameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->mCameraMmEffectImpl:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, p1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->abortCapture(Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 107
    return-void
.end method
